Use sqlru_book;

# in predicate

select * 
	from orders
    where snum = ( # ! if only monosemantic query, but crach !
    select snum
		from salespeople
        where sname = 'Motika' # salespeople.snum = 1004
    );
    
/*
onum, 	amt, 	odate, 		cnum, 	snum
3002	1900.1	10/03/1990	2007	1004
*/

# with DISTINCT
# all customers relate to Salespeople.snum = 2001
#### SecKey

select distinct snum # DISTINCT for sure - in this case snum - SecKey in Orders
	from orders
	where cnum = 2001;
/*calc : 1001 */

select * 
	from orders
    where snum = (
    select distinct snum # SecKey in Orders - not definitely!
		from orders
        where cnum = 2001 
    );

/*
onum, 	amt, 	odate, 		cnum, 	snum
3003	767.19	10/03/1990	2001	1001
3008	4723	10/05/1990	2006	1001
3011	9891.88	10/06/1990	2006	1001				
*/

#### PryKey

select * 
	from orders
    where snum = (
    select distinct snum # PryKey in salespeople - strong definitely
		from salespeople
        where sname = 'Peel' 
    );

## Aggrigate

 SELECT AVG (amt)
FROM Orders
WHERE odate='10/04/1990' ;

/*
	AVG (amt)
	894.489990234375
*/

SELECT *
FROM Orders
WHERE amt >
( SELECT AVG (amt) # Singl agg func without group by !
FROM Orders
WHERE odate='10/04/1990' );


/*
onum, 	amt, 	odate, 		cnum, 	snum
3002	1900.1	10/03/1990	2007	1004
3005	5160.45	10/03/1990	2003	1002
3006	1098.16	10/03/1990	2008	1007
3008	4723	10/05/1990	2006	1001
3009	1713.23	10/04/1990	2002	1003
3010	1309.95	10/06/1990	2004	1002
3011	9891.88	10/06/1990	2006	1001				
*/

# )))

SELECT AVG (rating)
FROM customers
WHERE city="London";

## In WITH ... IN

SELECT *
FROM Orders
WHERE snum IN # one or many results expected
( SELECT snum
FROM Salespeople
WHERE city="LONDON" );

/*
3002	1900.1	10/03/1990	2007	1004
3003	767.19	10/03/1990	2001	1001
3008	4723	10/05/1990	2006	1001
3011	9891.88	10/06/1990	2006	1001
				
*/

select o.onum , o.amt , o.odate , o.cnum , o.snum
	from Salespeople s, Orders o
    where o.snum = s.snum #! only with initial binding Salespeople Orders
		and s.city = "LONDON";

/*

3002	1900.1	10/03/1990	2007	1004
3003	767.19	10/03/1990	2001	1001
3008	4723	10/05/1990	2006	1001
3011	9891.88	10/06/1990	2006	1001
				
*/

## with HAVING predicate

SELECT rating, COUNT(DISTINCT cnum )
FROM Customers
GROUP BY rating
HAVING rating >
( SELECT AVG (rating)
FROM Customers
WHERE city='San Jose');

# 1.Напишите запрос, который бы использовал подзапрос для получениявсех порядков для заказчика с именем Cisneros
# Предположим, что вы не знаете номера этого заказчика, указываемого в поле cnum.

# SubQuery :
select cnum # PK for customers => '=' possible predicate
	from customers 
    where cname = 'Cisneros';
# calc : 2008

select * 
	from orders
    where cnum = (
    # SubQuery :
select cnum # PK for customers => '=' possible predicate
	from customers 
	where cname = 'Cisneros'
	# calc : 2008
    );
    
# 2.
SELECT AVG (amt) 
			FROM Orders;
/*
AVG (amt)
'2665.840002250671'
*/


SELECT DISTINCT cname, rating 
	  FROM Customers, Orders 
	  WHERE amt > 
		(SELECT AVG (amt) 
			FROM Orders) 
		AND Orders.cnum = Customers.cnum; 
        
## Analise :

# first : bind or Orders Customers

select c.cname ,o.amt , c.rating
	from Orders o, Customers c
    where amt > 
        (SELECT AVG (amt) 
			FROM orders)
		and c.cnum = o.cnum;
        
/*
cname, rating
Liu		200
Clemens	100
Clemens	100
*/

# reduce to answer :
select distinct c.cname ,
		# o.amt , 
        c.rating
	from Orders o, Customers c
    where amt > 
        (SELECT AVG (amt) 
			FROM orders)
		and c.cnum = o.cnum;
 /*
 cname, rating
 Liu	200
Clemens	100
 */   
 
# 3. Напишите запрос который бы выбрал общую сумму всех приобретений в порядках для каждого продавца,
# у которого эта общая сумма больше чем сумма наибольшего порядка в таблице.

select max(amt)
	from orders;
/*
# max(amt)
'9891.88'
*/

select snum , sum(amt) as sm
	from orders
    group by snum;
#   having sm > (
#		select max(amt)
#			from orders
#		);

/*
snum, 	sm
1007	1116.8500347137451
1004	1900.0999755859375
1001	15382.069885253906
1002	6546.150146484375
1003	1713.22998046875
*/

select snum , sum(amt) as sm
	from orders
    group by snum
   having sm > (
		select max(amt)
			from orders
		);
        
/*
	snum	sm
	1001	15382.069885253906
*/