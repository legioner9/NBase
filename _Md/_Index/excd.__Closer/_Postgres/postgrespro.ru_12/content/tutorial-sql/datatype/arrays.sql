CREATE TABLE sal_emp
(
    name           text,
    pay_by_quarter integer[],
    schedule       text[][]
);

INSERT INTO sal_emp
VALUES ('Bill',
        '{10000, 10000, 10000, 10000}',
        '{{"meeting", "lunch"}, {"training", "presentation"}}');

INSERT INTO sal_emp
VALUES ('Carol',
        '{20000, 25000, 25000, 25000}',
        '{{"breakfast", "consulting"}, {"meeting", "lunch"}}');

INSERT INTO sal_emp
VALUES ('Bill_2',
        ARRAY [10000, 10000, 10000, 10000],
        ARRAY [['meeting', 'lunch'], ['training', 'presentation']]);

INSERT INTO sal_emp
VALUES ('Carol_2',
        ARRAY [20000, 25000, 25000, 25000],
        ARRAY [['breakfast', 'consulting'], ['meeting', 'lunch']]);

select name
from sal_emp
where pay_by_quarter[1] <> pay_by_quarter[2];
--Carol
--Carol_2

select name, pay_by_quarter[3]
from sal_emp;
--Bill,10000
--Carol,25000
--Bill_2,10000
--Carol_2,25000

select schedule[1:2][1:1]
from sal_emp
where name = 'Bill';
-- {{meeting},{training}}

select schedule[1:2][2:2]
from sal_emp
where name = 'Bill';
-- {{lunch},{presentation}}

update sal_emp
set pay_by_quarter = '{25,25,27,27}'
-- SET pay_by_quarter = ARRAY[25000,25000,27000,27000]
where name = 'Carol';
/*
Bill,"{10000,10000,10000,10000}","{{meeting,lunch},{training,presentation}}"
Bill_2,"{10000,10000,10000,10000}","{{meeting,lunch},{training,presentation}}"
Carol_2,"{20000,25000,25000,25000}","{{breakfast,consulting},{meeting,lunch}}"
Carol,"{25,25,27,27}","{{breakfast,consulting},{meeting,lunch}}"
*/

update sal_emp
set pay_by_quarter[1:2]=array [70,29]
where name = 'Bill_2';
/*
Bill,"{10000,10000,10000,10000}","{{meeting,lunch},{training,presentation}}"
Carol_2,"{20000,25000,25000,25000}","{{breakfast,consulting},{meeting,lunch}}"
Carol,"{25,25,27,27}","{{breakfast,consulting},{meeting,lunch}}"
Bill_2,"{70,29,10000,10000}","{{meeting,lunch},{training,presentation}}"

 */
