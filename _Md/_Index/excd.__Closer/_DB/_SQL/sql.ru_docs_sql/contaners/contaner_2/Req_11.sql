Use sqlru_book;
# &1 numeration of query
select *
	from  salespeople s
    where city = any ( # any from column c.city
		select city 
			from customers c
    );
/*# 
snum, 	sname, 		city, 		comm
'1001', 'Peel', 	'London', 	'0.12'
'1004', 'Motika', 	'London', 	'0.11'
'1002', 'Serres', 	'San Jose', '0.13'
*/

# &2 
select *
	from  salespeople s
    where s.city = any ( # 
		select c.city 
			from customers c
    );


# &3 
select 'Peel' < 'Pereira'; # $res = 1 => 'Peel' in select &3
# select 'Serres' < any c.name  ; $res = 0 => 'Peel' not in select &3
select 'Motika' < 'Pereira'; # $res = 1 => 'Motika' in select &3
# select 'Rifkin' < any c.name; # $res = 0 => 'Rifkin' not in select &3
select 'Axelrod' < 'Clemens'; # $res = 1 => 'Axelrod' in select &3
# &3
select * 
	from  salespeople s
    where s.sname < any ( # 
		select c.cname 
			from customers c
    );
/*# 
snum, 	sname, 		city, 		comm
'1001', 'Peel', 	'London', 	'0.12'
'1003', 'Axelrod', 	'New York', '0.1'
'1004', 'Motika', 	'London', 	'0.11'
'1008', 'E_uyt', 	'Tuo%io', 	'0.15'
*/

# &4 === &3
select *
	from salespeople s
    where exists (
    select *
		from customers c
        where s.sname < c.cname
    );

# ANY similar to EXISTS but...
# &5 запрос чтобы выбрать заказчиков которые имеют больший рейтинг чем любой заказчик в Риме
select *
	from customers c
    where c.rating > any (
		select cc.rating
			from customers cc
            where cc.city = 'Rome' # (Pereira ,Rome ,100 ) and (Giovanni ,Rome ,200 )
    );
/*# incude All rating > 100 => rating > 200 is including
cnum, 	cname, 		city, 		rating, snum
'2002', 'Giovanni', 'Rome', 	'200', '1003'
'2003', 'Liu', 		'San Jose', '200', '1002'
'2004', 'Grass', 	'Berlin', 	'300', '1002'
'2008', 'Cisneros', 'San Jose', '300', '1007'
*/

# &6
SELECT *
FROM Orders
WHERE amt > ANY
( SELECT amt
FROM Orders
WHERE odate='10/06/1990' ); # (3010 , 1309.95 , 10/06/1990) and (3011 , 9891.88 , 10/06/1990)
/*# use amt > 1309.95 and ignored amt > 9891.88
onum, 	amt, 		odate, 			cnum, 	snum
'3002', '1900.1', 	'10/03/1990', 	'2007', '1004'
'3005', '5160.45', 	'10/03/1990', 	'2003', '1002'
'3008', '4723', 	'10/05/1990', 	'2006', '1001'
'3009', '1713.23', 	'10/04/1990', 	'2002', '1003'
'3011', '9891.88', 	'10/06/1990', 	'2006', '1001'
*/

# &7
select *
	from orders
    where amt < (
		select avg(amt)
			from orders o, customers c
            where c.cnum = o.cnum
				and c.city = 'San Jose'
    );

# sub&7
select *
	from orders o, customers c
	where c.cnum = o.cnum
		and c.city = 'San Jose';
/*#
onum, 	amt, 		odate, 			cnum, 	snum, 	cnum, 	cname, 		city, 		rating, snum
'3001', '18.69', 	'10/03/1990', 	'2008', '1007', '2008', 'Cisneros', 'San Jose', '300', '1007'
'3005', '5160.45', 	'10/03/1990', 	'2003', '1002', '2003', 'Liu', 		'San Jose', '200', '1002'
'3006', '1098.16', 	'10/03/1990', 	'2008', '1007', '2008', 'Cisneros', 'San Jose', '300', '1007'
*/
# sub&7.1
select avg(amt)
	from orders o, customers c
	where c.cnum = o.cnum
		and c.city = 'San Jose';
/*# 
avg(amt)
'2092.4334100087485'
*/
# &7
select *
	from orders
    where amt < (
		select avg(amt)
			from orders o, customers c # orders contane amt + customers contane city 
            # condition of query include both column
            where c.cnum = o.cnum
				and c.city = 'San Jose'
    );
/*#
onum, 	amt, 		odate, 			cnum, 	snum
'3001', '18.69', 	'10/03/1990', 	'2008', '1007'
'3002', '1900.1', 	'10/03/1990', 	'2007', '1004'
'3003', '767.19', 	'10/03/1990', 	'2001', '1001'
'3006', '1098.16', 	'10/03/1990', 	'2008', '1007'
'3007', '75.75', 	'10/04/1990', 	'2004', '1002'
'3009', '1713.23', 	'10/04/1990', 	'2002', '1003'
'3010', '1309.95', 	'10/06/1990', 	'2004', '1002'
*/

# &5 with ANY next stage &8 with ALL
# &8:
select *
	from customers c
    where c.rating > all (
		select cc.rating
			from customers cc
            where cc.city = 'Rome' # (Pereira ,Rome ,100 ) and (Giovanni ,Rome ,200 )
    );
/*# 
cnum, 	cname, 		city, 		rating, snum
'2004', 'Grass', 	'Berlin', 	'300', '1002'
'2008', 'Cisneros', 'San Jose', '300', '1007'
*/

# &8 with ALL next stage &9 with NOT EXIST ( avg => max )
# &9 :  
select *
	from customers ext
    where not exists (
		select * 
			from customers inn
            where inn.city = 'Rome'
				and ext.rating <= inn.rating
    );
/*# 
cnum, 	cname, 		city, 		rating, snum
'2004', 'Grass', 	'Berlin', 	'300', 	'1002'
'2008', 'Cisneros', 'San Jose', '300', 	'1007'
*/

select * 
	from customers inn
	where inn.city = 'Rome'
		and inn.rating <= 200 ; # ext.rating
/*# 
cnum, 	cname, 		city, 		rating, snum
'2002', 'Giovanni', 'Rome', 	'200', '1003'
'2007', 'Pereira', 	'Rome', 	'100', '1004'
*/

# ANY , NOT IN , ALL

select rating
		from customers
		where city = 'Rome';
/*# 
rating
'200'
'100'
*/
# &a
select *
	from customers
    where rating <> all(
		select rating
			from customers
            where city = 'San Jose'
    );
# &b
select *
	from customers
    where rating not in(
		select rating
			from customers
            where city = 'San Jose'
    );
# &c
select *
	from customers
    where not rating = any(
		select rating
			from customers
            where city = 'San Jose'
    );
# where rating <> all === where rating not in === where not rating = any

# NULL behavior 
## null in predicate return unknown === false
## but not exists null === true 

# 1.Напишите запрос который бы выбирал всех заказчиков чьи оценки равны или больше чем любая
# ( ANY ) оценка заказчика Serres.

# subquery
select rating
	from customers c, salespeople s
	where c.snum = s.snum
		and s.sname = 'Serres';
/*# 
rating
'200'
'300'
*/

select * 
	from customers
    where rating >= any(
		select rating
		from customers c, salespeople s
        where c.snum = s.snum
			and s.sname = 'Serres'
    );
/*# 
cnum, 	cname, 		city, 		rating, snum
'2002', 'Giovanni', 'Rome', 	'200', '1003'
'2003', 'Liu', 		'San Jose', '200', '1002'
'2004', 'Grass', 	'Berlin', 	'300', '1002'
'2008', 'Cisneros', 'San Jose', '300', '1007'
*/

# 3.Напишите запрос использующий ANY или ALL,
# который бы находил всех продавцов которые не имеют никаких заказчиков размещенных в их городе

# subquery
select city
	from customers  
    where city = 'New York'; # Salespeople (1003 , New York)
		   
select *
	from salespeople
    where city <> all( # where not city = any
		select city
			from customers
            # where c.city = s.city 'никаких заказчиков' === from all customers
    );

# 4.Напишите запрос который бы выбирал все заказы
# с суммой больше чем любая (в обычном смысле ) для заказчиков в Лондоне.

select amt 
	from orders o, customers c 
	where c.city = 'London' 
		and c.cnum = o.cnum;
/*# 
amt
'767.19'
'4723'
'9891.88'
*/
select *
	from orders 
    where amt > all (
		select amt 
			from orders o, customers c 
			where c.city = 'London' 
				and c.cnum = o.cnum
    );
 # Calc : NULL is true answer   

# 5. make # 4. with MAX()
select *
	from orders 
    where amt > (
		select max(amt) 
			from orders o, customers c 
			where c.city = 'London' 
				and c.cnum = o.cnum
    );


