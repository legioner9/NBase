-- Простой пример на базе файла passwd
CREATE TABLE passwd
(
    user_name  text UNIQUE NOT NULL,
    pwhash     text,
    uid        int PRIMARY KEY,
    gid        int         NOT NULL,
    real_name  text        NOT NULL,
    home_phone text,
    extra_info text,
    home_dir   text        NOT NULL,
    shell      text        NOT NULL
);

CREATE ROLE admin; -- Администратор
CREATE ROLE bob; -- Обычный пользователь
CREATE ROLE alice;
-- Обычный пользователь

-- Наполнение таблицы
INSERT INTO passwd
VALUES ('admin', 'xxx', 0, 0, 'Admin', '111-222-3333', null, '/root', '/bin/dash');
INSERT INTO passwd
VALUES ('bob', 'xxx', 1, 1, 'Bob', '123-456-7890', null, '/home/bob', '/bin/zsh');
INSERT INTO passwd
VALUES ('alice', 'xxx', 2, 1, 'Alice', '098-765-4321', null, '/home/alice', '/bin/zsh');

-- Необходимо включить для этой таблицы защиту на уровне строк
ALTER TABLE passwd
    ENABLE ROW LEVEL SECURITY;

-- Создание политик
-- Администратор может видеть и добавлять любые строки
CREATE POLICY admin_all ON passwd TO admin USING (true) WITH CHECK (true);
-- Обычные пользователи могут видеть все строки
CREATE POLICY all_view ON passwd FOR SELECT USING (true);
-- Обычные пользователи могут изменять собственные данные, но
-- не могут задать произвольную оболочку входа
CREATE POLICY user_mod ON passwd FOR UPDATE
    USING (current_user = user_name)
    WITH CHECK (
        current_user = user_name AND
        shell IN ('/bin/bash', '/bin/sh', '/bin/dash', '/bin/zsh', '/bin/tcsh')
    );

-- Администраторы получают все обычные права
GRANT SELECT, INSERT, UPDATE, DELETE ON passwd TO admin;
-- Пользователям разрешается чтение только общедоступных столбцов
GRANT SELECT
    (user_name, uid, gid, real_name, home_phone, extra_info, home_dir, shell)
    ON passwd TO public;
-- Пользователям разрешается изменение определённых столбцов
GRANT UPDATE
    (pwhash, real_name, home_phone, extra_info, shell)
    ON passwd TO public;

-- Администратор может видеть все строки и поля
set role admin;
table passwd;

-- Проверим, что может делать Алиса
set role alice;
table passwd; -- [42501] ОШИБКА: нет доступа к таблице passwd
select user_name, real_name, home_phone, extra_info, home_dir, shell
from passwd;

-- without pwhash!
-- admin,Admin, 111-222-3333,,/root,        /bin/dash
-- bob,  Bob,   123-456-7890,,/home/bob,    /bin/zsh
-- alice,Alice, 098-765-4321,,/home/alice,  /bin/zsh

update passwd
set real_name = 'no Alice'
where user_name = 'alice';
--alice,xxx,2,1,no Alice,098-765-4321,,/home/alice,/bin/zsh :: Alice => no Alice


select real_name
from passwd
where user_name = 'bob';
-- Bob

update passwd
set real_name = 'no Bob'
where user_name = 'bob';
--bob,xxx,1,1,Bob,123-456-7890,,/home/bob,/bin/zsh :: Bob => Bob { not throw error !?}
-- Алиса может изменить собственный пароль; попытки поменять другие пароли RLS просто игнорирует

-- В развитие предыдущего примера мы добавим ограничительную политику,
-- разрешающую администратору, подключённому через локальный сокет Unix,
-- обращаться к записям таблицы passwd:
set role postgres;
CREATE POLICY admin_local_only ON passwd AS RESTRICTIVE TO admin
    USING (pg_catalog.inet_client_addr() IS NULL);

set role admin;
SELECT current_user;
-- admin
select inet_client_addr();
-- 127.0.0.1
TABLE passwd; -- show empty ! passwd

UPDATE passwd set pwhash = NULL
where user_name = 'bob'; -- UPDATE 0