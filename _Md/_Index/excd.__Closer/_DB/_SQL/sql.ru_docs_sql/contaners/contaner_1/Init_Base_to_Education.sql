/*
drop table Laptop;
drop table pc;
drop table printer;
drop table product;
CREATE SCHEMA `sqlru_book`;
*/
/*D:\Node_Projects_v.2\Node_Way\NBase\_Md\_Index\_SQL\sql.ru_docs_sql\Init_Base_to_Education.sql*/

Use sqlru_book;

CREATE TABLE `sqlru_book`.`salespeople` (
  `snum` INT NOT NULL,
  `sname` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `comm` INT NOT NULL,
  PRIMARY KEY (`snum`));
  
  ALTER TABLE `sqlru_book`.`salespeople` 
CHANGE COLUMN `comm` `comm` FLOAT NOT NULL ;

CREATE TABLE `sqlru_book`.`customers` (
  `cnum` INT NOT NULL,
  `cname` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `rating` INT NULL,
  `snum` INT NULL,
  PRIMARY KEY (`cnum`));


CREATE TABLE `sqlru_book`.`orders` (
  `onum` INT NOT NULL,
  `amt` FLOAT NULL,
  `odate` DATE NULL,
  `cnum` INT NULL,
  `snum` INT NULL,
  PRIMARY KEY (`onum`));
  
ALTER TABLE `sqlru_book`.`orders` 
CHANGE COLUMN `odate` `odate` VARCHAR(45) NULL DEFAULT NULL ;





/*----Salespeople------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

insert into `sqlru_book`.`salespeople` (`snum`  ,   `sname`   ,  `city`        ,   `comm`)
 values (1001  ,  'Peel'     ,  'London'      ,    .12);
insert into `sqlru_book`.`salespeople` (`snum`  ,   `sname`   ,  `city`        ,   `comm`)
 values (1002  ,  'Serres'   ,  'San_Jose'    ,    .13);
insert into `sqlru_book`.`salespeople` (`snum`  ,   `sname`   ,  `city`        ,   `comm`)
 values (1004  ,  'Motika'   ,  'London'      ,    .11);
insert into `sqlru_book`.`salespeople` (`snum`  ,   `sname`   ,  `city`        ,   `comm`)
 values (1007  ,  'Rifkin'   ,  'Barcelona'   ,    .15);
insert into `sqlru_book`.`salespeople` (`snum`  ,   `sname`   ,  `city`        ,   `comm`)
 values (1003  ,  'Axelrod'  ,  'New_York'    ,    .10);




                                                                                                                                                                                                                                                                 
/*----Customers------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2001  ,  'Hoffman'   , 'London'  ,   100  , 1001);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2002  ,  'Giovanni'  , 'Rome'    ,   200  , 1003);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2003  ,  'Liu'       , 'SanJose' ,   200  , 1002);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2004  ,  'Grass'     , 'Berlin'  ,   300  , 1002);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2006  ,  'Clemens'   , 'London'  ,   100  , 1001);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2008  ,  'Cisneros'  , 'SanJose' ,   300  , 1007);
insert into `sqlru_book`.`Customers` (`cnum`  ,  `cname`     , `city`    , `rating` , `snum` )
 values (2007  ,  'Pereira'   , 'Rome'    ,   100  , 1004);

                                                                                                                                                                                                                                                                 
/*----Orders------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3001  ,    18.69  ,  '10/03/1990' , 2008 , 1007 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3003  ,   767.19  ,  '10/03/1990' , 2001 , 1001 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3002  ,  1900.10  ,  '10/03/1990' , 2007 , 1004 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3005  ,  5160.45  ,  '10/03/1990' , 2003 , 1002 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3006  ,  1098.16  ,  '10/03/1990' , 2008 , 1007 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3009  ,  1713.23  ,  '10/04/1990' , 2002 , 1003 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3007  ,    75.75  ,  '10/04/1990' , 2004 , 1002 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3008  ,  4723.00  ,  '10/05/1990' , 2006 , 1001 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3010  ,  1309.95  ,  '10/06/1990' , 2004 , 1002 );
insert into `sqlru_book`.`Orders` (`onum`  ,    `amt`    ,    `odate`    , `cnum` , `snum`)
 values (3011  ,  9891.88  ,  '10/06/1990' , 2006 , 1001 );



                                                                                                                                                                                                                                                                 
/*----Printer------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Printer values(1,'1276','n','Laser',400)
,(2,'1433','y','Jet',270)
,(3,'1434','y','Jet',290)
,(4,'1401','n','Matrix',150)
,(5,'1408','n','Matrix',270)
,(6,'1288','n','Laser',400)
;