/*
В качестве простого примера, создать политику для отношения account,
позволяющую только членам роли managers
обращаться к строкам отношения и при этом только к своим, можно так:
*/
CREATE TABLE accounts (manager text, company text, contact_email text);

    ALTER TABLE accounts ENABLE ROW LEVEL SECURITY;

    CREATE POLICY account_managers ON accounts TO managers
        USING (manager = current_user);
/*
Эта политика неявно подразумевает и предложение WITH CHECK,
идентичное предложению USING, поэтому указанное ограничение
применяется и к строкам, выбираемым командой (так что один менеджер
не может выполнить SELECT, UPDATE или DELETE для существующих строк,
принадлежащих другому), и к строкам,
изменяемым командой (так что командами INSERT и UPDATE
нельзя создать строки, принадлежащие другому менеджеру).
*/

/*
Если роль не задана, либо задано специальное имя пользователя PUBLIC,
политика применяется ко всем пользователям в данной системе.
Чтобы все пользователи могли обратиться только к
собственной строке в таблице users, можно применить простую политику:
*/

/*
CREATE POLICY user_policy ON users
USING (user_name = current_user);
*/

-- Простой пример на базе файла passwd
    CREATE TABLE passwd (
    user_name              text UNIQUE NOT NULL,
    pwhash                text,
    uid                   int  PRIMARY KEY,
    gid                   int  NOT NULL,
    real_name             text NOT NULL,
    home_phone            text,
    extra_info            text,
    home_dir              text NOT NULL,
    shell                 text NOT NULL
    );

    CREATE ROLE admin;  -- Администратор
    CREATE ROLE bob;    -- Обычный пользователь
    CREATE ROLE alice;  -- Обычный пользователь

    -- Наполнение таблицы
    INSERT INTO passwd VALUES
    ('admin','xxx',0,0,'Admin','111-222-3333',null,'/root','/bin/dash');
    INSERT INTO passwd VALUES
    ('bob','xxx',1,1,'Bob','123-456-7890',null,'/home/bob','/bin/zsh');
    INSERT INTO passwd VALUES
    ('alice','xxx',2,1,'Alice','098-765-4321',null,'/home/alice','/bin/zsh');

    -- Необходимо включить для этой таблицы защиту на уровне строк
    ALTER TABLE passwd ENABLE ROW LEVEL SECURITY;

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
        shell IN ('/bin/bash','/bin/sh','/bin/dash','/bin/zsh','/bin/tcsh')
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
