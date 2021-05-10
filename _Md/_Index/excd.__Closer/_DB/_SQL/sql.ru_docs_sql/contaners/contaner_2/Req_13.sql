Use sqlru_book;
### Directly Data insert
# &1:
#	INSERT INTO Salespeople_2
#	VALUES (1009, 'Peel1009', 'London1009', .17);
/*# 
snum, 	sname, 		city, 			comm
'1009', 'Peel1009', 'London1009', 	'0.17'
*/

# &2:
#	insert into customers (city ,cname ,cnum)
#	values ('Lon2009' , 'Kat2009 ', 2009 );

/*
CREATE TABLE `sqlru_book`.`customers_2` (
  `cnum` INT NOT NULL,
  `cname` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `rating` INT NULL,
  `snum` INT NULL,
  PRIMARY KEY (`cnum`));
  */
  
 /* 
 CREATE TABLE `sqlru_book`.`salespeople_2` (
  `snum` INT NOT NULL,
  `sname` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `comm` INT NOT NULL,
  PRIMARY KEY (`snum`));
  
  ALTER TABLE `sqlru_book`.`salespeople_2` 
CHANGE COLUMN `comm` `comm` FLOAT NOT NULL ;

ALTER TABLE `sqlru_book`.`salespeople_2` 
CHANGE COLUMN `comm` `comm` FLOAT NULL ;
*/

/*
CREATE TABLE `sqlru_book`.`orders_2` (
  `onum` INT NOT NULL,
  `amt` FLOAT NULL,
  `odate` DATE NULL,
  `cnum` INT NULL,
  `snum` INT NULL,
  PRIMARY KEY (`onum`));
  */

### insert from ResQuery
# &3
/*
insert orders_2
select *
	from orders
    where onum > 3007;
    */
/*# 
onum, 	amt,		odate, 			cnum, 	snum
'3007', '75.75', 	'10/04/1990', 	'2004', '1002'
*/

/*
insert orders_2
select *
	from orders
    where onum > 3007;
    */
/*# 
onum, 	amt, 		odate, 			cnum, snum
'3007', '75.75', 	'10/04/1990', '2004', '1002'
'3008', '4723', 	'10/05/1990', '2006', '1001'
'3009', '1713.23', 	'10/04/1990', '2002', '1003'
'3010', '1309.95', 	'10/06/1990', '2004', '1002'
'3011', '9891.88', 	'10/06/1990', '2006', '1001'

*/

/* 
create table t_table (
t_key integer,
t_field varchar (45)
);
*/

/*
insert t_table 
values ( 1 , 'one' )
*/
/*
create table dateTotals (
dt_data varchar (45),
dt_totals float
);
*/

/*insert datetotals 
select odate ,sum(amt)
	from orders
    group by odate
    */
/*# 
dt_data, 		dt_totals
'10/03/1990', 	'8944.59'
'10/04/1990', 	'1788.98'
'10/05/1990', 	'4723'
'10/06/1990', 	'11201.8'
*/
/*
delete from t_table
where t_key => 1;
*/
/*Error Code: 1175. You are using safe update mode and you tried to update
 a table without a WHERE that uses a KEY column.  To disable safe mode,
 toggle the option in Preferences -> SQL Editor and reconnect.*/
/*
t_key, t_field
null,  null
*/
/*
delete from t_table
where t_key >= 1;
*/
/*
insert t_table 
values ( 1 , 'one' );
insert t_table
values ( 2 , 'two' );
*/
/*
t_key, t_field
'1', 'one'
'2', 'two'
*/

## Update
### field as a whole
/*
update t_table
set t_field = 'three'
*/
/*# 
t_key, t_field
'1', 'three'
'2', 'three'
*/

### with predicate fore strings
# on Salespeople key = 1004  (Motika , London , comm = 0.11) => (Gibson , Boston , comm = 0.10)
/*
update salespeople 
set  sname ='Gibson' , city ='Boston' , comm = 0.10 
where snum = 1004;
*/
/*# 
snum, 	sname, 		city, 		comm
'1001', 'Peel', 	'London', 	'0.12'
'1002', 'Serres', 	'San Jose', '0.13'
'1003', 'Axelrod', 	'New York', '0.1'
'1004', 'Gibson', 	'Boston', 	'0.1'
'1007', 'Rifkin', 	'Barcelona', '0.15'
'1008', 'E_uyt', 	'Tuo%io', 	'0.15'
*/
### expression for modifications
update t_table
set	t_field = t_key;
/*
t_key, 	t_field
'1', 	'1'
'2', 	'2'
*/
update t_table
set t_field = null
where t_key = 1;
/*# 
t_key, 	t_field
'1', 	NULL
'2', 	'2'
*/
/* 1.Напишите команду которая бы поместила следующие значения,
 в их нижеуказанном порядке, в таблицу Продавцов:
 city - San Jose, name - Bianco, comm - NULL, cnum - 1100*/
 /*
insert into salespeople_2 (city , sname , comm , snum )
values  ('San Jose', 'Bianco',  NULL,  1100);
*/
/*# 
snum, 	sname, 		city, 			comm
'1009', 'Peel1009', 'London1009', 	'0.17'
'1100', 'Bianco', 	'San Jose', 	NULL
*/

/* 2.Напишите команду которая бы удалила все порядки заказчика Clemens из таблицы Порядков.*/
/*
# onum, amt, odate, cnum, snum
'3007', '75.75', '10/04/1990', '2004', '1002'
'3008', '4723', '10/05/1990', '2006', '1001'
'3009', '1713.23', '10/04/1990', '2002', '1003'
'3010', '1309.95', '10/06/1990', '2004', '1002'
'3011', '9891.88', '10/06/1990', '2006', '1001'
*/
select cnum
	from customers
	where cname = 'Clemens';
# 2006   
 
delete from orders_2
where snum = (
	select snum
		from customers
        where cname = 'Clemens'
);	
/*
# 
onum, amt, odate, cnum, snum
'3007', '75.75', '10/04/1990', '2004', '1002'
'3009', '1713.23', '10/04/1990', '2002', '1003'
'3010', '1309.95', '10/06/1990', '2004', '1002'
*/  
  
# fill customers_2 
/*
insert customers_2
	select *
    from customers
    */ 
 /* 3. Напишите команду которая бы увеличила оценку всех заказчиков в Риме на 100*/  
/*
update customers_2
set rating = rating + 100
where city = 'Rome';
*/
/* 4.Продавец Serres оставил компанию. Переназначьте его заказчиков продавцу Motika.*/
	select snum
		from salespeople 
        where sname = 'Motika';
        # 1004
	select snum
		from salespeople 
        where sname = 'Serres';
		# 1002
update customers_2
set snum = (
	select snum
		from salespeople 
        where sname = 'Motika'
    )
    where snum = (
    select snum
		from salespeople 
        where sname = 'Serres'
    );







  
