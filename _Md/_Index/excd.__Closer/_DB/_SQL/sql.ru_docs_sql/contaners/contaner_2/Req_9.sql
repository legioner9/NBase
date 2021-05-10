Use sqlru_book;

# Related SubQuery

#SubQuery :
select *
			from orders _in , customers _out
            where _out.cnum = _in.cnum; # simple bind
/*
3001	18.69	10/03/1990	2008	1007	2008	Cisneros	San Jose	300	1007
3002	1900.1	10/03/1990	2007	1004	2007	Pereira	Rome	100	1004
3003	767.19	10/03/1990	2001	1001	2001	Hoffman	London	100	1001
3005	5160.45	10/03/1990	2003	1002	2003	Liu	San Jose	200	1002
3006	1098.16	10/03/1990	2008	1007	2008	Cisneros	San Jose	300	1007
3007	75.75	10/04/1990	2004	1002	2004	Grass	Berlin	300	1002
3008	4723	10/05/1990	2006	1001	2006	Clemens	London	100	1001
3009	1713.23	10/04/1990	2002	1003	2002	Giovanni	Rome	200	1003
3010	1309.95	10/06/1990	2004	1002	2004	Grass	Berlin	300	1002
3011	9891.88	10/06/1990	2006	1001	2006	Clemens	London	100	1001
*/

select *
	from customers _out
	where '10/03/1990' in (
		select odate
			from orders _in
            where _out.cnum = _in.cnum
		);

/*
# cnum, 	cname, 		city, 		rating, snum
'2008', 	'Cisneros', 'San Jose', '300', '1007'
'2007', 	'Pereira', 	'Rome', 	'100', '1004'
'2001', 	'Hoffman', 	'London', 	'100', '1001'
'2003', 	'Liu', 		'San Jose', '200', '1002'

*/

# Reconstruction :
SELECT snum, sname
FROM Salespeople main
WHERE 1 <
( SELECT COUNT(*)
FROM Customers
WHERE snum=main.snum ) ; # aggrigate predicate

# SubQuery :
SELECT snum , COUNT(snum) _count # ! issuing sring but not scalar
FROM Customers
group by snum; # aggrigate group by
/*
# snum, _count
'1001', '2'
'1003', '1'
'1002', '2'
'1004', '1'
'1007', '1'
*/
select main.sname
	from salespeople main
    where 1<(
		select count(snum)
        from customers
        where snum = main.snum
    );

/*
# sname
'Peel'
'Serres'
*/

## inspect PKey
### Reconstruction

SELECT *
	FROM Orders main
	WHERE NOT snum =( 
		SELECT snum
		FROM Customers
		WHERE cnum=main.cnum ); # if Customers.cnum = Orders.cnum ?=> Customers.snum = Orders.cnum
        ## nb = check only if every Customers.cnum = Orders.cnum
/*
# onum,  amt, 		odate, 			cnum, 	snum
'3001', '18.69', 	'10/03/1990', 	'2008', '1007'
'3002', '1900.1', 	'10/03/1990', 	'2007', '1004'
'3003', '767.19', 	'10/03/1990', 	'2001', '1001'
'3005', '5160.45', 	'10/03/1990', 	'2003', '1002'
'3006', '1098.16', 	'10/03/1990', 	'2008', '10077'
'3007', '75.75', 	'10/04/1990', 	'2004', '1002'
'3008', '4723', 	'10/05/1990', 	'2006', '1001'
'3009', '1713.23', 	'10/04/1990', 	'2002', '1003'
'3010', '1309.95', 	'10/06/1990', 	'2004', '1002'
'3011', '9891.88', 	'10/06/1990', 	'2006', '1001'
*/

## inspect self
### Reconstruction

SELECT *
FROM Orders out_
WHERE amt >
( SELECT AVG(amt)
FROM Orders in_
WHERE in_.cnum=out_.cnum );

# SubQuery :
select cnum , avg(amt)
	from orders
    group by cnum; # predicate group by

/*
# cnum, avg(amt)
'2008', '558.4250173568726'
'2007', '1900.0999755859375'
'2001', '767.1900024414062'
'2003', '5160.4501953125'
'2004', '692.8499755859375'
'2006', '7307.43994140625'
'2002', '1713.22998046875'
*/

select * 
	from orders out_
    where amt >= (
    select avg(amt)
		from orders in_
        where in_.cnum = out_.cnum
    );
/*# 
onum, 	amt, 		odate, 			cnum, 	snum
'3002', '1900.1', 	'10/03/1990', 	'2007', '1004'
'3003', '767.19', 	'10/03/1990', 	'2001', '1001'
'3005', '5160.45', 	'10/03/1990', 	'2003', '1002'
'3006', '1098.16', 	'10/03/1990', 	'2008', '1007'
'3009', '1713.23', 	'10/04/1990', 	'2002', '1003'
'3010', '1309.95', 	'10/06/1990', 	'2004', '1002'
'3011', '9891.88', 	'10/06/1990', 	'2006', '1001'
*/

SELECT odate, SUM(amt)
FROM Orders a
GROUP BY odate
HAVING SUM(amt) > ( # in block having amt only in range of group   
	SELECT 2000.00 + MAX(amt)
	FROM Orders b
	WHERE a.odate=b.odate 
    );
 
# SubQuery :
select 2000 + max(amt) amt_2 , odate
	from orders
    group by odate;
    
/*# 
amt_2, 				odate
'7160.4501953125', 	'10/03/1990'
'3713.22998046875', '10/04/1990'
'6723', 			'10/05/1990'
'11891.8798828125', '10/06/1990'
*/

# Query without having :
SELECT odate, SUM(amt)
FROM Orders a
GROUP BY odate;

/*# 
odate, 			SUM(amt)
'10/03/1990', 	'8944.590208053589'
'10/04/1990', 	'1788.97998046875'
'10/05/1990', 	'4723'
'10/06/1990', 	'11201.829833984375'
*/
# in total :
SELECT odate, SUM(amt)
FROM Orders a
GROUP BY odate
HAVING SUM(amt) > ( # in block having amt only in range of group   
	SELECT 2000.00 + MAX(amt)
	FROM Orders b
	WHERE a.odate=b.odate 
    );
/*
# 
odate, 			SUM(amt)
'10/03/1990', 	'8944.590208053589'
*/

# 1.Напишите команду SELECT использующую соотнесенный подзапрос,
# которая выберет имена и номера всех заказчиков
# с максимальными для их городов оценками

# subquery
select cnum , cname , city , max(rating)
	from customers 
    group by city;
    
# main query
select cnum , cname , city , rating
	from customers a
    where a.rating in (
    select max(rating)
		from customers b
        where b.city = a.city
    );
    
/*# 
cnum, 	cname, 		city, 		rating
'2001', 'Hoffman', 	'London', 	'100'
'2002', 'Giovanni', 'Rome', 	'200'
'2004', 'Grass', 	'Berlin',	'300'
'2006', 'Clemens', 	'London', 	'100'
'2008', 'Cisneros', 'San Jose', '300'
*/
    
# 2.Напишите два запроса которые выберут всех продавцов
# (по их имени и номеру ) которые в своих городах имеют заказчиков
# которых они не обслуживают. Один запрос - с использованием обьединения
# и один - с соотнесенным подзапросом. Которое из решений будет более
# изящным? (Подсказка: один из способом это сделать, состоит в том,
# чтобы находить всех заказчиков не обслуживаемых данным продавцом
# и определить, находится ли каждый из них в городе продавца.)

# subquery:
select s.snum s_snum,s.sname s_sname,s.city s_city, s.comm s_comm,
		c.cnum c_cnum,c.cname c_cname,c.city c_city,c.rating c_rating,c.snum c_snum
	from customers c, salespeople s 
    where s.snum = c.snum;

/*# 
s_snum, s_sname, 	s_city, 	s_comm, 	c_cnum, c_cname, 	c_city, 	c_rating, 	c_snum
'1001', 'Peel', 	'London', 	'0.12', 	'2001', 'Hoffman', 	'London', 	'100', 		'1001'
'1003', 'Axelrod',	'New York', '0.1', 		'2002', 'Giovanni', 'Rome', 	'200', 		'1003'
'1002', 'Serres', 	'San Jose', '0.13', 	'2003', 'Liu', 		'San Jose', '200', 		'1002'
'1002', 'Serres', 	'San Jose', '0.13', 	'2004', 'Grass', 	'Berlin', 	'300', 		'1002'
'1001', 'Peel', 	'London', 	'0.12', 	'2006', 'Clemens', 	'London', 	'100', 		'1001'
'1004', 'Motika',	'London', 	'0.11', 	'2007', 'Pereira', 	'Rome', 	'100', 		'1004'
'1007', 'Rifkin', 	'Barcelona', '0.15', 	'2008', 'Cisneros', 'San Jose', '300', 		'1007'
*/
    
# находить всех заказчиков не обслуживаемых данным продавцом
# Main SubQuery (reverse to c.city)
select  c.cnum c_cnum ,c.cname c_cname,c.city c_city
	from customers c
    where c.snum <> 1001  # <> Salespeople.snum
    and c.city <> 'London'; # <> Salespeople.city
/*# 
c_cnum, c_cname, 	c_city
'2002', 'Giovanni', 'Rome'
'2003', 'Liu', 		'San Jose'
'2004', 'Grass', 	'Berlin'
'2007', 'Pereira', 	'Rome'
'2008', 'Cisneros', 'San Jose'
*/

select  c.cnum c_cnum ,c.cname c_cname,c.city c_city
	from customers c
    where c.snum <> 1001  # <> Salespeople.snum
    and c.city = 'London'; # <> Salespeople.city
# Calculate result fore Salespeople.snum = 1001 => Null 

# bind variant
select distinct s.snum , s.sname , s.city
	from customers c , salespeople s
    where c.snum <> s.snum 
    and c.city = s.city ;# analog where ... in
/*# 
snum, 	sname, 		city
'1004', 'Motika', 	'London'
'1002', 'Serres', 	'San Jose'
*/

# subquery variant
select distinct s.snum , s.sname , s.city
	from salespeople s
	where s.city in (
		select c.city
        from customers c 
        where c.snum <> s.snum
    );
/*# 
snum, 	sname, 		city
'1004', 'Motika', 	'London'
'1002', 'Serres', 	'San Jose'
*/
    