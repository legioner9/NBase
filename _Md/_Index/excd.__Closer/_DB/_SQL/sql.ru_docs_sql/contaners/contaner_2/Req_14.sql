Use sqlru_book;

# salespeople_2 is empty
/*
insert salespeople_2
select *
	from salespeople
    where city = 'San Jose';
    */
/*# 
snum, 	sname, 		city, 		comm
'1002', 'Serres', 	'San Jose', '0.13'
*/
/*
ALTER TABLE `sqlru_book`.`salespeople_2` 
DROP PRIMARY KEY;
*/
/*
select *
	from salespeople
    where snum = any(
		select snum
			from customers
			where city = 'San Jose'
    );

insert salespeople_2
select *
	from salespeople
    where snum = any(
		select snum
			from customers
			where city = 'San Jose'
    );
*/    

select distinct c.city
	from customers c, salespeople s 
    where c.snum = s.snum; 


# insert into salespeople_2
select *
	from salespeople s
    where s.city = any (
    /*# 
    city
	'London'
	'Rome'
	'San Jose'
	'Berlin'
	*/
		select c.city
			from customers c
			where s.snum = c.snum
    );

# insert into orders_2
/*# 
onum, amt, odate, cnum, snum
'3005', '5160.45', '10/03/1990', '2003', '1002'
'3008', '4723', '10/05/1990', '2006', '1001'
'3009', '1713.23', '10/04/1990', '2002', '1003'
'3011', '9891.88', '10/06/1990', '2006', '1001'
*/
select *
	from orders a
    where amt = (
		select max(amt)
        from orders b
			where a.odate = b.odate		
    );
# SubQuery in Delete

/*
delete 
	from customers_2
	where snum = 1004;
*/

/*
delete 
	from customers_2
	where snum = any (
        #snum
		'1001'
		'1004'		
		select snum 
			from salespeople 
			where city = 'London'
 );
 */
select * 
	from customers c , salespeople_2 s
    where c.snum = s.snum
		and rating = 100;
# &1d        
/*
delete 
	from salespeople_2 s
	where exists (
    /*# 
    cnum, 	cname, 		city, 		rating, snum, 	snum, 	sname, 	city, comm
	'2001', 'Hoffman', 	'London', 	'100', '1001', 	'1001', 'Peel', 'London', '0.12'
	'2006', 'Clemens', 	'London', 	'100', '1001', 	'1001', 'Peel', 'London', '0.12'
	'2007', 'Pereira', 	'Rome', 	'100', '1004', 	'1004', 'Motika', 'London', '0.1'

    
		select * 
			from customers c 
			where c.snum = s.snum
				and rating = 100;
    )
   */
# &2d
/*delete 
	from salespeople_2 s
    where s.snum = any(

# snum
'1001'
'1001'
'1004'

		select c.snum
			from customers c
            where c.rating = 100
    )
*/
# &3d
/*delete 
#select *
# cnum, cname, city, rating, snum, snum, sname, city, comm
'2001', 'Hoffman', 'London', '100', '1001', '1001', 'Peel', 'London', '0.12'
'2006', 'Clemens', 'London', '100', '1001', '1001', 'Peel', 'London', '0.12'
'2007', 'Pereira', 'Rome', '100', '1004', '1004', 'Motika', 'London', '0.1'

	from salespeople_2 s
    where 100 in (
		select c.rating
			from customers c
            where s.snum = c.snum
    )
*/
# &1d === &2d === &3d

# multy level query
# Вы можете найти наинизший amt order на каждый день
# и удалить продавцов которые произвели его, с помощью следующей команды:

/*delete

snum, 	sname, 		city, 			comm
'1002', 'Serres', 	'San Jose', 	'0.13'
'1007', 'Rifkin', 	'Barcelona', 	'0.15'

#select *
	from salespeople_2 s2_out # s2_out => out salespeople_2
    where s2_out.snum in (		
		
        snum
		'1007'
		'1002'
		'1002'
		
		select o_out.snum
			from orders o_out
			where o_out.amt =  ( 			
				select  min(amt)
					from orders o_in1
                    where o_out.odate = o_in1.odate
           )
           and 1 < (
				select count(*)
					from orders o_in2
                    where o_out.odate = o_in2.odate
           )
		);
*/
#update
/*# 
snum, 	sname, 		city, 		comm, 	comm + 0.01
'1001', 'Peel', 	'London', 	'0.12', '0.129999997317791'
'1002', 'Serres', 	'San Jose', '0.13', '0.13999999523162843'
*/
/*select * , comm + 0.01
	from salespeople s
    where 1 < (
	select count(*)
		from customers c
        where s.snum = c.snum
    );
update salespeople_2 s
	set s.comm = s.comm + 0.01
	where 1 < (
    select count(*)
		from customers c
        where s.snum = c.snum
    )
*/

/*
snum, 	sname, 		city, 			comm, 	CM
'1001', 'Peel', 	'London', 		'0.12', '0.10999999731779099'
'1002', 'Serres', 	'San Jose', 	'0.13', '0.11999999523162842'
'1007', 'Rifkin', 	'Barcelona', 	'0.15', '0.14000000596046447'
*/
select * , comm -.01 CM
	from salespeople_2 s 
	where s.snum in ( 
		/*
        onum, 	amt, 		odate, 			cnum, 	snum
		'3001', '18.69', 	'10/03/1990', 	'2008', '1007'
		'3007', '75.75', 	'10/04/1990', 	'2004', '1002'
		'3008', '4723', 	'10/05/1990', 	'2006', '1001'
		'3010', '1309.95', 	'10/06/1990', 	'2004', '1002'
		*/
		select a.snum # *
        from orders a 
        where amt = (
			select min(amt)
				from orders b
				where a.odate = b.odate
       )
   );

/*update salespeople_2 s
set comm = comm -.01
	where s.snum in ( 
		
        onum, 	amt, 		odate, 			cnum, 	snum
		'3001', '18.69', 	'10/03/1990', 	'2008', '1007'
		'3007', '75.75', 	'10/04/1990', 	'2004', '1002'
		'3008', '4723', 	'10/05/1990', 	'2006', '1001'
		'3010', '1309.95', 	'10/06/1990', 	'2004', '1002'
		
		select a.snum # *
        from orders a 
        where amt = (
			select min(amt)
				from orders b
				where a.odate = b.odate
       )
   );
*/
# 1.Предположите, что имеется таблица называемая salespeople_2,
# с такими же именами столбцов что и таблица salespeople.
# Напишите команду, которая бы вставила всех продавцов (из таблицы salespeople)
# имеющих более чем одного заказчика в эту таблицу.

 /*
 snum, 	sname, 		city, 		comm
'1001', 'Peel', 	'London', 	'0.12'
'1002', 'Serres', 	'San Jose', '0.13'
*/
 
 select * 
	from salespeople s
    where s.snum in (     
		/* 
        cnum, 	cname, 		city, 		rating, snum
		'2001', 'Hoffman', 	'London', 	'100', '1001'
		'2003', 'Liu', 		'San Jose', '200', '1002'
		'2004', 'Grass', 	'Berlin', 	'300', '1002'
		'2006', 'Clemens', 	'London', 	'100', '1001'
		*/
		select a.snum  #, * EXCess query
			from customers a
            where 1 < (
				select count(*)
					from customers b 
					where a.snum = b.snum
            )
    );
    
select *
	from salespeople s
    where 1<(
		select count(*)
			from customers c
            where s.snum = c.snum
    );
# 2.Напишите команду которая бы удаляла всех заказчиков не имеющих текущих порядков

/*delete
# 
cnum, 	cname, 	city, 		rating, snum
'2010', 'CSD', 	'DSDCS', 	'330', 	'1007'

# select *
	from customers_2 c
    where not exists (
		select *
			from orders o
			where c.cnum = o.cnum
    );
*/
# 3.Напишите команду которая бы увеличила на двадцать процентов
# комиссионные всех продавцов имеющих общие текущие заказы выше чем $3,000.    
/*
snum, 	sname, 		city, 		comm, 	SC
'1002', 'Serres', 	'San Jose', '0.13', '0.1559999942779541'
'1001', 'Peel', 	'London', 	'0.12', '0.14399999678134917'
*/
select * , s.comm * 1.2 SC
	from salespeople s
    where s.snum = any (
		select o.snum 
			from orders o 
            where s.snum = o.snum
				and o.amt > 3000
    );
/*    
update salespeople_2 s
set s.comm = s.comm * 1.2
	where s.snum = any (
		select o.snum 
			from orders o 
            where s.snum = o.snum
				and o.amt > 3000
    );
*/    
# but condition is : sum(amt) > 3000

select * 
	from salespeople s 
    where 3000 < (
		select sum(amt)
			from orders o 
            where o.snum = s.snum
    );
    
update salespeople_2 s
set s.comm = s.comm * 1.2
	where 3000 < (
		select sum(amt)
			from orders o 
            where o.snum = s.snum
				and s.comm * 1.2 < 0.5
    );