CREATE TABLE people (
    height_cm numeric,
    height_in numeric GENERATED ALWAYS AS (height_cm / 2.54) STORED -- generated field
);

select  * from people;
/*
2.54, 1
1,    0.39370078740157480315
*/

