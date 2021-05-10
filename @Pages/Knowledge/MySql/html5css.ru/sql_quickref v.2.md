<a href="https://html5css.ru/sql/sql_quickref.php" target="_blank">https://html5css.ru/sql/sql_quickref.php</a>

<a href="http://old.code.mu/sql/" target="_blank">TR http://old.code.mu/sql/</a>

<!-- Start Document Outline -->

* [SQL Statement	Syntax](#sql-statementsyntax)
	* [AND](#and)
		* [TR](#tr)
	* [OR](#or)
		* [TR](#tr-1)
	* [ALTER TABLE](#alter-table)
	* [AS (alias)](#as-alias)
		* [TR](#tr-2)
	* [BETWEEN](#between)
		* [TR](#tr-3)
	* [COUNT](#count)
		* [TR](#tr-4)
	* [CREATE INDEX](#create-index)
	* [CREATE VIEW](#create-view)
	* [DELETE](#delete)
		* [TR](#tr-5)
	* [DISTINCT](#distinct)
		* [TR](#tr-6)
	* [DROP DATABASE](#drop-database)
	* [DROP INDEX](#drop-index)
	* [DROP TABLE](#drop-table)
	* [ELT](#elt)
		* [TR](#tr-7)
	* [EXISTS](#exists)
	* [GROUP BY](#group-by)
		* [TR](#tr-8)
	* [HAVING](#having)
		* [TR](#tr-9)
	* [IF](#if)
	* [IFNULL](#ifnull)
	* [IS](#is)
	* [IS NOT NULL](#is-not-null)
		* [TR](#tr-10)
	* [IS NULL](#is-null)
		* [TR](#tr-11)
	* [LAST_INSERT_ID](#last_insert_id)
	* [NULLIF](#nullif)
	* [IN](#in)
		* [TR](#tr-12)
	* [INSERT INTO](#insert-into)
		* [TR](#tr-13)
	* [INNER JOIN](#inner-join)
		* [TR](#tr-14)
		* [TR JOIN](#tr-join)
			* [LEFT JOIN](#left-join)
			* [RIGHT JOIN](#right-join)
			* [INNER JOIN](#inner-join-1)
	* [LEFT JOIN](#left-join-1)
		* [TR](#tr-15)
	* [RIGHT JOIN](#right-join-1)
		* [TR](#tr-16)
	* [FULL JOIN](#full-join)
	* [LIKE](#like)
		* [TR](#tr-17)
			* [reg Like %](#reg-like-)
			* [reg Like _](#reg-like-_)
	* [LIMIT](#limit)
		* [TR](#tr-18)
	* [NOT](#not)
		* [TR](#tr-19)
	* [ORDER BY](#order-by)
		* [TR](#tr-20)
	* [SELECT *](#select-)
		* [TR](#tr-21)
	* [SELECT DISTINCT](#select-distinct)
	* [SELECT INTO](#select-into)
		* [TR](#tr-22)
	* [SELECT TOP](#select-top)
	* [UNION](#union)
		* [TR](#tr-23)
	* [UNION ALL](#union-all)
	* [UPDATE](#update)
		* [TR](#tr-24)
	* [WHERE](#where)
		* [TR](#tr-25)

<!-- End Document Outline -->
# SQL Statement	Syntax
## AND
```
SELECT column_name(s)
FROM table_name
WHERE condition
AND|OR condition
```
### TR

Команда `AND` является логическим 'И', которое позволяет комбинировать условия в команде where.

См. также команду `or`, которая является логическим 'ИЛИ'.

См. также команду `in`, которая выбирает записи по указанным значениям.

См. также команду `between`, которая выбирает записи по диапазону значений.

Синтаксис
    
    WHERE условие1 AND условие2

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

В данном примере выбираются записи, у которых поле id больше 2-х и меньше 4-х:

    `SELECT * FROM workers WHERE id>=2 AND id<=4`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

В данном примере выбираются записи, у которых зарплата равна 400 и одновременно возраст 23:

    `SELECT * FROM workers WHERE age=23 AND salary=400`
SQL запрос выберет следующие строки:

    1	Дима	23	400

## OR
### TR
Команда `OR` является логическим 'ИЛИ', которое позволяет комбинировать условия в команде where.

См. также команду `and`, которая является логическим 'И'.

См. также команду `in`, которая выбирает записи по указанным значениям.

См. также команду `between`, которая выбирает записи по диапазону значений.

Синтаксис
```
WHERE условие1 OR условие2
```
Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

В данном примере выбираются записи, у которых зарплата равна 400 или возраст 23 (хотя бы одно и них):

    `SELECT * FROM workers WHERE id=3 OR salary=400`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    3	Вася	23	500

В данном примере выбираются записи, у которых поле id равно два или три:

    SELECT * FROM workers WHERE id=2 OR id=3
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500

## ALTER TABLE
```
ALTER TABLE table_name
ADD column_name datatype
or

ALTER TABLE table_name
DROP COLUMN column_name
```
## AS (alias)
```
SELECT column_name AS column_alias
FROM table_name
or

SELECT column_name
FROM table_name  AS table_alias
```
### TR
Команда `AS` задает новое имя полям или таблицам при выборке из базы (то есть в самой базе изменения не происходят).

См. также команду `join`, в которой активно используется команда `as`.

Синтаксис
Для полей:

    SELECT поле as его_новое_имя FROM имя_таблицы

Для таблиц:
    
    SELECT * FROM имя_таблицы as его_новое_имя_таблицы

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	24	500
    3	Вася	25	600

Давайте при выборке переименуем все поля:
        
    SELECT
    	id as user_id, name as user_name,
    	age as user_age, salary as user_salary
    FROM workers

SQL запрос выберет следующие строки:

    user_id
    айди	user_name
    имя	user_age
    возраст	user_salary
    зарплата
    1	Дима	23	400
    2	Петя	24	500
    3	Вася	25	600

Можно из одного поля сделать два (и более):

    `SELECT name as name1, name as name2 FROM workers`
SQL запрос выберет следующие строки:
    
    name1
    имя	name2
    имя
    Дима	Дима
    Петя	Петя
    Вася	Вася

## BETWEEN
```
SELECT column_name(s)
FROM table_name
WHERE column_name
BETWEEN value1 AND value2
CREATE DATABASE	CREATE DATABASE database_name
CREATE TABLE	CREATE TABLE table_name
(
column_name1 data_type,
column_name2 data_type,
column_name3 data_type,
...
)

```
### TR
Команда `BETWEEN` задает диапазон значений, по которому выбираются записи из базы данных.

К примеру, можно выбрать записи для поля `id` от 3 до 10-ти.

См. также команду `not`, которая делает отрицание (к примеру, так: `not between`).

См. также команду `in`, которая выбирает записи по указанным значениям.

Синтаксис

    `SELECT * FROM имя_таблицы WHERE поле BETWEEN от AND до`

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте выберем записи с id от 2-х до 4-х включительно:

    `SELECT * FROM workers WHERE id BETWEEN 2 AND 4`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

Можно комбинировать различные условия. К примеру, давайте выберем записи с id от 2-х до 4-х включительно и чтобы при этом зарплата была 500:

    `SELECT * FROM workers WHERE id BETWEEN 2 AND 4 AND salary=500`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500

Диапазон можно делать не только по числовым значениям, но и по строковым. В следующем примере мы выберем все записи с именами между 'Дима' и 'Коля' (сравнение идет в алфавитном порядке):

    `SELECT * FROM workers WHERE name BETWEEN 'Дима' AND 'Коля'`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

## COUNT
### TR
Функция `COUNT` подсчитывает количество записей в таблице.

Условие, по которому будут выбираться записи, задается с помощью команды where.

Команда `where` не является обязательной, если ее не указать - будут подсчитаны все записи в таблице.

См. также команду `distinct`, которая позволяет подсчитывать только уникальные значения поля.

См. также команду `group by`, которая позволяет группировать записи и затем с помощью count подсчитывать количество в группах.

Синтаксис
Подсчет всех записей:
```
SELECT COUNT(*) FROM имя_таблицы WHERE условие
```
Подсчет всех записей, где заданное поле не равно NULL:

    `SELECT COUNT(поле) FROM имя_таблицы WHERE условие`

Только уникальные значения поля:

    `SELECT COUNT(DISTINCT поле) FROM имя_таблицы WHERE условие`

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте подсчитаем всех работников с возрастом 23 года:

    `SELECT COUNT(*) as count FROM workers WHERE age=23`
Результат выполнения SQL запроса:
    
    count
    результат подсчета
    2
   
Давайте подсчитаем количество разных зарплат (их будет 3 штуки: 400, 500 и 1000):

    `SELECT COUNT(DISTINCT salary) as count FROM workers`
Результат выполнения SQL запроса:
    
    count
    результат подсчета
    3

Давайте подсчитаем одновременно количество разных возрастов и количество разных зарплат:

    SELECT
    	COUNT(DISTINCT age) as count1,
    	COUNT(DISTINCT salary) as count2
    FROM workers

Результат выполнения SQL запроса:

    count1
    количество возрастов	count2
    количество зарплат
    5	3

Меняем таблицу для примеров
Все примеры ниже будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	NULL
    2	Петя	25	500
    3	Вася	23	NULL

Давайте подсчитаем количество всех записей:

`SELECT COUNT(*) as count FROM workers`
Результат выполнения SQL запроса:
    
    count
    результат подсчета
    3

А теперь подсчитаем количество зарплат, не равных NULL:

`SELECT COUNT(salary) as count FROM workers`
Результат выполнения SQL запроса:

    count
    результат подсчета
    1


## CREATE INDEX
```
CREATE INDEX index_name
ON table_name (column_name)
or

CREATE UNIQUE INDEX index_name
ON table_name (column_name)
```
## CREATE VIEW
```
CREATE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition
```
## DELETE	
```
DELETE FROM table_name
WHERE some_column=some_value
or

DELETE FROM table_name
(Note: Deletes the entire table!!)

DELETE * FROM table_name
(Note: Deletes the entire table!!)
```
### TR
Команда `DELETE` удаляет записи из базы данных.

Записи для удаления задаются с помощью команды `where`.

Команда where не является обязательной, если ее не указать - будут удалены все записи в таблице. Будьте внимательны - так случайно можно уничтожить все данные.

См. также команды `select`, `insert`, `update`, которые отвечают за получение, вставку и редактирование записей.

Синтаксис
```
DELETE FROM имя_таблицы WHERE условие
```
Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500

Удалим пользователя с id, равным 2:

    `DELETE FROM workers WHERE id=2`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    3	Вася	23	500

Удалим пользователей с id, большим 1:

    `DELETE FROM workers WHERE id>1`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
## DISTINCT
### TR
Команда `DISTINCT` позволяет выбирать только уникальные значения из базы данных (то есть отсеивает дубли: к примеру, в таблице есть две Маши - тогда запрос выведет только первую).

Вместо `DISTINCT` можно использовать `DISTINCTROW` - в mySQL это одно и то же.

См. также команду `count`, которая может быть использована для подсчета уникальных значений (в комбинации с `distinct`).

Синтаксис
При выборке:

    SELECT DISTINCT поле FROM имя_таблицы WHERE условие

При подсчете:

    SELECT COUNT(DISTINCT поле) FROM имя_таблицы WHERE условие

При суммировании:

    SELECT SUM(DISTINCT поле) FROM имя_таблицы WHERE условие

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте выберем все уникальные значения зарплат из таблицы workers:

    SELECT DISTINCT salary FROM workers
SQL запрос выберет следующие строки:
    
    salary
    зарплата
    400
    500
    1000

Давайте подсчитаем все уникальные значения зарплат из таблицы workers (их будет 3 штуки: 400, 500 и 1000):

    `SELECT COUNT(DISTINCT salary) as count FROM workers`
SQL запрос выберет следующие строки:
    
    count
    количество
    3

Давайте подсчитаем одновременно все уникальные значения зарплат и уникальные значения возрастов и запишем их в разные поля:
    
    SELECT
    	COUNT(DISTINCT salary) as salary_count,
     	COUNT(DISTINCT age) as age_count
    FROM workers

SQL запрос выберет следующие строки:
    
    salary_count
    зарплата	age_count
    возраст
    3	5

Давайте просуммируем все уникальные значения зарплат из таблицы workers:

    `SELECT SUM(DISTINCT salary) as sum FROM workers`
SQL запрос выберет следующие строки:
    
    sum
    суммарная зарплата
    1900

## DROP DATABASE
```
DROP DATABASE database_name
```
## DROP INDEX
```
DROP INDEX table_name.index_name (SQL Server)
DROP INDEX index_name ON table_name (MS Access)
DROP INDEX index_name (DB2/Oracle)
ALTER TABLE table_name
DROP INDEX index_name (MySQL)

```
## DROP TABLE
```
DROP TABLE table_name
```
## ELT
### TR

Функция `ELT` выбирает одно из полей по его номеру (нумерация полей с единицы).

Номер поля задается первым параметром, а остальными параметрами задаются имена полей. Выглядит это примерно так: 

    ELT(номер, поле1, поле2, поле2)
. Если, к примеру, вместо номера передать 1 - то выберется значение поля1, если 2 - значение поля2, если 3 - значение поля 3.

Вместо полей могут быть строки или числа, например, так: ELT(номер, 'строка1', 2, 'строка3'). Можно также комбинировать строки, числа и поля:

    ELT(номер, 'строка1', 2, поле1).

Если номер меньше, чем 1 или больше, чем число полей, возвращается NULL.

См. также функцию, которое выбирает поле по его содержимому.

См. также функцию `greatest`, которая находит максимальное из значений.

См. также функцию `least`, которая находит минимальное из значений.

Синтаксис

    SELECT ELT(число, поле1, поле2...) FROM имя_таблицы WHERE условие

Все примеры будут по этой таблице texts, если не сказано иное:

    id
    айди	field1
    поле1	field2
    поле2	field3
    поле3
    1	поле1	поле2	поле3
    2	поле1	поле2	поле3
    3	поле1	поле2	поле3
  
В данном примере с помощью elt выбирается содержимое первого поля:

    SELECT number, ELT(1, field1, field2, field3) as elt FROM texts
SQL запрос выберет следующие строки:

    id
    айди	elt
    поле
    1	поле1
    2	поле1
    3	поле1
  
В данном примере с помощью elt выбирается содержимое второго поля:

    SELECT number, ELT(2, field1, field2, field3) as elt FROM texts
SQL запрос выберет следующие строки:

    id
    айди	elt
    поле
    1	поле2
    2	поле2
    3	поле2
  
В данном примере с помощью elt выбирается содержимое третьего поля:

    SELECT number, ELT(3, field1, field2, field3) as elt FROM texts
SQL запрос выберет следующие строки:

    id
    айди	elt
    поле
    1	поле3
    2	поле3
    3	поле3
Меняем таблицу для примеров
Остальные примеры будут по этой таблице texts:

    id
    айди	number
    число	field1
    поле1	field2
    поле2	field2
    поле2
    1	3	поле1	поле2	поле3
    2	2	поле1	поле2	поле3
    3	1	поле1	поле2	поле3
  
В данном примере с помощью elt выбирается содержимое поля, номер которого задан полем number:

    SELECT number, ELT(number, field1, field2, field3) as elt FROM texts
SQL запрос выберет следующие строки:

    id
    айди	number
    число	elt
    поле
    1	3	поле3
    2	2	поле2
    3	1	поле1
Меняем таблицу для примеров
Остальные примеры будут по этой таблице users:

    id
    айди	name
    имя	date
    дата рождения
    1	Дима	1988-03-01
    2	Петя	1989-04-02
    3	Вася	1990-05-03
  
В данном примере с помощью elt и функции dayofweek выводится день недели по-русски:

    SELECT *, ELT(DAYOFWEEK(date), 'вс', 'пн', 'вт', 'ср', 'чт', 'пт', 'сб') as day FROM users
     
SQL запрос выберет следующие строки:

    id
    айди	name
    имя	date
    дата рождения	day
    день недели
    1	Дима	1988-03-01	вт
    2	Петя	1989-04-02	вс
    3	Вася	1990-05-03	чт
## EXISTS
```
IF EXISTS (SELECT * FROM table_name WHERE id = ?)
BEGIN
--do what needs to be done if exists
END
ELSE
BEGIN
--do what needs to be done if not
END

```
## GROUP BY
```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name
```
### TR
Команда `GROUP BY` позволяет группировать результаты при выборке из базы данных.

К сгруппированным результатам можно применять любые функции (смотрите примеры).

См. также команду `having`, которая позволяет накладывать условие на группы, созданные с помощью `group by`.

Синтаксис

    SELECT * FROM имя_таблицы WHERE условие GROUP BY поле_для_группировки

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	100
    2	Петя	23	200
    3	Вася	23	300
    4	Коля	24	1000
    5	Иван	24	2000
    6	Кирилл	25	1000

В данном примере записи группируются по возрасту (будет 3 группы - 23 года, 24 года и 25 лет). Затем для каждой группы применяется функция sum, которая суммирует зарплаты внутри данной группы.

В результате для каждой из групп (23 года, 24 года и 25 лет) будет подсчитана суммарная зарплата внутри этой группы:

    `SELECT age, SUM(salary) as sum FROM workers GROUP BY age`
SQL запрос выберет следующие строки:
    
    age
    возраст	sum
    сумма
    23	600
    24	3000
    25	1000

В данном примере мы используем дополнительное условие where, чтобы взять не все записи из таблицы:

    `SELECT age, SUM(salary) as sum FROM workers WHERE id>=2 GROUP BY age`
SQL запрос выберет следующие строки:

    age
    возраст	sum
    сумма
    23	500
    24	3000
    25	1000

В данном примере записи группируются по возрасту (будет 3 группы - 23 года, 24 года и 25 лет). Затем для каждой группы применяется функция max, которая находит максимальную зарплату внутри данной группы:

    `SELECT age, MAX(salary) as max FROM workers GROUP BY age`
SQL запрос выберет следующие строки:

    age
    возраст	max
    максимальная зарплата
    23	300
    24	2000
    25	1000

А теперь с помощью функции min найдется минимальная зарплата внутри данной группы:

    `SELECT age, MIN(salary) as min FROM workers GROUP BY age`
SQL запрос выберет следующие строки:

    age
    возраст	min
    минимальная зарплата
    23	100
    24	1000
    25	1000

А теперь с помощью функции count найдется количество записей в группе:

    `SELECT age, COUNT(*) as count FROM workers GROUP BY age`
SQL запрос выберет следующие строки:

    age
    возраст	count
    количество
    23	3
    24	2
    25	1

## HAVING
```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name
HAVING aggregate_function(column_name) operator value
```
### TR
Команда `HAVING` позволяет фильтровать результат группировки, сделанной с помощью команды `group by`.

См. также команду where, которая задает условие на выборку записей.

Синтаксис

    GROUP BY поле HAVING условие


Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	100
    2	Петя	23	200
    3	Вася	23	300
    4	Коля	24	1000
    5	Иван	24	2000
    6	Кирилл	25	1000

В данном примере демонстрируется работа group by без условия having:

    `SELECT age, SUM(salary) as sum FROM workers GROUP BY age`
SQL запрос выберет следующие строки:
    
    age
    возраст	sum
    сумма
    23	600
    24	3000
    25	1000

А теперь с помощью условия having оставим только те строки, в которых суммарная зарплата больше или равна 1000:

    SELECT age, SUM(salary) as sum FROM workers GROUP BY age HAVING sum>=1000
    
SQL запрос выберет следующие строки:

    age
    возраст	sum
    сумма
    24	3000
    25	1000

Подсчитаем с помощью функции count количество записей в группе (не используя having):

    `SELECT age, COUNT(*) as count FROM workers GROUP BY age`
    
SQL запрос выберет следующие строки:

    age
    возраст	count
    количество
    23	3
    24	2
    25	1

А теперь с помощью условия having оставим только те группы, в которых количество строк меньше или равно двум:

    `SELECT age, COUNT(*) as count FROM workers GROUP BY age HAVING count<=2`
     
SQL запрос выберет следующие строки:
    
    age
    возраст	count
    количество
    24	2
    25	1

Аналогичного эффекта можно достигнуть, если воспользоваться командой in:
    
    SELECT age, COUNT(*) as count FROM workers GROUP BY age HAVING count IN(1,2)
     
Можно также использовать команду between:
    
    SELECT age, COUNT(*) as count FROM workers GROUP BY age HAVING count BETWEEN 1 AND 2
     
Как вы видите, в having допустимы все команды, используемые в условии where.
## IF
Возвращает одно значение, если условие имеет значение true, или другое значение, если условие имеет значение false
## IFNULL
Позволяет возвращать альтернативное значение, если выражение имеет значение null
## IS
## IS NOT NULL
### TR
Команда `IS NOT NULL` проверяет поле на не NULL.

См. также команду `is null`, которая проверяет поле на NULL.

Синтаксис

    WHERE поле IS NOT NULL

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	24	NULL
    3	Вася	25	NULL

Давайте выберем записи, у которых зарплата не равна NULL:

    `SELECT * FROM workers WHERE salary IS NOT NULL`
SQL запрос выберет следующие строки:


    1	Дима	23	400

## IS NULL
Проверяет, является ли выражение null
### TR
Команда `IS NULL` проверяет поле на NULL.

См. также команду `is not null`, которая проверяет поле на не NULL.

Синтаксис
    
    WHERE поле IS NULL

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	24	NULL
    3	Вася	25	NULL

Давайте выберем записи, у которых зарплата равна NULL:

    `SELECT * FROM workers WHERE salary IS NULL`
SQL запрос выберет следующие строки:

    
    2	Петя	24	NULL
    3	Вася	25	NULL

## LAST_INSERT_ID
Возвращает первое значение ауто_инкремент, которое было задано последней инструкцией INSERT или Update
## NULLIF
Сравнивает два выражения
## IN
```
SELECT column_name(s)
FROM table_name
WHERE column_name
IN (value1,value2,..)
```
### TR
Команда `IN` выбирает записи из базы данных по определенным значениям поля.

К примеру, можно выбрать записи, у которых `id` имеет значение 1, 3, 7, 14, 28. Это будет выглядеть так:

    `WHERE id IN (1, 3, 7, 14, 28)`.

Или же все записи, у которых поле name имеет значение `'Дима'`, `'Вася'` или
`'Коля'`. Это будет выглядеть так:

    `WHERE id IN ('Дима', 'Вася', 'Коля')`.

В принципе, для таких вещей можно пользоваться и командой or, тогда первый пример будет выглядеть так: 

    `WHERE id=1 OR id=3 OR id=7 OR id=14 OR id=28`
    
. Вариант с `IN` все-таки выглядит проще и изящнее.

См. также команду `not`, которая делает отрицание (к примеру, так: `not in`).

См. также команду `between`, которая выбирает записи по диапазону значений.

Синтаксис
    
    SELECT * FROM имя_таблицы WHERE поле IN (значение1, значение2...)


Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте выберем записи с `id`, равным 1, 3 и 5:

    `SELECT * FROM workers WHERE id IN (1, 3, 5)`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    3	Вася	23	500
    5	Иван	27	500

Давайте выберем записи с именами `'Дима'`, `'Коля'`, `'Кирилл'`:

    `SELECT * FROM workers WHERE id IN ('Дима', 'Коля', 'Кирилл')`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    4	Коля	30	1000
    6	Кирилл	28	1000

## INSERT INTO
```
INSERT INTO table_name
VALUES (value1, value2, value3,....)
or

INSERT INTO table_name
(column1, column2, column3,...)
VALUES (value1, value2, value3,....)
```
### TR
Команда `INSERT` вставляет записи в базу данных. Можно вставить или одну запись, или сразу несколько.

См. также команды `select`, `update`, `delete`, которые отвечают за получение, редактирование и удаление записей.

См. также команду `select into`, которая копирует данные из одной таблицы в другую.

Синтаксис
Первый синтаксис:
```
INSERT INTO имя_таблицы SET поле1=значение1, поле2=значение2, поле3=значение3...

```
Второй синтаксис:

    INSERT INTO имя_таблицы (поле1, поле2...) VALUES (значение1, значение2...)

Одновременно много записей:
    
    INSERT INTO имя_таблицы (поле1, поле2...)
    	VALUES (значение1, значение2...), (значение1, значение2...)..."
    	
Примерые примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500


Добавим с помощью первого синтаксиса нового работника Васю с возрастом 23 и зарплатой 500:
    
    `INSERT INTO workers SET name='Вася', age=23, salary=500`

Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500

Добавим с помощью второго синтаксиса нового работника Васю с возрастом 23 и зарплатой 500:

    `INSERT INTO workers (name, age, salary) VALUES ('Вася', 23, 500)`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500

Добавим одновременно нового работника Васю с возрастом 23 и зарплатой 500 и работника Колю с возрастом 30 и зарплатой 1000:

    `INSERT INTO workers (name, age, salary) VALUES ('Вася', 23, 500), ('Коля', 30, 1000)`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

Давайте добавим нового работника Васю с возрастом 23, но не указав ему зарплату. Вместо нее вставится значение по умолчанию:

    `INSERT INTO workers (name, age) VALUES ('Вася', 23)`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	0

## INNER JOIN
```
SELECT column_name(s)
FROM table_name1
INNER JOIN table_name2
ON table_name1.column_name=table_name2.column_name
```
### TR 
Команда `INNER JOIN` используются для связывания таблиц по определенным полям связи.

Синтаксис
    
    SELECT поля FROM имя_таблицы
    INNER JOIN имя_связанной_таблицы ON условие_связи 
    WHERE условие_выборки

Все примеры будут по таблицам countries и cities, если не сказано иное.

Таблица countries:
    
    id
    айди	name
    имя
    1	Беларусь
    2	Россия
    3	Украина

Таблица cities:
    
    id
    айди	name
    имя	country_id
    айди страны
    1	Минск	1
    2	Витебск	1
    3	Москва	2
    4	Владивосток	2
    6	Лондон	0

В данном примере ... Лондон и Украина не выберется
    
    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    INNER JOIN countries ON countries.id=cities.country_id
     
SQL запрос выберет следующие строки:

    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    1	Минск	1	1	Беларусь
    2	Витебск	1	1	Беларусь
    3	Москва	2	2	Россия
    4	Владивосток	2	2	Россия

### TR JOIN
Команды `JOIN`, `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` используются для связывания таблиц по определенным полям связи.

Синтаксис

    SELECT поля FROM имя_таблицы
    LEFT JOIN имя_связанной_таблицы ON условие_связи 
    WHERE условие_выборки

Все примеры будут по таблицам countries и cities, если не сказано иное.

Таблица countries:

    id
    айди	name
    имя
    1	Беларусь
    2	Россия
    3	Украина

Таблица cities:

    id
    айди	name
    имя	country_id
    айди страны
    1	Минск	1
    2	Витебск	1
    3	Москва	2
    4	Питер	2
    5	Лондон	0

#### LEFT JOIN
В данном примере ...:

    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    LEFT JOIN countries ON countries.id=cities.country_id
     
SQL запрос выберет следующие строки:

    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    1	Минск	1	1	Беларусь
    2	Витебск	1	1	Беларусь
    3	Москва	2	2	Россия
    4	Питер	2	2	Россия
    5	Лондон	0	NULL

#### RIGHT JOIN
В данном примере ... Лондон не выберется, а Украина наоборот

    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    RIGHT JOIN countries ON countries.id=cities.country_id
     
SQL запрос выберет следующие строки:

    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    1	Минск	1	1	Беларусь
    2	Витебск	1	1	Беларусь
    3	Москва	2	2	Россия
    4	Питер	2	2	Россия
    NULL	NULL	NULL	3	Украина
#### INNER JOIN
В данном примере ... Лондон и Украина не выберется

    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    INNER JOIN countries ON countries.id=cities.country_id
     
SQL запрос выберет следующие строки:
        
    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    1	Минск	1	1	Беларусь
    2	Витебск	1	1	Беларусь
    3	Москва	2	2	Россия
    4	Питер	2	2	Россия
    
## LEFT JOIN
```
SELECT column_name(s)
FROM table_name1
table_name2
ON table_name1.column_name=table_name2.column_name
```
### TR
Команда `LEFT JOIN` используются для связывания таблиц по определенным полям связи.

Синтаксис
    
    SELECT поля FROM имя_таблицы
    LEFT JOIN имя_связанной_таблицы ON условие_связи 
    WHERE условие_выборки

Все примеры будут по таблицам countries и cities, если не сказано иное.

Таблица countries:

    id
    айди	name
    имя
    1	Беларусь
    2	Россия
    3	Украина

Таблица cities:
    
    id
    айди	name
    имя	country_id
    айди страны
    1	Минск	1
    2	Витебск	1
    3	Москва	2
    4	Владивосток	2
    6	Лондон	0

В данном примере ...:

    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    LEFT JOIN countries ON countries.id=cities.country_id
     
SQL запрос выберет следующие строки:
    
    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    1	Минск	1	1	Беларусь
    2	Витебск	1	1	Беларусь
    3	Москва	2	2	Россия
    4	Владивосток	2	2	Россия
    6	Лондон	0	NULL	

В данном примере ...:
    
    SELECT
    	cities.id as city_id, cities.name as city_name, cities.country_id as city_country_id,
    	countries.id as country_id, countries.name as country_name
    FROM cities
    LEFT JOIN countries ON countries.id=cities.country_id
    WHERE countries.id>=2
     
SQL запрос выберет следующие строки:

    city_id
    айди города	city_name
    название города	city_country_id
    айди страны	country_id
    айди страны	country_name
    название страны
    3	Москва	2	2	Россия
    4	Владивосток	2	2	Россия

## RIGHT JOIN
```
SELECT column_name(s)
FROM table_name1
RIGHT JOIN table_name2
ON table_name1.column_name=table_name2.column_name

```
### TR
Команда `RIGHT JOIN` используется для связывания таблиц по определенным полям связи.

Синтаксис
    
    SELECT поля FROM имя_таблицы
    RIGHT JOIN имя_связанной_таблицы ON условие_связи 
    WHERE условие_выборки

Все примеры будут по таблицам countries и cities, если не сказано иное.

Таблица countries:

    id
    айди	name
    имя
    1	Беларусь
    2	Россия
    3	Украина

Таблица cities:

    id
    айди	name
    имя	country_id
    айди страны
    1	Минск	1
    2	Витебск	1
    3	Москва	2
    4	Владивосток	2
    6	Лондон	0

## FULL JOIN
```
SELECT column_name(s)
FROM table_name1
FULL JOIN table_name2
ON table_name1.column_name=table_name2.column_name
```
## LIKE
```
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern
```
### TR
Команда `LIKE` задает поиск по определенному шаблону.

См. также команду `not`, которая делает отрицание (к примеру, так: `not like`).

Синтаксис

    SELECT * FROM имя_таблицы WHERE поле LIKE шаблон_поиска

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

В данном примере команда like найдет все записи, у которых имя заканчивается на 'я':
#### reg Like %
    `SELECT * FROM workers WHERE name LIKE '%я'`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

Давайте выберем те записи, у которых возраст начинается с цифры 2, а затем идет еще один символ:
#### reg Like _
    `SELECT * FROM workers WHERE age LIKE '2_'`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    5	Иван	27	500
    6	Кирилл	28	1000

## LIMIT
### TR
Команда `LIMIT` задает ограничение на количество записей, выбираемых из базы данных.

Данная команда может использоваться совместно с командой `SELECT`, командой `DELETE`, и командой `UPDATE`.

См. также команду `order`, с помощью которой можно отсортировать выбранные записи.

Синтаксис
```
SELECT * FROM имя_таблицы WHERE условие LIMIT количество_записей
SELECT * FROM имя_таблицы WHERE условие LIMIT с_какой_записи, количество_записей
SELECT * FROM имя_таблицы WHERE условие ORDER BY по_чем_сортировать LIMIT число, число
DELETE FROM имя_таблицы WHERE условие LIMIT количество_записей
UPDATE имя_таблицы SET ... WHERE условие LIMIT количество_записей

```
Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте выберем первые 3 записи:

    `SELECT * FROM workers WHERE id>0 LIMIT 3`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500

Давайте выберем 3 записи, начиная со второй (первая имеет номер 0, а вторая - номер 1):

    `SELECT * FROM workers WHERE id>0 LIMIT 1, 3`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

Давайте выберем последние 3 записи.

Для этого отсортируем их с помощью `ORDER BY` по убыванию id и возьмем 3 записи с помощью `LIMIT`

Они и будут искомыми последними записями, так как `LIMIT` сработает после сортировки и будет браться по уже отсортированной таблице.

При этом записи будут идти в обратном порядке - с 6-той по 4-тую (так как мы их отсортировали):

    `SELECT * FROM workers WHERE id>0 ORDER BY id LIMIT 3`
SQL запрос выберет следующие строки:

    
    6	Кирилл	28	1000
    5	Иван	27	500
    4	Коля	30	1000

Давайте выберем последнюю запись в таблице.

Для этого отсортируем их с помощью `ORDER BY` по убыванию id и возьмем первую запись с помощью `LIMIT`:

`SELECT * FROM workers WHERE id>0 ORDER BY id LIMIT 3`
SQL запрос выберет следующие строки:

    
    6	Кирилл	28	1000
## NOT
### TR
Команда NOT задает отрицание для других команд: вместо `IN` можно написать `NOT IN`, вместо `BETWEEN` - `NOT BETWEEN` и так далее.

Как это работает: возьмем, для примера, команду `IN` и с ее помощью выберем записи, у которых `id` имеет значение 1, 3, 7, 14, 28. Это будет выглядеть так:

    `WHERE id IN (1, 3, 7, 14, 28)`.

А теперь воспользуемся отрицанием `not` и выберем все записи, у которых `id` НЕ равен 1, 3, 7, 14, 28 таким образом:

    `WHERE id NOT IN (1, 3, 7, 14, 28)`.

См. также команду `is null`, которая проверяет поле на `NULL`.

См. также команду `is not null`, которая проверяет поле на не `NULL`.

Синтаксис
    
    NOT IN (значение1, значение2...)
    NOT BETWEEN значение1 AND значение2
    NOT LIKE шаблон

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте выберем записи с id, НЕ равным 1, 3 и 5:

    `SELECT * FROM workers WHERE id NOT IN (1, 3, 5)`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    4	Коля	30	1000
    6	Кирилл	28	1000

Давайте выберем записи с id, НЕ между 3 и 5:

    `SELECT * FROM workers WHERE id NOT BETWEEN 3 AND 5`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400
    2	Петя	25	500
    6	Кирилл	28	1000

## ORDER BY	
```
SELECT column_name(s)
FROM table_name
ORDER BY column_name [ASC|DESC]
SELECT	SELECT column_name(s)
FROM table_name
```
### TR
Команда `ORDER BY` позволяет сортировать записи по определенному полю при выборе из базы данных.

См. также команду `limit`, которая ограничивает количество выбираемых записей.

Синтаксис
Сортировка по одному полю:

    `SELECT * FROM имя_таблицы WHERE условие ORDER BY поле_для_сортировки`

Можно сортировать не по одному, а по многим полям сразу:

    `SELECT * FROM имя_таблицы WHERE условие ORDER BY поле1, поле2...`
По умолчанию записи сортируются по возрастанию, чтобы отсортировать по убыванию - поставьте DESC:

    `SELECT * FROM имя_таблицы WHERE условие ORDER BY поле DESC`
По умолчанию будет сортировка, будто поставлено ASC:

    `SELECT * FROM имя_таблицы WHERE условие ORDER BY поле ASC`
Условие where не обязательно - если его не поставить, будут выбраны все записи:

    `SELECT * FROM имя_таблицы ORDER BY поле`

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

Давайте получим все записи из таблицы и отсортируем их по возрастанию возраста:

    `SELECT * FROM workers WHERE id>0 ORDER BY age`
SQL запрос выберет строки в следующем порядке:

    
    1	Дима	23	400
    3	Вася	23	500
    2	Петя	25	500
    5	Иван	27	500
    6	Кирилл	28	1000
    4	Коля	30	1000

Так как выбираются все записи, то блок WHERE можно не указывать:

    `SELECT * FROM workers ORDER BY age`
Можно также указать тип сортировки в явном виде - ASC - результат от этого не изменится:

    `SELECT * FROM workers ORDER BY age ASC`

Давайте теперь отсортируем записи по убыванию возраста:

    `SELECT * FROM workers ORDER BY age DESC`
SQL запрос выберет строки в следующем порядке:


4	Коля	30	1000
6	Кирилл	28	1000
5	Иван	27	500
2	Петя	25	500
1	Дима	23	400
3	Вася	23	500
 
Давайте теперь отсортируем записи одновременно по возрастанию возраста и по убыванию зарплаты.

При этом записи сначала будут сортироваться по возрасту, а те записи, в которых возраст одинаковый (в нашем случае - 23), будут располагаться по убыванию зарплаты:

    `SELECT * FROM workers WHERE id>0 ORDER BY age ASC, salary DESC`
SQL запрос выберет строки в следующем порядке:

    
    3	Вася	23	500
    1	Дима	23	400
    2	Петя	25	500
    5	Иван	27	500
    6	Кирилл	28	1000
    4	Коля	30	1000
 
Давайте при тех же условиях (т.е. сначала сортировка по возрасту) отсортируем по возрастанию зарплаты.

Теперь первая и вторая запись поменяются местами так, чтобы сначала шла меньшая зарплата, а потом - большая:

    `SELECT * FROM workers WHERE id>0 ORDER BY age ASC, salary DESC`
SQL запрос выберет строки в следующем порядке:

    
    1	Дима	23	400
    3	Вася	23	500
    2	Петя	25	500
    5	Иван	27	500
    6	Кирилл	28	1000
    4	Коля	30	1000

## SELECT *	
```
SELECT *
FROM table_name
```
### TR 
Команда `SELECT` получает записи из базы данных по определенному условию, которое задается с помощью команды where.

Эти записи можно отсортировать с помощью команды order by, а также можно ограничить их количество с помощью `limit`.

См. также команды `insert`, `update`, `delete`, которые отвечают за вставку, редактирование и удаление записей.

См. также функцию count, которая подсчитывает количество записей.

См. также команду `select into`, которая копирует данные из одной таблицы в другую.

Синтаксис
    
    SELECT * FROM имя_таблицы
    SELECT * FROM имя_таблицы WHERE условие
    SELECT поле1, поле2... FROM имя_таблицы WHERE условие

Полный синтаксис:
```sql
SELECT 
    [STRAIGHT_JOIN] [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]
    [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS] [HIGH_PRIORITY]
    [DISTINCT | DISTINCTROW | ALL]
select_expression,...
[INTO {OUTFILE | DUMPFILE} 'file_name' export_options]
[FROM table_references
[WHERE where_definition]
[GROUP BY {unsigned_integer | col_name | formula} [ASC | DESC], ...]
[HAVING where_definition]
[ORDER BY {unsigned_integer | col_name | formula} [ASC | DESC], ...]
[LIMIT [offset,] rows | rows OFFSET offset]
[PROCEDURE procedure_name(argument_list)]
[FOR UPDATE | LOCK IN SHARE MODE]]
```

Все примеры будут по этой таблице workers, если не сказано иное:
```
id name  age salary 

1  Дима	  23	400
2  Петя	  25	500
3  Вася	  23	500
4  Коля	  30	1000
5  Иван	  27	500
6  Кирилл 28	1000
```
 
В данном примере выбираются записи, у которых поле id больше 3-х:

    `SELECT * FROM workers WHERE id>3`
SQL запрос выберет следующие строки:
```
4	Коля	30	1000
5	Иван	27	500
6	Кирилл	28	1000
```

В данном примере выбираются записи, у которых поле id меньше 3-х:

    `SELECT * FROM workers WHERE id<=3`
SQL запрос выберет следующие строки:

```
1	Дима	23	400
2	Петя	25	500
3	Вася	23	500
```

В данном примере выбираются записи, у которых поле id равно 3-м:

    `SELECT * FROM workers WHERE id=3`
SQL запрос выберет следующие строки:

```
3	Вася	23	500
```
Пример 
В данном примере выбираются записи, у которых поле id НЕ равно 3-м:

    `SELECT * FROM workers WHERE id!=3`
SQL запрос выберет следующие строки:

```
1	Дима	23	400
2	Петя	25	500
4	Коля	30	1000
5	Иван	27	500
6	Кирилл	28	1000
```
Запрос можно переписать следующим образом:

    `SELECT * FROM workers WHERE id<>3`
 
В данном примере отсутствует WHERE - поэтому выберутся все записи в таблице:

    `SELECT * FROM workers`
SQL запрос выберет следующие строки:

```
1	Дима	23	400
2	Петя	25	500
3	Вася	23	500
4	Коля	30	1000
5	Иван	27	500
6	Кирилл	28	1000
```

В данном примере вместо * указаны конкретные поля (id, name, age):

    `SELECT id, name, age FROM workers`
SQL запрос выберет следующие строки:

```
1	Дима	23
2	Петя	25
3	Вася	23
4	Коля	30
5	Иван	27
6	Кирилл	28
```

В данном примере выбирается только одно поле - name:

    `SELECT name FROM workers`
SQL запрос выберет следующие строки:

    
    Дима
    Петя
    Вася
    Коля
    Иван
    Кирилл


## SELECT DISTINCT
```
SELECT DISTINCT column_name(s)
FROM table_name
```
## SELECT INTO
```
SELECT *
INTO new_table_name [IN externaldatabase]
FROM old_table_name
or

SELECT column_name(s)
INTO new_table_name [IN externaldatabase]
FROM old_table_name
```
### TR
Команда `SELECT INTO` копирует данные из одной таблицы в другую.

См. также команду insert, которая вставляет записи в таблицу.

Синтаксис
Обычное применение:

    SELECT * INTO в_какую_таблицу FROM из_какой_таблицы WHERE условие
Можно копировать и в другую базу данных:

    SELECT * INTO в_какую_таблицу IN другая_база_данных FROM из_какой_таблицы WHERE условие
         
Условие where не является обязательным, если его не указать - будут выбраны все записи.

Команду select into можно использовать для того, чтобы создать новую пустую таблицу по образцу старой. Для этого в where нужно передать условие, которое не выберет ни одной записи:

    SELECT * INTO новая_таблица FROM старая_таблица WHERE 1=0

Все примеры будут по таблицам countries1 и countries2, если не сказано иное.

Таблица countries1:
    
    id
    айди	name
    имя
    1	Беларусь
    2	Россия
    3	Украина
Таблица countries2:

    id
    айди	name
    имя
    1	Испания
Пример 
В данном примере данные копируются из таблицы countries1 и вставляются в countries2:

    SELECT * INTO countries2 FROM countries1
Таблица countries2 станет выглядеть так:

    id
    айди	name
    имя
    1	Испания
    2	Беларусь
    3	Россия
    4	Украина

## SELECT TOP
```
SELECT TOP number|percent column_name(s)
FROM table_name
TRUNCATE TABLE	TRUNCATE TABLE table_name
```
## UNION
```
SELECT column_name(s) FROM table_name1
UNION
SELECT column_name(s) FROM table_name2
```
### TR
Команда `UNION` объединяет данные из нескольких таблиц в одну при выборке.

При объединении количество столбцов во всех таблицах должно совпадать, иначе будет ошибка

Имена столбцов будут такие же, как в основной таблице, в которую добавляются данные из других таблиц.

Внимание: если не используется ключевое слово `ALL` для `UNION`, все возвращенные строки будут уникальными, так как по умолчанию подразумевается `distinct`, который удаляет неуникальные значения.

Чтобы отменить такое поведение - нужно указать ключевое слово `ALL`, вот так: `UNION ALL`.

См. также команду `join`, которая объединяет связанные таблицы.

Синтаксис
С удалением дублей:

    SELECT * FROM имя_таблицы1 WHERE условие
    	UNION SELECT * FROM имя_таблицы2 WHERE условие
Без удаления дублей:

    SELECT * FROM имя_таблицы1 WHERE условие
    	UNION ALL SELECT * FROM имя_таблицы2 WHERE условие
Можно объединять не две таблицы, а три или более:

    SELECT * FROM имя_таблицы1 WHERE условие
    	UNION SELECT * FROM имя_таблицы2 WHERE условие
    	UNION SELECT * FROM имя_таблицы3 WHERE условие
    	UNION SELECT * FROM имя_таблицы4 WHERE условие

Все примеры будут по таблицам countries и cities, если не сказано иное.

Таблица countries:

    id
    айди	name
    название
    1	Беларусь
    2	Россия
    3	Украина

Таблица cities:

    id
    айди	name
    название	country_id
    айди страны
    1	Минск	1
    2	Минск	1
    3	Москва	2
    4	Киев	3

В данном примере объединяются записи из двух таблиц:

    SELECT id, name FROM countries UNION ALL SELECT id, name FROM cities
SQL запрос выберет следующие строки:

    id
    айди	name
    название
    1	Беларусь
    2	Россия
    3	Украина
    1	Минск
    2	Минск
    3	Москва
    4	Киев

В данном примере отсутствует ключевое слово ALL, однако дубли не будут удалены, так как дублями считается полное совпадение строк:

    SELECT id, name FROM countries UNION SELECT id, name FROM cities
SQL запрос выберет следующие строки:

    id
    айди	name
    название
    1	Беларусь
    2	Россия
    3	Украина
    1	Минск
    2	Минск
    3	Москва
    4	Киев

А вот теперь дубли будут удалены (из двух Минсков останется один), так как будет иметь место полное совпадение строк (потому что поле осталось одно, но это не обязательно):

    SELECT name FROM countries UNION SELECT name FROM cities
SQL запрос выберет следующие строки:

    name
    название
    Беларусь
    Россия
    Украина
    Минск
    Москва
    Киев

А теперь добавим слово ALL - и дубли не будут удалятся:

    SELECT name FROM countries UNION ALL SELECT name FROM cities
SQL запрос выберет следующие строки:

    name
    название
    Беларусь
    Россия
    Украина
    Минск
    Минск
    Москва
    Киев

В данном примере демонстрируется работа условий where в комбинации с union:

    SELECT id, name FROM countries WHERE id>=2
    	UNION SELECT id, name FROM cities WHERE id<=2
SQL запрос выберет следующие строки:

    id
    айди	name
    имя
    2	Россия
    3	Украина
    1	Минск
    2	Минск

Имена колонок берутся из первой таблицы (то есть имена колонок таблиц, подключенных через union нигде себя не проявят):

    SELECT id as country_id, name as country_name FROM countries
     	UNION SELECT id, name FROM cities
SQL запрос выберет следующие строки:

    country_id
    айди	country_name
    имя
    1	Беларусь
    2	Россия
    3	Украина
    1	Минск	1
    2	Минск	1
    3	Москва	2
    4	Киев	3

Такой запрос выдаст ошибку, так как в таблицах не совпадает количество колонок:

    SELECT id, name FROM countries UNION SELECT id, name, country_id FROM cities
И такой запрос тоже выдаст ошибку в нашем случае - количество колонок в обеих таблицах не совпадает:

    SELECT * FROM countries UNION SELECT * FROM cities
Если нам очень надо забрать из какой-либо таблицы столько полей, что в другой таблице столько и нет, можно создавать дополнительные поля вручную.

К примеру, мы хотим забрать 3 поля из второй таблицы, а в первой таблице полей только 2. Решим эту проблему создав поле с именем `country_id` и содержимым 0 для первой таблицы (вот так: `0 as country_id`):
    
    SELECT id, name, 0 as country_id FROM countries
    	UNION SELECT id, name, country_id FROM cities
SQL запрос выберет следующие строки:

    id
    айди	name
    имя	country_id
    айди страны
    1	Беларусь	0
    2	Россия	0
    3	Украина	0
    1	Минск	1
    2	Минск	1
    3	Москва	2
    4	Киев	3

## UNION ALL
```
SELECT column_name(s) FROM table_name1
UNION ALL
SELECT column_name(s) FROM table_name2
```
## UPDATE
```
UPDATE table_name
SET column1=value, column2=value,...
WHERE some_column=some_value
```
### TR
Команда `UPDATE` редактирует записи в базе данных.

Какие записи для редактирования задаются с помощью команды `WHERE`.

Команда `WHERE` не является обязательной, если ее не указать - будут обновлены все записи в таблице. Будьте внимательны - так случайно можно уничтожить все данные.

См. также команды `select`, `insert`, `delete`, которые отвечают за получение, вставку и удаление записей.

Синтаксис
```
UPDATE имя_таблицы SET поле1=значение1, поле2=значение2, поле3=значение3...
	WHERE условие_по_которому_следует_выбрать_строки
	
```

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	24	500
    3	Вася	25	600

В данном примере работнику с id, равным 1 (то есть Диме), устанавливается возраст 30 и зарплата 1000:

    `UPDATE workers SET age=30, salary=1000 WHERE id=1`
Таблица workers станет выглядеть так:

    
    1	Дима	30	1000
    2	Петя	24	500
    3	Вася	25	600

В данном примере работнику с id, равным 1 (то есть Диме), устанавливается возраст 30:

    `UPDATE workers SET age=30 WHERE id=1`
Таблица workers станет выглядеть так:

    
    1	Дима	30	400
    2	Петя	24	500
    3	Вася	25	600
 
В данном примере работнику Пете устанавливается новое имя Коля:

    `UPDATE workers SET name='Коля' WHERE name='Петя'`
Таблица workers станет выглядеть так:

    
    1	Дима	23	400
    2	Коля	24	500
    3	Вася	25	600
     
В данном примере всем работникам устанавливается зарплата 1000 (так как не задано WHERE - наш запрос обновит все записи):

    `UPDATE workers SET salary=1000`
Таблица workers станет выглядеть так:

    
    1	Дима	23	1000
    2	Петя	24	1000
    3	Вася	25	1000

## WHERE
```
SELECT column_name(s)
FROM table_name
WHERE column_name operator value
```
### TR
Команда `WHERE` задает условие, по которому будут выбираться строки из базы данных.

Данная команда может использоваться для выборки строк с помощью select, удаления строк с помощью delete, редактирования строк с помощью update.

См. также команды `or`, `and`, `in`, `between`, `like`, `not`, `is null`, `is not null`, которые допустимо использовать в комбинации с командой where.

Синтаксис
    
    WHERE

Все примеры будут по этой таблице workers, если не сказано иное:

    
    1	Дима	23	400
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000
    5	Иван	27	500
    6	Кирилл	28	1000

В данном примере выбираются записи, у которых поле id больше 2-х и меньше 4-х:

    `SELECT * FROM workers WHERE id>=2 AND id<=4`
SQL запрос выберет следующие строки:

    
    2	Петя	25	500
    3	Вася	23	500
    4	Коля	30	1000

В данном примере выбираются записи, у которых возраст равен 23 и одновременно зарплата равна 400:

    `SELECT * FROM workers WHERE age=23 AND salary=400`
SQL запрос выберет следующие строки:

    
    1	Дима	23	400

В данном примере из таблицы удаляются записи, у которых поле id больше 2-х и меньше 4-х:

    `DELETE FROM workers WHERE id>=2 AND id<=4`
В таблице останутся следующие строки:

    
    1	Дима	23	400
    5	Иван	27	500
    6	Кирилл	28	1000

