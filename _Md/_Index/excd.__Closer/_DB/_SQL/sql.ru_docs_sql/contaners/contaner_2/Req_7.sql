Use sqlru_book;

select first.cnum as first_cnum ,
		first.rating as first_rating,
		first.cname as first_cname, 
		second.cname as second_cname
	from customers as first , customers as second
	where first.cnum = second.cnum;

# algebr self multyplay of table at index

 /*
 identity transformation
first_cnum, first_rating, 	first_cname, 	second_cname
2001		100				Hoffman			Hoffman
2002		200				Giovanni		Giovanni
2003		200				Liu				Liu
2004		300				Grass			Grass
2006		100				Clemens			Clemens
2007		100				Pereira			Pereira
2008		300				Cisneros		Cisneros
 */
 
select first.cnum as first_cnum ,
		first.rating as first_rating,
		first.cname as first_cname, 
		second.cname as second_cname
	from customers as first , customers as second
	where first.rating = second.rating 
		and first.rating > 100;

/*
first_cnum, first_rating, 	first_cname, 	second_cname
2002		200				Giovanni		Giovanni
2003		200				Liu				Giovanni
2002		200				Giovanni		Liu
2003		200				Liu				Liu
2004		300				Grass			Grass
2008		300				Cisneros		Grass
2004		300				Grass			Cisneros
2008		300				Cisneros		Cisneros

count rate(200) = 2 => count rate to rate(200) = 2*2 = 4 
*/

select first.cnum as first_cnum ,
		first.rating as first_rating,
		first.cname as first_cname, 
		second.cname as second_cname
	from customers as first , customers as second
	where first.rating = second.rating 
		and first.rating = 100;

/*
first_cnum, first_rating, 	first_cname, 	second_cname
2001		100				Hoffman			Hoffman
2006		100				Clemens			Hoffman
2007		100				Pereira			Hoffman
2001		100				Hoffman			Clemens
2006		100				Clemens			Clemens
2007		100				Pereira			Clemens
2001		100				Hoffman			Pereira
2006		100				Clemens			Pereira
2007		100				Pereira			Pereira

count rate(100) = 3 => count rate to rate(100) = 3*3 = 9
*/

# Eliminate redundancy
## Assimmetric predicate

select first.cnum as first_cnum ,
		first.rating as first_rating,
		first.cname as first_cname, 
		second.cname as second_cname
	from customers as first , customers as second
	where first.rating = second.rating 
		and first.rating = 100
        and first.cname < second.cname;
        
/*
first_cnum, first_rating, 	first_cname, 	second_cname
2006		100				Clemens			Hoffman
2001		100				Hoffman			Pereira
2006		100				Clemens			Pereira
*/

## Bonding predicate

select first.cnum as first_cnum ,
		first.rating as first_rating,
		first.cname as first_cname, 
		second.cname as second_cname
	from customers as first , customers as second
	where first.rating = second.rating 
		and first.rating = 100
        and first.cname <> second.cname;

/*
first_cnum, first_rating, 	first_cname, 	second_cname
2006		100				Clemens			Hoffman
2007		100				Pereira			Hoffman
2001		100				Hoffman			Clemens
2007		100				Pereira			Clemens
2001		100				Hoffman			Pereira
2006		100				Clemens			Pereira
*/

# Error checking
## SelfConsistency

# exaple : cnum = snum in Orders
# Error as non empty result table

select first.onum as first_onum ,
		first.cnum as first_cnum,
		first.snum as first_snum, 
		second.cnum as second_cnum,
        second.snum as second_snum
	from orders as first , orders as second
	where first.cnum = second.cnum 
		and first.snum <> second.snum;
        
# IS EMPTY not error

# Analises as SelfQuery
# Full recount a + b

select b.cnum as b_cnum , 
			b.cname as b_cname ,
			a.cnum as a_cnum , 
			a.cname as a_cname ,
			a.city as a_city , 
			a.snum as a_snum ,
			b.snum as b_snum
	from customers a ,customers b
    where b.city = a.city;

/*
b_num, 	b_cname, 	a_cnum, a_cname, 	a_city, 	a_snum, b_snum
2001	Hoffman		2001	Hoffman		London		1001	1001
2001	Hoffman		2006	Clemens		London		1001	1001
2002	Giovanni	2002	Giovanni	Rome		1003	1003
2002	Giovanni	2007	Pereira		Rome		1004	1003
2003	Liu			2003	Liu			San Jose	1002	1002
2003	Liu			2008	Cisneros	San Jose	1007	1002
2004	Grass		2004	Grass		Berlin		1002	1002
2006	Clemens		2001	Hoffman		London		1001	1001
2006	Clemens		2006	Clemens		London		1001	1001
2007	Pereira		2002	Giovanni	Rome		1003	1004
2007	Pereira		2007	Pereira		Rome		1004	1004
2008	Cisneros	2003	Liu			San Jose	1002	1007
2008	Cisneros	2008	Cisneros	San Jose	1007	1007
*/
        
# fix a => Full recount b
# answer query:		

select b.cnum as b_cnum , 
			b.cname as b_cname ,
			a.cnum as a_cnum , 
			a.cname as a_cname ,
			a.city as a_city , 
			a.snum as a_snum ,
			b.snum as b_snum
	from customers a ,customers b
    where b.city = a.city
		and a.snum = 1002;

/*
b_num, 	b_cname, 	a_cnum, a_cname, 	a_city, 	a_snum, b_snum
2003	Liu			2003	Liu			San Jose	1002	1002
2004	Grass		2004	Grass		Berlin		1002	1002
2008	Cisneros	2003	Liu			San Jose	1002	1007
*/

# final fields answer query:	 

SELECT 
    b.cnum AS b_cnum,
    b.cname AS b_cname,
    a.city AS a_city,
    a.snum AS a_snum
FROM
    customers a,
    customers b
WHERE
    b.city = a.city AND a.snum = 1002;

/*
b_cnum, b_cname, 	a_city, 	a_snum
2003	Liu			San Jose	1002
2004	Grass		Berlin		1002
2008	Cisneros	San Jose	1002
*/

# найти все пары заказчиков обслуживаемых одним продавцом

SELECT sname,
		Salespeople.snum,
		first.cname as f_cname ,
		second.cname as s_cname
FROM Customers first, Customers second, Salespeople
WHERE first.snum=second.snum # inner bind instanse Customers to snum(Salespeople)
AND Salespeople.snum=first.snum;  # couple Customers with same Salespeople;
# AND first.cnum < second.cnum;

/*
sname, 	snum, 	f_cname, 	s_cname
Peel	1001	Hoffman		Hoffman
Peel	1001	Clemens		Hoffman
Axelrod	1003	Giovanni	Giovanni
Serres	1002	Liu			Liu
Serres	1002	Grass		Liu
Serres	1002	Liu			Grass
Serres	1002	Grass		Grass
Peel	1001	Hoffman		Clemens
Peel	1001	Clemens		Clemens
Motika	1004	Pereira		Pereira
Rifkin	1007	Cisneros	Cisneros
*/

## Assimmetric predicate

SELECT sname,
		Salespeople.snum,
		first.cname as f_cname ,
		second.cname as s_cname
FROM Customers first, Customers second, Salespeople
WHERE first.snum=second.snum # inner bind instanse Customers to snum(Salespeople)
AND Salespeople.snum=first.snum  # couple Customers with same Salespeople;
AND first.cnum < second.cnum; ## Assimmetric predicate del selfpair and duplicate  

/*
sname, 	snum, 	f_cname, 	s_cname
Peel	1001	Hoffman		Clemens
Serres	1002	Liu			Grass
*/

# 1. Напишите запрос который бы вывел все пары продавцов живущих в одном и том же городе
# Исключите комбинации продавцов с ними же, а также дубликаты строк выводимых в обратным порядке.

select a.sname a_sname, 
		b.sname b_sname,
        a.city
	from salespeople a ,
			salespeople b 
    where a.city = b.city; # inner bind instanse Salespeople(citi)

/*
a_sname, 	b_sname, 	city
Peel		Peel		London
Motika		Peel		London
Serres		Serres		San Jose
Axelrod		Axelrod		New York
Peel		Motika		London
Motika		Motika		London
Rifkin		Rifkin		Barcelona
E_uyt		E_uyt		Tuo%io
*/

select a.sname a_sname, 
		b.sname b_sname,
        a.city a_city
	from salespeople a ,
			salespeople b 
    where a.city = b.city # inner bind instanse Salespeople(citi)
		and a.sname < b.sname ; ## Assimmetric predicate filer
    
/*
a_sname, 	b_sname, 	a_city
Motika		Peel		London
*/

# 2. Напишите запрос который вывел бы все пары порядков по данным заказчикам, именам этих заказчиков
# и исключал дубликаты из вывода, как в предыдущем вопросе

select c.cname , a.cnum , a.onum , b.onum
	from orders a, orders b , customers c
    where a.cnum = b.cnum
		and a.cnum = c.cnum;
/*
cname, 		cnum, 	onum, 	onum
Cisneros	2008	3001	3001
Cisneros	2008	3006	3001
Pereira		2007	3002	3002
Hoffman		2001	3003	3003
Liu			2003	3005	3005
Cisneros	2008	3001	3006
Cisneros	2008	3006	3006
Grass		2004	3007	3007
Grass		2004	3010	3007
Clemens		2006	3008	3008
Clemens		2006	3011	3008
Giovanni	2002	3009	3009
Grass		2004	3007	3010
Grass		2004	3010	3010
Clemens		2006	3008	3011
Clemens		2006	3011	3011
*/

select c.cname c_name ,
		a.cnum _a_cnum , 
        a.onum a_onum, 
        b.onum
	from orders a, orders b , customers c
    where a.cnum = b.cnum # inner bind orders for name of customers
		and a.cnum = c.cnum # out bind a_tables orders and customers
        and a.onum < b.onum; # Assimetric predicate

/*
cname, 		cnum, 	onum, 	onum
Cisneros	2008	3001	3006
Grass		2004	3007	3010
Clemens		2006	3008	3011
*/

# 3.Напишите запрос который вывел бы имена(cname) и города(city) всех заказчиков с такой же оценкой(rating) как у Hoffmanа.
# Напишите запрос использующий поле cnum Hoffmanа а не его оценку, так чтобы оно могло быть использовано если его оценка вдруг изменится.

select a.cname a_cname, 
		a.rating a_rating,
        b.cname b_cname, 
		b.rating b_rating
	from customers a, customers b
    where a.rating = b.rating; # inner bind
#		and b.cname = 'Hoffman';

/*
a_cname, 	a_rating, 	b_cname, 	b_rating
Hoffman		100			Hoffman		100
Clemens		100			Hoffman		100
Pereira		100			Hoffman		100
Giovanni	200			Giovanni	200
Liu			200			Giovanni	200
Giovanni	200			Liu			200
Liu			200			Liu			200
Grass		300			Grass		300
Cisneros	300			Grass		300
Hoffman		100			Clemens		100
Clemens		100			Clemens		100
Pereira		100			Clemens		100
Hoffman		100			Pereira		100
Clemens		100			Pereira		100
Pereira		100			Pereira		100
Grass		300			Cisneros	300
Cisneros	300			Cisneros	300
*/

select a.cname a_cname, 
		#a.rating a_rating,
        a.city a_city
        #b.cname b_cname, 
		#b.rating b_rating
	from customers a, customers b
    where a.rating = b.rating # inner bind
		and a.cname <> 'Hoffman'
		and b.cname = 'Hoffman'; # Bonding predicate 

/*
a_cname, 	a_city
Clemens		London
Pereira		Rome
*/

# b.cname = 'Hoffman' <=> b.cnum = 2001

select a.cname a_cname, 
		#a.rating a_rating,
        a.city a_city
        #b.cname b_cname, 
		#b.rating b_rating
	from customers a, customers b
    where a.rating = b.rating # inner bind
		# and a.cname <> 'Hoffman'
		and b.cnum = 2001; # Bonding predicate 

/*
a_cname, 	a_city
Hoffman		London
Clemens		London
Pereira		Rome
*/
