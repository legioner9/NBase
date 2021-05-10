Use sqlru_book;
/*
CREATE TABLE `sqlru_book`.`salespeople_3` (
  `idsalespeople_3` INT NOT NULL,
  PRIMARY KEY (`idsalespeople_3`));
  
ALTER TABLE `sqlru_book`.`salespeople_3` 
ADD COLUMN `salespeople_3col` VARCHAR(45) NULL AFTER `idsalespeople_3`

ALTER TABLE `sqlru_book`.`salespeople_3` 
ADD COLUMN `salespeople_3col1` VARCHAR(45) NOT NULL AFTER `salespeople_3col`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`idsalespeople_3`, `salespeople_3col1`);
*/

select * from salespeople_3 