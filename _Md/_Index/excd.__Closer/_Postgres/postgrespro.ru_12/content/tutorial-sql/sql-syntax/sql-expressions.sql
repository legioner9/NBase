select cnum, cname, city, rating, snum -- ref to [column]
from schema_one.customers; -- ref to [table]

CREATE FUNCTION dept(text) RETURNS schema_one.customers
    AS $$ SELECT * FROM schema_one.customers WHERE cname = $1 $$ -- ref to first arg of dept() [positional parameters]
    LANGUAGE SQL;

/*
моя_таблица.столбец_массив[4]
моя_таблица.столбец_массив_2d[17][34]
$1[10:42]
(функция_массив(a,b))[42]              {ref to [indexes of elements]}
*/

/*
моя_таблица.столбец                    { ref to field }
$1.столбец
(функция_кортеж(a,b)).стол3 ref
(составной_столбец).поле
(моя_таблица.составной_столбец).поле
*/

/*
выражение оператор выражение (бинарный инфиксный оператор)
оператор выражение (унарный префиксный оператор)
выражение оператор (унарный постфиксный оператор)
OPERATOR(схема.имя_оператора)               { ref to operator }
*/

/*
имя_функции ([выражение [, выражение ... ]])  { ref to function }
col(table) === table.col
*/

/* { ref to aggregate function }
агрегатная_функция (выражение [ , ... ] [ предложение_order_by ] ) [ FILTER ( WHERE условие_фильтра ) ]
агрегатная_функция (ALL выражение [ , ... ] [ предложение_order_by ] ) [ FILTER ( WHERE условие_фильтра ) ]
агрегатная_функция (DISTINCT выражение [ , ... ] [ предложение_order_by ] ) [ FILTER ( WHERE условие_фильтра ) ]
агрегатная_функция ( * ) [ FILTER ( WHERE условие_фильтра ) ]
агрегатная_функция ( [ выражение [ , ... ] ] ) WITHIN GROUP ( предложение_order_by ) [ FILTER ( WHERE условие_фильтра ) ]
   при использовании агрегатных функций с несколькими аргументами, предложение ORDER BY идёт после всех аргументов
   SELECT string_agg(a, ',' ORDER BY a) FROM table;
*/
SELECT string_agg(amt, ',' ORDER BY amt) FROM schema_one.orders; -- [42883] ОШИБКА: функция string_agg(double precision, unknown) не существует

/* { ref to window function }
имя_функции ([выражение [, выражение ... ]]) [ FILTER ( WHERE предложение_фильтра ) ] OVER имя_окна
имя_функции ([выражение [, выражение ... ]]) [ FILTER ( WHERE предложение_фильтра ) ] OVER ( определение_окна )
имя_функции ( * ) [ FILTER ( WHERE предложение_фильтра ) ] OVER имя_окна
имя_функции ( * ) [ FILTER ( WHERE предложение_фильтра ) ] OVER ( определение_окна )

Здесь определение_окна записывается в виде
[ имя_существующего_окна ]
[ PARTITION BY выражение [, ...] ]
[ ORDER BY выражение [ ASC | DESC | USING оператор ] [ NULLS { FIRST | LAST } ] [, ...] ]
[ определение_рамки ]

Необязательное определение_рамки может иметь вид:
{ RANGE | ROWS | GROUPS } начало_рамки [ исключение_рамки ]
{ RANGE | ROWS | GROUPS } BETWEEN начало_рамки AND конец_рамки [ исключение_рамки ]
*/

/* { ref to type }
CAST ( выражение AS тип )  -- sql expression
выражение::тип  -- pg expression
имя_типа ( выражение )  -- type as function
*/

/* { ref to sort rule }
выражение COLLATE правило_сортировки
SELECT a, b, c FROM tbl WHERE ... ORDER BY a COLLATE "C";
*/
SELECT * FROM schema_one.customers WHERE city < 'c' COLLATE "C";

/* { scalar sub query }
   находит самый населённый город в каждом штате:
SELECT name, (SELECT max(pop) FROM cities WHERE cities.state = states.name)
    FROM states;
*/

select * , (select max(amt) from schema_one.orders as o where o.cnum = c.cnum) as max_amt
from schema_one.customers as c;
/*
2001,Hoffman, London,  100,1001,767.19
2002,Giovanni,Rome,    200,1003,1713.23
2003,Liu,     San Jose,200,1002,5160.45
2004,Grass,   Berlin,  300,1002,1309.95
2006,Clemens, London,  100,1001,9891.88
2008,Cisneros,San Jose,300,1007,1098.16
2007,Pereira, Rome,    100,1004,1900.1
*/

-- {ref to constructor of array }
SELECT ARRAY[1,2,22.7]::integer[] as arr_ini; -- "{1,2,23}"
SELECT ARRAY[[1,2],[3,4]] as two_dimensional_arr; -- "{{1,2},{3,4}}"

CREATE TABLE arr(f1 int[], f2 int[]); -- table create in public schemas
INSERT INTO arr VALUES (ARRAY[[1,2],[3,4]], ARRAY[[5,6],[7,8]]);
SELECT ARRAY[f1, f2, '{{9,10},{11,12}}'::int[]] FROM arr; -- {{{1,2},{3,4}},{{5,6},{7,8}},{{9,10},{11,12}}}

-- { ref to constructor table row }
SELECT ROW(1,2.5,'this is a test'); -- (1,2.5,"this is a test")

-- order calculate of expressions - random!
/*
SELECT CASE WHEN min(employees) > 0
            THEN avg(expenses / employees) - MAY BY === 0 ! if calculate first
       END
    FROM departments;
*/

