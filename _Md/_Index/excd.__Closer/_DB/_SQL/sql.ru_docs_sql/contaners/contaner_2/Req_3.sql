Use sqlru_book;

select *
	from sqlru_book.salespeople
	where city in ('New York', 'London')
		and comm > 0.11;

/* ! include end and start point from range inside BETWEEN */

select *
	from sqlru_book.customers
    where city between 'Berlin' and 'London';

/* 	
Calculate:
2001	Hoffman	London	100	1001
2004	Grass	Berlin	300	1002
2006	Clemens	London	100	1001				
 */
    
select *
	from sqlru_book.customers
    where city between 'B' and 'L';
		
/* 	
Calculate:
2004	Grass	Berlin	300	1002				
 */
 
select *
	from sqlru_book.customers
    where city between 'B' and 'Lp'; 
    
/* 	
Calculate:
2001	Hoffman	London	100	1001
2004	Grass	Berlin	300	1002
2006	Clemens	London	100	1001				
 */
 
  select * 
	from sqlru_book.customers
    where cname like 'G';
    
/* 	
Calculate:
NULL
								
 */
 
 select * 
	from sqlru_book.customers
    where cname like 'G%';
    
/* 	
Calculate:
2002	Giovanni	Rome	200	1003
2004	Grass	Berlin	300	1002
								
 */
 
  select * 
	from sqlru_book.customers
    where cname like 'G___s';
    
/* 	
Calculate:
2004	Grass	Berlin	300	1002
								
 */
 
   select * 
	from sqlru_book.customers
    where cname like 'G_a%';
    
/* 	
Calculate:
2004	Grass	Berlin	300	1002
								
 */
 
 /* 	
! Escape

sqlru_book.Salespeople

1001	Peel	London	0.12
1002	Serres	San Jose	0.13
1003	Axelrod	New York	0.1
1004	Motika	London	0.11
1007	Rifkin	Barcelona	0.15
1008	E_uyt	Tuo%io	0.15
			
*/

/* escape _ */
 
 select * 
	from sqlru_book.salespeople
    where sname like '%#_%' escape '#';
 
 /* escape % Bad request */
 
 select * 
	from sqlru_book.salespeople
    where sname like '%#%%' escape '#';
    
 
 /* 

sqlru_book.Salespeople

1001	Peel	London	0.12
1002	Serres	San Jose	0.13
1003	Axelrod	New York	0.1
1004	Motika	London	0.11
1007	Rifkin	Barcelona	0.15
1008	E_uyt	Tuo%io	0.15
1009					0.2
			
			
*/

 select * 
	from sqlru_book.salespeople
    where sname is null;
 
 /* 	
Calculate:
1009	null	null		0.2
								
 */
 
  select * 
	from sqlru_book.salespeople
    where sname is not null;
 
  /* 	
Calculate:
1001	Peel	London	0.12
1002	Serres	San Jose	0.13
1003	Axelrod	New York	0.1
1004	Motika	London	0.11
1007	Rifkin	Barcelona	0.15
1008	E_uyt	Tuo%io	0.15 
											
 */
 
 /* 1. Напишите запрос который выберет всех заказчиков обслуживаемых продавцами Peel или Motika. (Подсказка: из наших типовых таблиц, поле snum связывает вторую таблицу с первой ) */
 
 