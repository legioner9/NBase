CREATE DOMAIN posint AS integer CHECK (VALUE > 0);
CREATE TABLE mytable (id posint);
INSERT INTO mytable VALUES(1);   -- работает
INSERT INTO mytable VALUES(-1);  -- ошибка [23514] ОШИБКА: значение домена
-- posint нарушает ограничение-проверку "posint_check"