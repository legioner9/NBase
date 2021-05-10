Use sqlru_book;

# exist is allways boolean
SELECT cnum, cname, city
FROM Customers
WHERE EXISTS 
( SELECT *
FROM Customers
WHERE city='San Jose' ); # exist Customers.city = 'San Jose' in Customers EXISTS == true
/*# 
cnum, 	cname, 		city


'2001', 'Hoffman', 	'London'
'2002', 'Giovanni', 'Rome'
'2003', 'Liu', 		'San Jose'
'2004', 'Grass', 	'Berlin'
'2006', 'Clemens', 	'London'
'2007', 'Pereira', 	'Rome'
'2008', 'Cisneros', 'San Jose'
*/

# Например, мы можем вывести продавцов которые имеют многочисленых заказчиков 
# SubQuery:
select c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum,
		b.cnum b_cnum,b.cname b_cname,b.city b_city,b.rating b_rating,b.snum b_snum
	from customers c, customers b
    where c.snum = b.snum;
    
select c.cname c_cname,c.city c_city,c.snum c_snum,
		b.cname b_cname,b.city b_city,b.snum b_snum
	from customers c, customers b
    where c.snum = b.snum;
/*# 
c_cname, 	c_city, 	c_snum, b_cname, 		b_city, 	b_snum
'Hoffman', 	'London', 	'1001', 'Hoffman', 		'London', 	'1001'
'Clemens', 	'London', 	'1001', 'Hoffman', 		'London', 	'1001'
'Giovanni', 'Rome', 	'1003', 'Giovanni', 	'Rome', 	'1003'
'Liu', 		'San Jose', '1002', 'Liu', 			'San Jose', '1002'
'Grass', 	'Berlin', 	'1002', 'Liu', 			'San Jose', '1002'
'Liu', 		'San Jose', '1002', 'Grass', 		'Berlin', 	'1002'
'Grass', 	'Berlin', 	'1002', 'Grass', 		'Berlin', 	'1002'
'Hoffman', 	'London', 	'1001', 'Clemens', 		'London', 	'1001'
'Clemens', 	'London', 	'1001', 'Clemens', 		'London', 	'1001'
'Pereira', 	'Rome', 	'1004', 'Pereira', 		'Rome', 	'1004'
'Cisneros', 'San Jose', '1007', 'Cisneros', 	'San Jose', '1007'
*/

# bind
select c.cname c_cname,c.city c_city,c.snum c_snum,
		b.cname b_cname,b.city b_city,b.snum b_snum
	from customers c, customers b
    where c.snum = b.snum # include self to self customers fore once Salespeople
    and c.cname <> b.cname; # not null if more than once customers

/*# 
c_cname, 	c_city, 	c_snum, b_cname, 	b_city, 	b_snum
'Clemens', 	'London', 	'1001', 'Hoffman', 	'London', 	'1001'
'Grass', 	'Berlin', 	'1002', 'Liu', 		'San Jose', '1002'
'Liu', 		'San Jose', '1002', 'Grass', 	'Berlin', 	'1002'
'Hoffman', 	'London', 	'1001', 'Clemens', 	'London', 	'1001'
*/
# answer with s.sname  with 'bind - in' :
select s.sname s_sname
	from salespeople s
    where s.snum in (
		select c.snum c_snum
			from customers c, customers b
			where c.snum = b.snum # include self to self customers fore once Salespeople
			and c.cname <> b.cname # not null if more than once customers
    );
/*# 
s_sname
'Peel'
'Serres'
*/

# (bind - exist) solution with s.sname :
select s.sname s_sname
	from salespeople s
    where exists (
		select c.snum c_snum
			from customers c, customers b
			where c.snum = b.snum # include self to self customers fore once Salespeople
			and c.cname <> b.cname # not null if more than once customers
            and c.snum = s.snum # check fore exists
            );
            
            
            
# (subquery - exist) solution without s.sname only c.sname :
select c.cname c_cname,c.city c_city,c.snum c_snum,
		b.cname b_cname,b.city b_city,b.snum b_snum
	from customers c, customers b
    where c.snum = b.snum
    and c.cname <> b.cname;
    
select distinct c.snum 
	from customers c
    where exists (
    select b.snum 
    from customers b
	where	c.snum = b.snum
    and c.cnum <> b.cnum
    );
/*# 
snum
'1001'
'1002'
*/

# NON EXISTS
select distinct c.snum 
	from customers c
    where NOT exists (
    select b.snum 
    from customers b
	where	c.snum = b.snum
    and c.cnum <> b.cnum
    );
/*# 
snum
'1003'
'1004'
'1007'
*/

# subquery in subquery example 

SELECT *
FROM Salespeople first
WHERE EXISTS
( SELECT *
FROM Customers second
WHERE first.snum=second.snum
AND 1 <
( SELECT COUNT(*)
FROM Orders
WHERE Orders.cnum=
second.cnum ));

## subsubquery
select count(*)
from orders o
group by o.cnum; # if c.cnum from outer loop => grouping is o.cnum = c.cnum
/*# 
count(*)
'2'
'1'
'1'
'1'
'2'
'2'
'1'
*/

select snum # search in customers but only snum (sname only in Salespeople)
	from customers c
	where  1 < (
		select count(*)
			from orders o
			where o.cnum = c.cnum # if c.cnum from outer loop => grouping is o.cnum = c.cnum
	);
/*# 
snum
'1002'
'1001'
'1007'
*/

select sname # search in salespeople accoding snum from customers
	from salespeople s
    where s.snum in ( # onwards ' s.snum IN' => 'EXIST with bind where s.snum = c.snum'
		select snum # search in customers but only snum (sname only in Salespeople)
			from customers c
			where  1 < (
				select count(*)
					from orders o
					where o.cnum = c.cnum # if c.cnum from outer loop => grouping is o.cnum = c.cnum
						)
					);
/*# 
sname
'Peel'
'Serres'
'Rifkin'
*/

select sname # search in salespeople accoding snum from customers
	from salespeople s
    where exists ( # onwards ' s.snum IN' => 'EXIST with bind where s.snum = c.snum'
		select snum # search in customers but only snum (sname only in Salespeople)
			from customers c
			where s.snum = c.snum
            and 1 < (
				select count(*)
					from orders o
					where o.cnum = c.cnum # if c.cnum from outer loop => grouping is o.cnum = c.cnum
						)
					);
                    
# Напишите запрос который бы использовал оператор EXISTS
# для извлечения всех продавцов которые имеют заказчиков с оценкой 300

## 1. Как бы вы решили предыдущую проблему используя обьединение?
# subquery WITH bind in KEY! (snum)
select c.cnum , c.snum
	from customers c
    where c.rating = 300;
/*# 
cnum, 	snum
'2004', '1002'
'2008', '1007'
*/    
# bind solution
select *
	from salespeople s
    where exists (
    select  c.snum
		from customers c
		where c.rating = 300
			and c.snum = s.snum
    );

# 2.Напишите запрос использующий оператор EXISTS который выберет всех продавцов 
# с заказчиками размещенными в их городах которые ими не обслуживаются ('at least one' => EXSISTS).

# subquery :
## step construct $1
select s.snum s_snum,s.sname s_sname,s.city s_city, s.comm s_comm,
		c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum
	from salespeople s , customers c
    where s.snum = c.snum;
   # and c.city <> 'London' # from external loop Salespeople.city = 'London'
   # and s.snum = 1001 # from external loop Salespeople.snum = 1001 
/*#
s_snum, s_sname, 	s_city, 	s_comm, 	c_cnum, c_cname, 	c_city, 	c_rating, c_snum
'1001', 'Peel', 	'London', 	'0.12', 	'2001', 'Hoffman', 	'London', 	'100', '1001'
'1003', 'Axelrod', 	'New York', '0.1', 		'2002', 'Giovanni', 'Rome', 	'200', '1003'
'1002', 'Serres', 	'San Jose', '0.13', 	'2003', 'Liu', 		'San Jose', '200', '1002'
'1002', 'Serres', 	'San Jose', '0.13', 	'2004', 'Grass', 	'Berlin', 	'300', '1002'
'1001', 'Peel', 	'London', 	'0.12', 	'2006', 'Clemens', 	'London', 	'100', '1001'
'1004', 'Motika', 	'London', 	'0.11', 	'2007', 'Pereira', 	'Rome', 	'100', '1004'
'1007', 'Rifkin', 	'Barcelona', '0.15', 	'2008', 'Cisneros', 'San Jose', '300', '1007'
*/

## step construct $2
select s.snum s_snum,s.sname s_sname,s.city s_city, s.comm s_comm,
		c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum
	from salespeople s , customers c
    where s.snum = c.snum
		and c.city <> 'London'; # from external loop Salespeople.city = 'London'
		# and s.snum = 1001 # from external loop Salespeople.snum = 1001 
/*# 
s_snum, s_sname, 	s_city, 	s_comm, c_cnum, c_cname, 	c_city, 	c_rating, c_snum
'1003', 'Axelrod', 	'New York', '0.1', 	'2002', 'Giovanni', 'Rome', 	'200', '1003'
'1002', 'Serres', 	'San Jose', '0.13', '2003', 'Liu', 		'San Jose', '200', '1002'
'1002', 'Serres', 	'San Jose', '0.13', '2004', 'Grass', 	'Berlin', 	'300', '1002'
'1004', 'Motika', 	'London', 	'0.11', '2007', 'Pereira', 	'Rome', 	'100', '1004'
'1007', 'Rifkin', 	'Barcelona','0.15', '2008', 'Cisneros', 'San Jose', '300', '1007'
*/

## step construct $3
select s.snum s_snum,s.sname s_sname,s.city s_city, s.comm s_comm,
		c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum
	from salespeople s , customers c
    where s.snum = c.snum
		and c.city <> 'London' # from external loop Salespeople.city = 'London'
		and s.snum = 1001; # from external loop Salespeople.snum = 1001

# calculate NULL => thit true result
## step construct final
select *
	from salespeople s , customers c
    where s.snum = c.snum
		and c.city <> 'London' # from external loop Salespeople.city = 'London'
		and s.snum = 1001; # from external loop Salespeople.snum = 1001

# answer WITH bind in KEY! query with exists subquery :
select *
	from salespeople ext
    where exists (
    select *
		from salespeople s , customers c
		where s.snum = c.snum
			and c.city <> ext.city # from external loop Salespeople.city = 'London'
			and s.snum = ext.snum # from external loop Salespeople.snum = 1001
    );
    
# subquery directly compear (= city) 'в их городах' and ( <> snum) 'ими не обслуживаются'
select s.snum s_snum,s.sname s_sname,s.city s_city, s.comm s_comm,
		c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum 
	from salespeople s,customers c
    ## outer loop s.snum = 1001 , s.city = London
    where c.city = 'London'
    and c.snum <> 1001;
# NULL 'at least one' fits on demand exists operator 

# ansver (directly compear)    

select *
	from salespeople s
    where exists (
		select *
        from customers c
        where c.city = s.city
			and c.snum <> s.snum
    );
/*# 
snum, 	sname, 		city, 		comm
'1004', 'Motika', 	'London', 	'0.11'
'1002', 'Serres', 	'San Jose', '0.13'
*/

# 3.Напишите запрос который извлекал бы из таблицы Заказчиков каждого заказчика
# назначенного к продавцу который в данный момент имеет по крайней мере еще одного заказчика
# (кроме заказчика которого вы выберете ) с порядками в таблице Порядков
# (подсказка: это может быть похоже на структуру в примере с нашим трех-уровневым подзапросом ).

# shema :
# select Customers(c.cnum = 2001 , c.snum = 1001)
#		 query to Orders if exists (o.snum = 1001 , o.cnum <> 2001)

select *
	from customers c
	where exists (
		select *
			from orders o
            where o.snum = c.snum
				and o.cnum <> c.cnum			
    );
    
