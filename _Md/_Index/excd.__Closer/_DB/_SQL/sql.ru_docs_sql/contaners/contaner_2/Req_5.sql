Use sqlru_book;

select * , comm + 2
	from salespeople;
    
/*
calculate:
snum, sname, city, comm, comm + 2
1001	Peel	London	0.12	2.119999997317791
1002	Serres	San Jose	0.13	2.1299999952316284
1003	Axelrod	New York	0.1	2.100000001490116
1004	Motika	London	0.11	2.1099999994039536
1007	Rifkin	Barcelona	0.15	2.1500000059604645
1008	E_uyt	Tuo%io	0.15	2.1500000059604645
*/


SELECT ' For ', odate, ', there are ',
COUNT(DISTINCT onum ), 'orders.'
FROM Orders
GROUP BY odate;

/*
calculate:
For , odate, , there are , COUNT(DISTINCT onum ), orders.
 For 	10/03/1990	, there are 	5	orders.
 For 	10/04/1990	, there are 	2	orders.
 For 	10/05/1990	, there are 	1	orders.
 For 	10/06/1990	, there are 	2	orders.

*/

SELECT cname, city /* where cnum? */
FROM Customers
GROUP BY cnum;

select * , max(amt)
	from orders 
	group by snum , odate
    order by snum ;
    

/*
calculate:
3003	767.19	10/03/1990	2001	1001	767.19
3008	4723	10/05/1990	2006	1001	4723
3011	9891.88	10/06/1990	2006	1001	9891.88
3005	5160.45	10/03/1990	2003	1002	5160.45
3007	75.75	10/04/1990	2004	1002	75.75
3010	1309.95	10/06/1990	2004	1002	1309.95
3009	1713.23	10/04/1990	2002	1003	1713.23
3002	1900.1	10/03/1990	2007	1004	1900.1
3001	18.69	10/03/1990	2008	1007	1098.16

*/

select * , max(amt)
	from orders 
	group by snum , odate
    order by odate ;

/*
calculate:
3001	18.69	10/03/1990	2008	1007	1098.16
3002	1900.1	10/03/1990	2007	1004	1900.1
3003	767.19	10/03/1990	2001	1001	767.19
3005	5160.45	10/03/1990	2003	1002	5160.45
3007	75.75	10/04/1990	2004	1002	75.75
3009	1713.23	10/04/1990	2002	1003	1713.23
3008	4723	10/05/1990	2006	1001	4723
3010	1309.95	10/06/1990	2004	1002	1309.95
3011	9891.88	10/06/1990	2006	1001	9891.88

*/

select * , max(amt)
	from orders 
	group by snum , odate
    order by odate ,snum ; /*First odate order*/

/*
calculate:
3003	767.19	10/03/1990	2001	1001	767.19
3005	5160.45	10/03/1990	2003	1002	5160.45
3002	1900.1	10/03/1990	2007	1004	1900.1
3001	18.69	10/03/1990	2008	1007	1098.16
3007	75.75	10/04/1990	2004	1002	75.75
3009	1713.23	10/04/1990	2002	1003	1713.23
3008	4723	10/05/1990	2006	1001	4723
3011	9891.88	10/06/1990	2006	1001	9891.88
3010	1309.95	10/06/1990	2004	1002	1309.95

*/

SELECT sname, comm
FROM Salespeople
GROUP BY 2 ; # Mean : GROUP BY comm

/*
calculate:
sname, comm
Peel	0.12
Serres	0.13
Axelrod	0.1
Motika	0.11
Rifkin	0.15
*/
