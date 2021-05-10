Use sqlru_book;

##! Predicate binding 
# select customers.cname , salespeople.sname , salespeople.city
select *
	from customers , salespeople
    where salespeople.city = customers.city;
    
/*
cnum, cname, city, rating, snum, snum, sname, city, comm
2001	Hoffman		London		100	1001	1001	Peel		London	0.12
2001	Hoffman		London		100	1001	1004	Motika		London	0.11
2003	Liu	San 	Jose		200	1002	1002	Serres		San Jose	0.13
2006	Clemens		London		100	1001	1001	Peel		London	0.12
2006	Clemens		London		100	1001	1004	Motika		London	0.11
2008	Cisneros	San Jose	300	1007	1002	Serres		San Jose	0.13
*/

##! Integrity binding

select customers.cname , salespeople.sname , salespeople.city
# select *
	from customers , salespeople
    where salespeople.city = customers.city;
    
/*
cname, sname, city
Hoffman		Peel	London
Hoffman		Motika	London
Liu			Serres	San Jose
Clemens		Peel	London
Clemens		Motika	London
Cisneros	Serres	San Jose
*/

select salespeople.sname , customers.cname
	from salespeople , customers
    where salespeople.snum = customers.snum;
    
/*
sname, cname
Peel	Hoffman
Axelrod	Giovanni
Serres	Liu
Serres	Grass
Peel	Clemens
Motika	Pereira
Rifkin	Cisneros
*/

# мы хотим найти все порядки заказчиков не находящихся в тех городах где находятся их продавцы

# first all to all accoding integrity data :

select orders.onum ,customers.cname , salespeople.sname , 
		customers.city as cus_city , 
        salespeople.city as sale_city
 from orders ,salespeople , customers
 where customers.cnum = orders.cnum
	and salespeople.snum = orders.snum;

/*
onum, 	cname, 		sname, 		cus_city, 	sale_city
3001	Cisneros	Rifkin		San Jose	Barcelona
3002	Pereira		Motika		Rome		London
3003	Hoffman		Peel		London		London
3005	Liu			Serres		San Jose	San Jose
3006	Cisneros	Rifkin		San Jose	Barcelona
3007	Grass		Serres		Berlin		San Jose
3008	Clemens		Peel		London		London
3009	Giovanni	Axelrod		Rome		New York
3010	Grass		Serres		Berlin		San Jose
3011	Clemens		Peel		London		London
*/

# exclud equal city accoding condition :

select orders.onum ,customers.cname , salespeople.sname , 
		customers.city as cus_city , 
        salespeople.city as sale_city
 from orders ,salespeople , customers
 where customers.cnum = orders.cnum
	and salespeople.snum = orders.snum
    and salespeople.city <> customers.city;
    
/*
onum, 	cname, 		sname, 		cus_city, 	sale_city
3001	Cisneros	Rifkin		San Jose	Barcelona
3002	Pereira		Motika		Rome		London
3006	Cisneros	Rifkin		San Jose	Barcelona
3007	Grass		Serres		Berlin		San Jose
3009	Giovanni	Axelrod		Rome		New York
3010	Grass		Serres		Berlin		San Jose
*/
    
# 1. Напишите запрос который бы вывел список номеров порядков сопровождающихся именем заказчика который создавал эти порядки

select orders.onum , customers.cname 
	from customers , orders
    where customers.cnum = orders.cnum;
    
/*
onum, 	cname
3001	Cisneros
3002	Pereira
3003	Hoffman
3005	Liu
3006	Cisneros
3007	Grass
3008	Clemens
3009	Giovanni
3010	Grass
3011	Clemens
*/
    
# 2. Напишите запрос который бы выдавал имена продавца и заказчика для каждого порядка после номера порядков

select orders.onum , salespeople.sname , customers.cname 
	from salespeople , customers , orders
    where orders.snum = salespeople.snum
		and orders.cnum = customers.cnum;
        
/*
onum,   sname, 	cname
3001	Rifkin	Cisneros
3002	Motika	Pereira
3003	Peel	Hoffman
3005	Serres	Liu
3006	Rifkin	Cisneros
3007	Serres	Grass
3008	Peel	Clemens
3009	Axelrod	Giovanni
3010	Serres	Grass
3011	Peel	Clemens

*/

# 3.Напишите запрос который бы выводил всех заказчиков обслуживаемых продавцом с комиссионными выше 12%
# Выведите имя заказчика, имя продавца, и ставку комиссионных продавца.

select customers.cname , salespeople.sname , salespeople.comm
	from customers, salespeople
    where salespeople.snum = customers.snum
		and comm > .12;

/*
cname, 		sname, 	comm
Liu			Serres	0.13
Grass		Serres	0.13
Cisneros	Rifkin	0.15
*/

# 4.Напишите запрос который вычислил бы сумму
# комиссионных продавца для каждого порядка заказчика с оценкой выше 100

select orders.onum , orders.amt , customers.cname , salespeople.sname , salespeople.comm , customers.rating 
	from salespeople , customers , orders
    where salespeople.snum = orders.snum
    and customers.cnum = orders.cnum
    and customers.rating >100;

/*
onum, 	amt, 	cname, 		sname, 	comm, 	rating
3001	18.69	Cisneros	Rifkin	0.15	300
3005	5160.45	Liu			Serres	0.13	200
3006	1098.16	Cisneros	Rifkin	0.15	300
3007	75.75	Grass		Serres	0.13	300
3009	1713.23	Giovanni	Axelrod	0.1		200
3010	1309.95	Grass		Serres	0.13	300
*/


select orders.onum , orders.amt , customers.cname , salespeople.sname , salespeople.comm , customers.rating , 
		sum(amt)
	from salespeople , customers , orders
    where salespeople.snum = orders.snum
    and customers.cnum = orders.cnum
    group by cname;

/*
onum, 	amt, 	cname, 		sname, 	comm, 	rating, sum(amt)
3001	18.69	Cisneros	Rifkin	0.15	300		1116.8500347137451
3002	1900.1	Pereira		Motika	0.11	100		1900.0999755859375
3003	767.19	Hoffman		Peel	0.12	100		767.1900024414062
3005	5160.45	Liu			Serres	0.13	200		5160.4501953125
3007	75.75	Grass		Serres	0.13	300		1385.699951171875
3008	4723	Clemens		Peel	0.12	100		14614.8798828125
3009	1713.23	Giovanni	Axelrod	0.1		200		1713.22998046875
*/

select orders.onum , orders.amt , customers.cname , salespeople.sname , salespeople.comm , customers.rating ,
		sum(amt) as sum_amt , sum_amt*comm # ! sum_amt not defind
	from salespeople , customers , orders
    where salespeople.snum = orders.snum
    and customers.cnum = orders.cnum
    group by cname;
