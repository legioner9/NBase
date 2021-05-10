Use sqlru_book;

 /* 	
Calculate:						
 */

select sum((amt)) as 'SUM'
	from Orders;
	
/* 	

id_Math, field_A, field_B
1	      2		   1
2	   	  4		   3
3		  6		   5

 */	
    
select sum((field_a) + (field_b))
	from Math;
 
 /* 	
Calculate:
# sum((field_a) + (field_b))
'21'

								
 */
 
select max((field_a) + (field_b))
	from Math;
	
 /* 	
Calculate:
# max((field_a) + (field_b))
'11'

								
 */
 
select * , max(amt) 
	from orders
    group by snum ;
    
 /* 	

Calculate:
onum, amt, odate, cnum, snum, max(amt)
3001	18.69	10/03/1990	2008	1007	1098.16
3002	1900.1	10/03/1990	2007	1004	1900.1
3003	767.19	10/03/1990	2001	1001	9891.88
3005	5160.45	10/03/1990	2003	1002	5160.45
3009	1713.23	10/04/1990	2002	1003	1713.23

 */

select * , max(amt) 
	from orders
    group by snum  , odate
    order by snum ;
    
 /* 	
 3003	767.19	10/03/1990	2001	1001
3008	4723	10/05/1990	2006	1001
3011	9891.88	10/06/1990	2006	1001
3005	5160.45	10/03/1990	2003	1002
3007	75.75	10/04/1990	2004	1002
3010	1309.95	10/06/1990	2004	1002
3009	1713.23	10/04/1990	2002	1003
3002	1900.1	10/03/1990	2007	1004
3001	18.69	10/03/1990	2008	1007
3006	1098.16	10/03/1990	2008	1007
				
Calculate:
3003	767.19	10/03/1990	2001	1001	767.19
3008	4723	10/05/1990	2006	1001	4723
3011	9891.88	10/06/1990	2006	1001	9891.88
3005	5160.45	10/03/1990	2003	1002	5160.45
3007	75.75	10/04/1990	2004	1002	75.75
3010	1309.95	10/06/1990	2004	1002	1309.95
3009	1713.23	10/04/1990	2002	1003	1713.23
3002	1900.1	10/03/1990	2007	1004	1900.1
3001	18.69	10/03/1990	2008	1007	1098.16 <!
 */    
 
 select * , max(amt) as max_amt 
	from orders
    group by snum  , odate
    having max_amt > 1500
    order by snum ;

 /* 	
Calculate:	
3008	4723	10/05/1990	2006	1001	4723
3011	9891.88	10/06/1990	2006	1001	9891.88
3005	5160.45	10/03/1990	2003	1002	5160.45
3009	1713.23	10/04/1990	2002	1003	1713.23
3002	1900.1	10/03/1990	2007	1004	1900.1				
 */
 
  select * , max(amt) as max_amt 
	from orders
    where odate = '10/03/1990'
    group by snum  , odate
    having max_amt > 1500
    order by snum ;

 /* 	
Calculate:	
3005	5160.45	10/03/1990	2003	1002	5160.45
3002	1900.1	10/03/1990	2007	1004	1900.1			
 */
 
/* 1. Напишите запрос который сосчитал бы все суммы приобретений на 3 Октября.*/ 

/* this is a sum of orders to each customer in 10/03/1990*/
select *, sum(amt)
	from orders 
    where odate = '10/03/1990'
    group by cnum;

 /* 	
Calculate:	
3001	18.69	10/03/1990	2008	1007	1116.8500347137451
3002	1900.1	10/03/1990	2007	1004	1900.0999755859375
3003	767.19	10/03/1990	2001	1001	767.1900024414062
3005	5160.45	10/03/1990	2003	1002	5160.4501953125
 */

/*Answer to tutorial*/
 SELECT COUNT(*) 
      FROM Orders 
      WHERE odate = '10/03/1990'; 
      
/* 2. Напишите запрос который сосчитал бы число различных не-NULL значений поля city в таблице Заказчиков.*/

select count(distinct city)
	from customers ;
    
/*
# count(distinct city)
'4'
*/

/*Напишите запрос который выбрал бы нименьшую сумму для каждого заказчика.*/

select cnum, min(amt)
	from orders
    group by cnum
    order by cnum; /* ! */

/*
cnum, min(amt)
2001	767.19
2002	1713.23
2003	5160.45
2004	75.75
2006	4723
2007	1900.1
2008	18.69
*/

/*Answer from tutorial*/
SELECT cnum, MIN(amt) 
      FROM Orders 
      GROUP BY cnum; 
/*OK*/

/*
Напишите запрос который бы выбирал заказчиков в алфавитном порядке, чьи имена начинаются с буквы G*/

select cname 
	from customers
    where cname like 'G%'
    order by cname;

/* 5. Напишите запрос который выбрал бы высшую оценку в каждом городе*/

select city , max(rating)
	from customers
    group by city;

# OK

# 6. Напишите запрос который сосчитал бы число заказчиков регистрирующих каждый день свои порядки. (Если продавец имел более одного порядка в данный день, он должен учитываться только один раз.)

select *, count(distinct snum)
	from orders
    group by odate;

/*
calculate:

onum, amt, odate, cnum, snum, count(distinct snum)
3001	18.69	10/03/1990	2008	1007	4
3007	75.75	10/04/1990	2004	1002	2
3008	4723	10/05/1990	2006	1001	1
3010	1309.95	10/06/1990	2004	1002	2
*/
