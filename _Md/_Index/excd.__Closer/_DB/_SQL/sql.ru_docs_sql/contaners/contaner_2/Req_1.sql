/*    SELECT * | { [ DISTINCT | ALL] <value expression>.,..}
    FROM { <table name> [ <alias> ] }.,..
    [ WHERE <predicate>]
    [ GROUP BY { <column name> | <integer> }.,..]
    [ HAVING <predicate>]
    [ ORDERBY { <column name> | <integer> }.,..]
    [ { UNION [ALL]
 
 
   SELECT * | { [DISTINCT | ALL] < value expression >.,..}
    FROM { <table name> [<alias>]} .,..
    [ WHERE <predicate>
    [ GROUP BY { <columnname> | <integer> }.,..]
    [ HAVING <predicate>]
    [ ORDER BY { <columnname> | <integer> }.,..] } ] ...]; 
    
    SELECT ('столбцы или * для выбора всех столбцов; обязательно')
	FROM ('таблица; обязательно')
	WHERE ('условие/фильтрация, например, city = 'Moscow'; необязательно')
	GROUP BY ('столбец, по которому хотим сгруппировать данные; необязательно')
	HAVING ('условие/фильтрация на уровне сгруппированных данных; необязательно')
	ORDER BY ('столбец, по которому хотим отсортировать вывод; необязательно')
    
    */

Use sqlru_book;

SELECT snum, sname, city, comm
 FROM sqlru_book.Salespeople;
 
SELECT *
 FROM sqlru_book.Salespeople;
 
SELECT sname ,comm
 FROM sqlru_book.Salespeople;

select distinct snum
from sqlru_book.orders;
 
select rating
from sqlru_book.Customers
where snum >= 1002;

select sname
from sqlru_book.Salespeople
where city = 'London';

