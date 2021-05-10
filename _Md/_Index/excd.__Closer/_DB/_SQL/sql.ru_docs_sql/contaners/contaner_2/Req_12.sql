Use sqlru_book;

select snum , sname
	from salespeople 
    where city = 'London'
							union
select cnum , cname
	from customers
    where city = 'London';

/*# 
snum, 	sname
'1001', 'Peel'
'1004', 'Motika'
'2001', 'Hoffman'
'2006', 'Clemens'
*/
    
select o.odate , s.sname , 'max in data' , o.amt
	from orders o, salespeople s 
    where s.snum = o.snum
		and amt = (
			select max(amt)
				from orders
				where odate = o.odate
        )
union    
select o.odate , s.sname , 'min in data' , o.amt
	from orders o, salespeople s 
    where s.snum = o.snum
		and amt = (
			select min(amt)
				from orders
				where odate = o.odate
        );    
/*#
odate, 			sname, 		max in data, 	amt
'10/03/1990', 	'Serres', 	'max in data', 	'5160.45'
'10/05/1990', 	'Peel', 	'max in data', 	'4723'
'10/04/1990', 	'Axelrod', 	'max in data', 	'1713.23'
'10/06/1990', 	'Peel', 	'max in data', 	'9891.88'
'10/03/1990', 	'Rifkin', 	'min in data', 	'18.69'
'10/04/1990', 	'Serres', 	'min in data', 	'75.75'
'10/05/1990', 	'Peel', 	'min in data', 	'4723'
'10/06/1990', 	'Serres', 	'min in data', 	'1309.95'
*/

# order by with union
select o.odate , s.sname , 'max in data' , o.amt
	from orders o, salespeople s 
    where s.snum = o.snum
		and amt = (
			select max(amt)
				from orders
				where odate = o.odate
        )
union    
select o.odate , s.sname , 'min in data' , o.amt
	from orders o, salespeople s 
    where s.snum = o.snum
		and amt = (
			select min(amt)
				from orders
				where odate = o.odate
        )     
   order by 1; 
/*# 
odate, 			sname, 		max in data, 	amt
'10/03/1990', 	'Serres', 	'max in data', '5160.45'
'10/03/1990', 	'Rifkin', 	'min in data', '18.69'
'10/04/1990', 	'Axelrod', 	'max in data', '1713.23'
'10/04/1990', 	'Serres', 	'min in data', '75.75'
'10/05/1990', 	'Peel', 	'max in data', '4723'
'10/05/1990', 	'Peel', 	'min in data', '4723'
'10/06/1990', 	'Peel', 	'max in data', '9891.88'
'10/06/1990', 	'Serres', 	'min in data', '1309.95'
*/

# outer union
# first query:
# &1:
select s.snum ,s.sname , s.city 
	from salespeople s, customers c 
	where s.city = c.city;
/*# 
snum, 	sname, 		city
'1001', 'Peel', 	'London'
'1004', 'Motika', 	'London'
'1002', 'Serres', 	'San Jose'
'1001', 'Peel', 	'London'
'1004', 'Motika', 	'London'
'1002', 'Serres', 	'San Jose'
*/
# &2:    
select s.snum , s.sname, 'No mach'
	from salespeople s
    where not s.city = any (
			select city
            from customers
    );
/*# 
snum, 	sname, 		No mach
'1003', 'Axelrod', 	'No mach'
'1007', 'Rifkin', 	'No mach'
'1008', 'E_uyt', 	'No mach'
*/

# &1 union &2
select s.snum ,s.sname , s.city 
	from salespeople s, customers c 
	where s.city = c.city
union
select s.snum , s.sname, 'No mach'
	from salespeople s
    where not s.city = any (
			select city
            from customers
    );
/*# 
snum, 	sname, 		city
'1001', 'Peel', 	'London'
'1004', 'Motika', 	'London'
'1002', 'Serres', 	'San Jose'
'1003', 'Axelrod', 	'No mach'
'1007', 'Rifkin', 	'No mach'
'1008', 'E_uyt', 	'No mach'
*/

# full union
# &3:
select snum , city , 'sale in cust YES' maches
	from salespeople
    where city = any (
		select city
        from customers
    );
/*# 
snum, 	city, 		maches
'1001', 'London', 	'sale in cust YES'
'1002', 'San Jose', 'sale in cust YES'
'1004', 'London', 	'sale in cust YES'
*/
# &4:
select snum , city , 'sale in cust NO' maches
	from salespeople
    where not city = any (
		select city
        from customers
    );    
/*# 
snum, 	city, 			maches
'1003', 'New York', 	'sale in cust NO'
'1007', 'Barcelona', 	'sale in cust NO'
'1008', 'Tuo%io', 		'sale in cust NO'
*/    
# (&3 union &4):
select snum , city , 'sale in cust YES' maches
	from salespeople
    where city = any (
		select city
        from customers
    )
union
select snum , city , 'sale in cust NO' maches
	from salespeople
    where not city = any (
		select city
        from customers
    ); 
    
# $5
select cnum , city , 'cust in sale YES' maches    
    from customers
    where city = any (
		select city
			from salespeople
    );
/*# 
cnum, 		city, 		maches
'2001', 	'London', 	'cust in sale YES'
'2003', 	'San Jose', 'cust in sale YES'
'2006', 	'London', 	'cust in sale YES'
'2008', 	'San Jose', 'cust in sale YES'
*/    
 # &6 
select cnum , city , 'cust in sale NO' maches 
	from customers
    where not city = any(
		select city 
			from salespeople
    );
/*# 
cnum, 	city, 		maches
'2002', 'Rome', 	'cust in sale NO'
'2004', 'Berlin', 	'cust in sale NO'
'2007', 'Rome', 	'cust in sale NO'
*/
    
# (&5 union &6)   
select cnum , city , 'cust in sale YES' maches    
    from customers
    where city = any (
		select city
			from salespeople
    )
union
select cnum , city , 'cust in sale NO' maches 
	from customers
    where not city = any(
		select city 
			from salespeople
    );

SELECT snum, city
	 FROM Customers;     
/*# 
snum, 	city
'1001', 'London'
'1003', 'Rome'
'1002', 'San Jose'
'1002', 'Berlin'
'1001', 'London'
'1004', 'Rome'
'1007', 'San Jose'
*/
# &8
SELECT snum, city
FROM Salespeople;
/*# snum, city
'1001', 'London'
'1002', 'San Jose'
'1003', 'New York'
'1004', 'London'
'1007', 'Barcelona'
'1008', 'Tuo%io'
*/    
# (&7 union &8)
SELECT snum, city
FROM Customers

UNION

SELECT snum, city
FROM Salespeople;    
/*# 
snum, 	city
'1001', 'London'
'1003', 'Rome'
'1002', 'San Jose'
'1002', 'Berlin'
'1004', 'Rome'
'1007', 'San Jose'
'1003', 'New York'
'1004', 'London'
'1007', 'Barcelona'
'1008', 'Tuo%io'
*/    
    
/* 1.Создайте объединение из двух запросов которое показало бы имена, города,
 и оценки всех заказчиков. Те из них которые имеют поле rating=200 и более,
 должны кроме того иметь слова - "Высокий Рейтинг",
 а остальные должны иметь слова " Низкий Рейтинг "
*/    
select *,'low raiting'
	from customers 
    where rating <200
union 
select *,'high raiting'
	from customers 
    where rating >= 200;
/*# 
cnum, 	cname, 		city, 		rating, snum, 	low raiting
'2001', 'Hoffman', 	'London', 	'100', '1001', 'low raiting'
'2006', 'Clemens', 	'London', 	'100', '1001', 'low raiting'
'2007', 'Pereira', 	'Rome', 	'100', '1004', 'low raiting'
'2002', 'Giovanni', 'Rome', 	'200', '1003', 'high raiting'
'2003', 'Liu', 		'San Jose', '200', '1002', 'high raiting'
'2004', 'Grass', 	'Berlin', 	'300', '1002', 'high raiting'
'2008', 'Cisneros', 'San Jose', '300', '1007', 'high raiting'
*/    

/* 2.Напишите команду которая бы вывела имена и номера
 каждого продавц и каждого заказчика которые имеют больше чем один текущий порядок. 
 Результат представьте в алфавитном порядке.*/    
# &9:
select cname , cnum
	from customers c
    where 1 < (
		select count(cnum)
			from orders o
            where o.cnum = c.cnum
    );
/*# 
cname, 		cnum
'Grass', 	'2004'
'Clemens', 	'2006'
'Cisneros', '2008'
*/
# &10:
 select sname , snum
	from salespeople s
    where 1 < (
		select count(snum)
			from orders o
            where o.snum = s.snum
    );
/*# 
sname, snum
'Peel', '1001'
'Serres', '1002'
'Rifkin', '1007'
*/
# (&9 union &10) order by 1:
select cname , cnum
	from customers c
    where 1 < (
		select count(cnum)
			from orders o
            where o.cnum = c.cnum
    )
union 
select sname , snum
	from salespeople s
	where 1 < (
		select count(snum)
			from orders o
			where o.snum = s.snum
	)
order by 1;
/*
# 
cname, 		cnum
'Cisneros', '2008'
'Clemens', 	'2006'
'Grass', 	'2004'
'Peel', 	'1001'
'Rifkin', 	'1007'
'Serres', 	'1002'
*/
/* 3.Сформируйте объединение из трех запросов.
 Первый выбирает поля snum всех продавцов в San Jose;
 второй, поля cnum всех заказчиков в San Jose;
 и третий поля onum всех порядков на 3 Октября.
 Сохраните дубликаты между последними двумя запросами,
 но устраните любую избыточность вывода между каждым из их и самым первым.
 (Примечание: в данных типовых таблицах, не содержится никакой избыточности. Это только пример.)*/
# &11:
select snum 
	from salespeople 
    where city = 'San Jose';
/*# 
snum
'1002'
*/
# &12
select cnum 
	from customers	 
    where city = 'San Jose';
/*# 
cnum
'2003'
'2008'
*/
# &13:
select onum
	from orders
    where odate = '10/03/1990';
# &11 union (&12 union all &13): but brackets () don't work (((
select snum 
	from salespeople 
    where city = 'San Jose'
union
(select cnum 
	from customers	 
    where city = 'San Jose'
union all
select onum
	from orders
    where odate = '10/03/1990');
    
    
    