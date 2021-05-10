## Приложение A
ОТВЕТЫ ДЛЯ УПРАЖНЕНИЙ

### Глава 1
 
 
1. cnum 
 
2. rating 
 
3. Другим словом для строки является - запись. Другим словом для столбца 
   является - поле. 
 
4. Потому что строки, по определению, находятся без какого либо 
   определенного упорядочения. 
 
### Глава 2
 
 
1. Символ ( или текст ) и номер 
 
2. Нет 
 
3. Язык Манипулирования Данными (ЯЗЫК DML) 
 
4. Это слово в SQL имеет специальное учебное значение. 
 
### Глава 3
 
 
    1. SELECT onum, amt, odate 
         FROM Orders; 
     
    2. SELECT * 
          FROM Customers 
          WHERE snum = 1001; 
     
    3 SELECT city, sname, snum, comm 
         FROM Salespeople; 
     
    4. SELECT rating, cname 
          FROM Customers 
          WHERE city = 'SanJose'; 
     
    5. SELECT DISTINCT snum 
          FROM Orders; 
     
 
 
### Глава 4
 
    1. SELECT * FROM Orders WHERE amt > 1000; 
     
    2. SELECT sname, city 
          FROM Salespeople 
          WHERE city = 'London' 
            AND comm > .10; 
     
    3. SELECT * 
          FROM Customers 
          WHERE rating > 100 
            OR city = 'Rome'; 
     
     или 
      SELECT * 
         FROM Customers 
         WHERE NOT rating < = 100 
           OR city = 'Rome'; 
     или 
      SELECT * 
         FROM Customers 
         WHERE NOT (rating < = 100 
           AND city < > 'Rome'); 
     
    Могут быть еще другие решения. 
     
     
    4. onum      amt   odate    cnum  snum 
     
       3001      18.69  10/03/1990  2008  1007 
     
       3003     767.19  10/03/1990  2001  1001 
     
       3005    5160.45  10/03/1990  2003  1002 
     
       3009    1713.23  10/04/1990  2002  1003 
     
       3007      75.75  10/04/1990  2004  1002 
     
       3008    4723.00  10/05/1990  2006  1001 
     
       3010    1309.95  10/06/1990  2004  1002 
     
       3011    9891.88  10/06/1990  2006  1001 
     
    5. onum    amt      odate   cnum  snum 
     
       3001    18.69    10/03/1990  2008  1007 
     
       3003    767.19   10/03/1990  2001  1001 
     
     
      onum    amt    odate     cnum snum 
     
      3006  1098.16  10/03/1990   2008  1007 
     
      3009  1713.23  10/04/1990   2002  1003 
     
      3007  75.75    10/04/1990   2004  1002 
     
      3008  4723.00  10/05/1990   2006  1001 
     
      3010  1309.95  10/06/1990   2004  1002 
     
      3011  9891.88  10/06/1990   2006  1001 
     
    6. SELECT * 
          FROM Salespeople; 
 
### Глава 5
 
 
    1. SELECT * 
          FROM Orders 
          WHERE odate IN (10/03/1990,10/04/1990); 
     
       и 
       SELECT * 
          FROM Orders 
          WHERE odate BETWEEN 10/03/1990 AND 10/04,1990; 
     
    2. SELECT * 
          FROM Customers 
          WHERE snum IN (1001,1004); 
     
    3. SELECT * 
          FROM Customers 
          WHERE cname BETWEEN 'A' AND 'H'; 
 
> ПРИМЕЧАНИЕ: ВЫ ASCII базовой системе Hoffman не будет выве ден из-за конечных пробелов после H. По той же самой причине вторая граница не может быть G, поскольку она не выведет имена Giovanni и Grass. G может использоваться в сопровождении с Z, так чтобы следовать за другими символами в алфавитном порядке, а не предшествовать им, как это делают пробелы.
 
 
    4. SELECT * 
          FROM Customers 
          WHERE cname LIKE 'C%'; 
     
    5. SELECT * 
          FROM Orders 
          WHERE amt < > O 
             AND (amt IS NOT NULL); 
      или 
       SELECT * 
          FROM Orders 
          WHERE NOT (amt = O 
             OR amt IS NULL); 
### Глава 6
 
 
    1. SELECT COUNT(*) 
          FROM Orders 
          WHERE odate = 10/03/1990; 
     
    2. SELECT COUNT (DISTINCT city) 
          FROM Customers; 
     
    3. SELECT cnum, MIN (amt) 
          FROM Orders 
          GROUP BY cnum; 
     
    4. SELECT MIN (cname) 
         FROM Customers 
         WHERE cname LIKE 'G%'; 
     
    5. SELECT city, 
          MAX (rating) 
          FROM Customers 
      GROUP BY city; 
 
6. SELECT odate, count (DISTINCT snum 
     FROM Orders 
     GROUP BY odate; 
 
 
### Глава 7
 
 
    1. SELECT onum, snum, amt * .12 
          FROM Orders; 
     
    2. SELECT 'For the city ', city, ', the highest rating is ',  ", 
       MAX (rating) 
          FROM Customers 
          GROUP BY city; 
     
    3. SELECT rating, cname, cnum 
         FROM Customers 
         ORDER BY rating DESC; 
     
    4. SELECT odate, SUM (amt) 
          FROM Orders 
          GROUP BY odate 
          ORDER BY 2 DESC; 
 
### Глава 8
 
 
    1. SELECT onum, cname 
          FROM Orders, Customers 
          WHERE Customers.cnum = Orders.cnum; 
     
    2. SELECT onum, cname, sname 
          FROM Orders, Customers, Salespeople 
          WHERE Customers.cnum = Orders.cnum 
            AND Salespeople.snum = Orders.snum; 
     
    3. SELECT cname, sname, comm 
          FROM Salespeople, Customers 
          WHERE Salespeople.snum = Customers.snum 
            AND comm * .12; 
     
    4. SELECT onum, comm * amt 
          FROM Salespeople, Orders, Customers 
          WHERE rating > 100 
            AND Orders.cnum = Customers.cnum 
            AND Orders.snum = Salespeople.snum; 
 
### Глава 9
 
 
    1. SELECT first.sname, second.sname 
          FROM Salespeople first, Salespeople second 
          WHERE first.city = second.city 
            AND first.sname < second.sname; 
     
    Псевдонимам нет необходимости иметь именно такие имена. 
     
    2. SELECT cname, first.onum, second.onum 
          FROM Orders first, Orders second, Customers 
          WHERE first.cnum = second.cnum 
            AND first.cnum = Customers.cnum 
            AND first.onum < second.onum; 
    Ваш вывод может иметь некоторые отличи, но в вашем ответе все логические компоненты должны быть такими же.
     
    3. SELECT a.cname, a.city 
          FROM Customers a, Customers b 
          WHERE a.rating = b.rating 
            AND b.cnum = 2001; 
 
 
### Глава 10
 
     
    1. SELECT * 
          FROM Orders 
          WHERE cnum = 
          (SELECT cnum 
              FROM Customers 
              WHERE cname = 'Cisneros'); 
     
      или 
       SELECT * 
          FROM Orders 
          WHERE cnum IN 
            (SELECT cnum 
                FROM Customers 
                WHERE cname = 'Cisneros'); 
     
    2. SELECT DISTINCT cname, rating 
          FROM Customers, Orders 
          WHERE amt > 
            (SELECT AVG (amt) 
                FROM Orders) 
            AND Orders.cnum = Customers.cnum; 
     
    3. SELECT snum, SUM (amt) 
         FROM Orders 
         GROUP BY snum 
         HAVING SUM (amt) > 
            (SELECT MAX (amt) 
                FROM Orders); 
     
 
### Глава 11
 
 
    1. SELECT cnum, cname 
          FROM Customers outer 
          WHERE rating = 
            (SELECT MAX (rating) 
             FROM Customers inner 
             WHERE inner.city = outer.city); 
     
    2. Решение с помощью соотнесенного подзапроса: 
     
       SELECT snum, sname 
          FROM Salespeople main 
          WHERE city IN 
            (SELECT city 
                FROM Customers inner 
                WHERE inner.snum < > main.snum); 
     
       Решение с помощью объединения: 
     
       SELECT DISTINCT first.snum, sname 
          FROM Salespeople first, Customers second 
          WHERE first.city = second.city 
             AND first.snum < > second.snum; 
 
Соотнесенный подзапрос находит всех заказчиков, не обслуживаемых данным продавцом, и выясняет: живет ли кто-нибудь из их в его городе. Решение с помощью объединения является более простым и более инту- итивным. Оно находит случаи где пол city совпадают, а пол snums нет. Следовательно объединение является более изящным решением для этой проблемы, чем то которое мы исследовали до этого. Имеется еще более изящное решение с помощью подзапроса, с которым Вы столкнетесь позже.
### Глава 12
 
 
    1. SELECT * 
          FROM Salespeople first 
          WHERE EXISTS 
            (SELECT * 
                FROM Customers second 
                WHERE first.snum = second.snum 
                  AND rating = 300); 
     
    2. SELECT a.snum, sname, a.city, comm 
          FROM Salespeople a, Customers b 
          WHERE a.snum = b.snum 
            AND b.rating = 300; 
     
    3. SELECT * 
          FROM Salespeople a 
          WHERE EXISTS 
            (SELECT * 
                FROM Customers b 
                WHERE b.city = a.city 
                  AND a.snum < > b.snum); 
     
    4. SELECT * 
          FROM Customers a 
          WHERE EXISTS 
           (SELECT * 
               FROM Orders b 
               WHERE a.snum = b.snum 
                 AND a.cnum < > b.cnum) 
 
### Глава 13
 
 
    1. SELECT * 
          FROM Customers 
          WHERE rating > = ANY 
            (SELECT rating 
                FROM Customers 
                WHERE snum = 1002); 
     
    2.   cnum   cname    city   rating   snum 
     
         2002   Giovanni  Rome      200     1003 
     
         2003   Liu       San Jose  200     1002 
     
         2004   Grass     Berlin    300     1002 
     
         2008   Cisneros  SanJose   300     1007 
     
    3.  SELECT * 
           FROM Salespeople 
           WHERE city < > ALL 
             (SELECT city 
                 FROM Customers); 
     
     или 
     
      SELECT * 
         FROM Salespeople 
         WHERE NOT city = ANY 
           (SELECT city 
               FROM Customers); 
     
    4.  SELECT * 
           FROM Orders 
           WHERE amt > ALL 
             (SELECT amt 
                 FROM Orders a, Customers b 
                 WHERE a.cnum = b.cnum 
                   AND b.city = 'London'); 
     
    5.  SELECT * 
           FROM Orders 
           WHERE amt > 
             (SELECT MAX (amt) 
                 FROM Orders a, Customers b 
                 WHERE a.cnum = b.cnum 
                   AND b.city = 'London'); 
 
### Глава 14

    1.  SELECT cname, city, rating, 'High Rating' 
           FROM Customers 
           WHERE rating > = 200 
     
           UNION 
     
        SELECT cname, city, rating, ' Low Ratlng' 
           FROM Customers 
           WHERE rating < 200; 
     
       или 
     
        SELECT cname, city, rating, 'High Rating' 
           FROM Customers 
           WHERE rating > = 200 
     
           UNION 
     
           SELECT cname, city, rating, ' Low Rating' 
              FROM Customers 
              WHERE NOT rating > = 200; 
 
Различие между этими двум предложениями, в форме второго предиката. Обратите внимание что, в обоих случаях, строка "Low Rating" имеет в начале дополнительный пробел для того чтобы совпадать со строкой "High Rating" по длине.
 
 
    2. SELECT cnum, cname 
          FROM Customers a 
          WHERE 1 < 
           (SELECT COUNT (-) 
               FROM Orders b 
               WHERE a.cnum = b.cnum) 
     
               UNION 
     
       SELECT snum, sname 
          FROM Salespeople a 
          WHERE 1 < 
            (SELECT COUNT (*) 
                FROM Orders b 
                WHERE a.snum = b.snum) 
     
          ORDER BY 2; 
     
    3. SELECT snum 
          FROM Salespeople 
          WHERE city = 'San Jose' 
     
          UNION 
     
      (SELECT cnum 
          FROM Customers 
          WHERE city = 'San Jose' 
     
          UNION ALL 
     
      SELECT onum 
         FROM Orders 
         WHERE odate = 10/03/1990); 
         
### Глава 15
 

    1. INSERT INTO Salespeople (city, cname, comm, cnum) 
    VALUES ('San Jose', 'Blanco', NULL, 1100); 
    
    2. DELETE FROM Orders WHERE cnum = 2006; 
    
    3. UPDATE Customers 
    SET rating = rating + 100 
    WHERE city = 'Rome'; 
    
    4. UPDATE Customers 
    SET snum = 1004 
    WHERE snum = 1002; 

### Глава 16
 

1. INSERT INTO Multicust 
SELECT * 
     FROM Salespeople 
     WHERE 1 < 
       (SELECT COUNT (*) 
           FROM Customers 
           WHERE Customers.snum = Salespeople.snum); 
    
    2. DELETE FROM Customers 
    WHERE NOT EXISTS 
    (SELECT * 
        FROM Orders 
        WHERE cnum = Customers.cnum); 
    
    3. UPDATE Salespeople 
    SET comm = comm + (comm * .2) 
    WHERE 3000 < 
    (SELECT SUM (amt) 
        FROM Orders 
        WHERE snum = Salespeople.snum); 
    В более сложный вариант этой команды можно было бы вставить проверку чтобы убедиться, что значения комиссионных не превышают 1.0 ( 100 % ):
     
    
    UPDATE Salespeople 
    SET comm = comm + (comm * .2) 
    WHERE 3000 < 
    (SELECT SUM (amt) 
       FROM Orders 
       WHERE snum = Salespeople.snum) 
       AND comm + (comm * .2) < 1.0; 
Эти проблемы могут иметь другие, такие же хорошие решения.
### Глава 17
    1. CREATE TABLE Customers 
    (cnum   integer, 
    cname  char(10), 
    city    char(10), 
    rating  integer, 
    snum   integer); 
    
    2. CREATE INDEX Datesearch ON Orders(odate); 
    
    ( Все индексные имена используемые в этих ответах - произвольные. ) 
    
    3. CREATE UNIQUE INDEX Onumkey ON Orders(onum); 
    
    4. CREATE INDEX Mydate ON Orders(snum, odate); 
    
    5. CREATE UNIQUE INDEX Combination ON 
    Customers(snum, rating);

### Глава 18
 

    1. CREATE TABLE Orders 
    (onum   integer NOT NULL PRIMARY KEY, 
    amt    decimal, 
    odate  date NOT NULL, 
    cnum  integer NOT NULL, 
    snum  integer NOT NULL, 
    UNIOUE (snum, cnum)); 
    
    или 
    
    CREATE TABLE Orders 
    (onum   integer NOT NULL UNIQUE, 
    amt    decimal, 
    odate  date NOT NULL, 
    cnum  integer NOT NULL, 
    snum  integer NOT NULL, 
    UNIQUE (snum, cnum)); 
    
    Первое решение предпочтительнее. 
    
    2. CREATE TABLE Salespeople 
    (snum   integer NOT NULL PRIMARY KEY, 
    sname  char(15) CHECK (sname BETWEEN 'AA' AND 'MZ'), 
    city    char(15), 
    comm  decimal NOT NULL DEFAULT = .10); 
    
    3.  CREATE TABLE Orders 
    (onum   integer NOT NULL, 
    amt    decimal, 
    odate  date, 
    cnum  integer NOT NULL, 
    snum  integer NOT NULL, 
    CHECK ((cnum > snum) AND (onum > cnum))); 
### Глава 19
 

    1. CREATE TABLE Cityorders 
    (onum   integer NOT NULL PRIMARY KEY, 
    amt    decimal, 
    cnum  integer, 
    snum  integer, 
    city   char (15), 
    FOREIGN KEY (onum, amt, snum) 
        REFERENCES Orders (onum, amt, snum), 
    FOREIGN KEY (cnum, city) 
        REFERENCES Customers (cnum, city) ); 
    
    2. CREATE TABLE Orders 
    (onum   integer NOT NULL, 
    amt    decimal, 
    odate  date, 
    cnum  integer NOT NULL, 
    snum  integer, 
    prev   integer, 
        UNIQUE (cnum, onum), 
        FOREIGN KEY (cnum, prev) REFERENCES Orders (cnum,onum) );9 
 
### Глава 20
 
 
    1. CREATE VIEW Highratings 
          AS SELECT * 
             FROM Customers 
             WHERE rating = 
               (SELECT MAX (rating) 
                FROM Customers); 
     
     
    2. CREATE VIEW Citynumber 
          AS SELECT city, COUNT (DISTINCT snum) 
             FROM Salespeople 
             GROUP BY city; 
     
    3. CREATE VIEW Nameorders 
          AS SELECT sname, AVG (amt), SUM (amt) 
             FROM Salespeople, Orders 
             WHERE Salespeople.snum = Orders.snum 
             GROUP BY sname; 
     
    4. CREATE VIEW Multcustomers 
         AS SELECT * 
            FROM Salespeople a 
            WHERE 1 < 
              (SELECT COUNT (*) 
                  FROM Customers b 
                  WHERE a.snum = b.snum); 
 
### Глава 21
 
 
    1. #1 - не модифицируемый, потому что он использует DISTINCT. 
       #2 - не модифицируемый, потому что он использует объединение, 
              агрегатную функцию, и GROUP BY. 
       #3 - не модифицируемый, потому что он основывается на #1, который 
              сам по себе не модифицируемый. 
     
    2. CREATE VIEW Commissions 
          AS SELECT snum, comm 
             FROM Salespeople 
             WHERE comm BETWEEN .10 AND .20 
             WITH CHECK OPTION; 
     
    3. CREATE TABLE Orders 
         (onum integer NOT NULL PRIMARY KEY, 
          amt decimal, 
          odate date DEFAULT VALUE = CURDATE, 
          snum integer, 
          cnum integer); 
      CREATE VIEW Entryorders 
         AS SELECT onum, amt, snum, cnum 
         FROM Orders; 
     
 
### Глава 22
 
 
    1. GRANT UPDATE (rating) ON Customers TO Janet; 
     
    2. GRANT SELECT ON Orders TO Stephen WITH GRANT OPTION; 
     
    3. REVOKE INSERT ON Salespeople FROM Claire; 
     
    4. Шаг 1: CREATE VIEW Jerrysview 
                 AS SELECT * 
                    FROM Customers 
                    WHERE rating BETWEEN 100 AND 500 
                    WITH CHECK OPTION; 
     
       Шаг 2: GRANT INSERT, UPDATE ON Jerrysview TO Jerry; 
     
    5. Шаг 1: CREATE VIEW Janetsview 
                 AS SELECT * 
                    FROM Customers 
                    WHERE rating = 
                       (SELECT MIN (rating) 
                           FROM Customers); 
     
       Шаг 2: GRANT SELECT ON Janetsview TO Janet; 
     
 
### Глава 23
 
 
    1. CREATE DBSPACE Myspace 
          (pctindex 15, 
           pctfree 40); 
     
    2. CREATE SYNONYM Orders FOR Diane.Orders; 
     
    3. Они должны быть откатаны обратно назад. 
     
    4. Блокировка взаимоисключающего доступа. 
     
    5. Только чтение 
### Глава 24
 
    1. SELECT a.tname, a.owner, b.cname, b.datatype 
          FROM SYSTEMCATOLOG a, SYSTEMCOLUMNS b 
          WHERE a.tname = b.tname 
            AND a.owner = b.owner 
            AND a.numcolumns > 4; 
Обратите Внимание: из-за того что большинство имен столбца объединяемых таблиц - различны, не все из используемых псевдонимов a и b в вышеупомянутой команде - строго обязательны. Они представлены просто для понимания.
     
     
    2. SELECT tname, synowner, COUNT (ALL synonym) 
          FROM SYTEMSYNONS 
          GROUP BY tname, synowner; 
     
    3 SELECT COUNT (*) 
         FROM SYSTEMCATALOG a 
         WHERE numcolumns/2 < 
           (SELECT COUNT (DISTINCT cnumber) 
               FROM SYSTEMINDEXES b 
               WHERE a.owner = b.tabowner 
                 AND a.tname = b.tname); 
 
Глава 25
 
 
    1.  EXEC SQL BEGIN DECLARE SECTION; 
           SQLCODE:integer; 
        {требуемый всегда} 
           cnum     integer; 
           snum     integer; 
           custnum: integer; 
           salesnum: integer; 
        EXEC SQL END DECLARE SECTION; 
        EXEC SQL DECLARE Wrong_Orders AS CURSOR FOR 
           SELECT cnum, snum 
              FROM Orders a 
              WHERE snum < > 
                (SELECT snum 
                    FROM Customers b 
                    WHERE a.cnum = b.cnum); 
     
    Мы пока еще используем здесь SQL для выполнения основной работы. Запрос выше размещает строки таблицы Порядков которые не согласуются с таблицей Заказчиков.
     
      EXEC SQL DECLARE Cust_assigns AS CURSOR FOR 
         SELECT cnum, snum 
            FROM Customers; 
    {Этот курсор используется для получения правильных значений snum}
     
      begin { основная программа } 
    EXEC SQL OPEN CURSOR Wrong_Orders; 
    while SQLCODE = O do 
    {Цикл до тех пор пока Wrong_Orders не опустеет}
     
      begin 
      EXEC SQL FETCH Wrong_Orders INTO 
       (:cnum, :snum); 
      if SQLCODE = O then 
            begin 
    {Когда Wrong_Orders опустеет, мы не хотели бы продолжать выполнение этого цикла до бесконечности}
     
      EXEC SQL OPEN CURSOR Cust_Assigns; 
         repeat 
             EXEC SQL FETCH Cust_Assigns 
                INTO (:custnum, :salesnum); 
         until :custnum = :cnum; 
    {Повторять FETCH до тех пор пока ... команда будет просматривать Cust_Assigns курсор до строки которая соответствует текущему значению cnum найденного в Wrong_Orders}
     
     
         EXEC SQL CLOSE CURSOR Cust_assigns; 
     
    {Поэтому мы будем начинать новый вывод в следующий раз через цикл. Значение в котором мы получим из этого курсора сохраняется в переменной - salesnum.}
     
         EXEC SQL UPDATE Orders 
            SET snum = :salesnum 
            WHERE CURRENT OF Wrong_Orders; 
         end; {Если SQLCODE = 0}. 
      end; 
    { Пока SQLCODE . . . выполнить }
     
    EXEC SQL CLOSE CURSOR Wrong_Orders; 
    end; { основная программа } 
     
     
    2.
    Для данной программы которую использовал, решение будет состоять в том, чтобы просто включить поле onum, первичным ключом таблицы Порядков, в курсор Wrong_Orders. В команде UPDATE, вы будете затем использовать предикат WHERE onum =:ordernum ( считая целую переменную - odernum, объявленой), вместо WHERE CURRENT Of Wrong_Orders. Результатом будет программа наподобие этой ( большинство комментариев из предыдущей программы здесь исключены ):
     
     
    EXEC SQL BEGIN DECLARE SECTION; 
       SQLCODE:   integer; 
       odernum      integer; 
       cnum         integer; 
       snum         integer; 
       custnum:     integer; 
       salesnum:    integer; 
    EXEC SQL END DECLARE SECTION; 
    EXEC SQL DECLARE Wrong_Orders AS CURSOR FOR 
       SELECT onum, cnum, snum 
          FROM Orders a 
          WHERE snum < > 
            (SELECT snum 
                FROM Customers b 
    WHERE a.cnum = b.cnum); 
    EXEC SQL DECLARE Cust _ assigns AS CURSOR FOR 
       SELECT cnum, snum 
          FROM Customers; 
    begin { основная программа } 
    EXEC SQL OPEN CURSOR Wrong_Orders; 
    while SQLCODE = O do {Цикл до тех пор пока Wrong_Orders 
    не опустеет} 
       begin 
       EXEC SQL FETCH Wrong_Orders 
          INTO (:odernum, :cnum, :snum); 
       if SQLCODE = O then 
           begin 
           EXEC SQL OPEN CURSOR Cust_Assigns; 
           repeat 
              EXEC SQL FETCH Cust_Assigns 
                 INTO (:custnum, :salesnum); 
           until :custnum = :cnum; 
     
           EXEC SQL CLOSE CURSOR Cust_assigns; 
           EXEC SQL UPDATE Orders 
              SET snum = :salesnum 
              WHERE CURRENT OF Wrong_Orders; 
           end; {If SQLCODE = 0} 
        end; { While SQLCODE . . . do } 
    EXEC SQL CLOSE CURSOR Wrong_Orders; 
    end; { main program } 
     
    3. EXEC SQL BEGIN DECLARE SECTION; 
          SQLCODE  integer; 
          newcity      packed array[1. .12] of char; 
          commnull    boolean; 
          citynull     boolean; 
          response    char; 
     
       EXEC SQL END DECLARE SECTION; 
       EXEC SQL DECLARE CURSOR Salesperson AS 
          SELECT * FROM SALESPEOPLE; 
       begln { main program } 
       EXEC SQL OPEN CURSOR Salesperson; 
       EXEC SQL FETCH Salesperson 
          INTO (:snum, :sname, :city:i_cit, :comm:i_com); 
     
    {Выборка первой строки} 
    while SQLCODE = O do 
    {Пока эти строки в таблице Продавцов.} 
          begin 
          if i_com < O then commnull: = true; 
          if i_cit < O then citynull: = true; 
    { Установить логические флаги которые могут показать NULLS.} 
     
          if citynull then 
                begin 
                write  ('Нет текущего значения city для продавца ', 
                snum,   ' Хотите предоставить хотя бы одно? (Y/N)'); 
     
    {Подсказка покажет значение city состоящее из NULL значений.} 
     
                 read (ответ); 
     
    {Ответ может быть сделан позже.} 
     
                 end {если конечно - citynull} 
     
          else { не citynull } 
              begin 
              if not commnull then 
     
    { Чтобы выполнять сравнение и операции только для не-NULL значений 
      связи } 
                  begin 
                  if city = 'London' then comm: = comm * .02 * .02 
                        else comm: = comm + .02; 
                  end; 
    {Даже если значение и не - commnull, begin и end здесь для ясности.} 
     
             write ('Текущий city для продавца', 
                     snum, 'есть', city, 
                     Хотите его изменить? (Y/N)'); 
     
    3.  Обратите Внимание: Продавец не назначенный в данное время 
        в определенный город, не будет иметь изменений комиссионных 
        при определении находится ли он в Лондоне. 
     
        read (ответ); 
     
        {Ответ теперь имеет значение независимо от того что 
         citynull - верен или неверен.} 
     
              end; {иначе не citynull} 
        if response = 'Y' then 
              begin 
              write ('Введите новое значение city:'); 
              read (newcity); 
              if not commnull then 
     
        {Эта операция может быть выполнена только для не-NULL 
         значений. } 
     
                  case newcity of: 
                     begin 
                    'Barcelona':comm:= comm + .01, 
                    'San Jose': comm: = comm *.01 
                     end; {случно и если не commnull} 
              EXEC SQL UPDATE Salespeople 
                 SET city = :newcity, comm = :comm:i_com 
                 WHERE CURRENT OF Salesperson; 
     
        {Переменна индикатора может поместить NULL значение в поле 
         comm если так назначено.} 
     
                 end; { Если ответ = 'Y', или если ответ < > 'Y', 
                        изменений не будет. } 
                 EXEC SQL FETCH Salesperson 
                    INTO (:snum, :sname, :city:i_clt, 
                     :comm:l_com); 
     
    {выборка следующей строки} 
       end; {если SQLCODE = 0} 
       EXEC SQL CLOSE CURSOR Salesperson; 
       end; {основной программы} 
       
## Приложение B
### ТИПЫ ДАННЫХ В SQL
Типы данных распознаваемые с помощью ANSI, состоят из символов и различных типов чисел, которые могут классифицироваться как точные числа и приблизительные числа. Точные числовые типы - это номера, с десятичной точкой или без десятичной точки. Приблизительные числовые типы - это номера в показательной ( экспоненциальной по основанию - 10 ) записи. Для все прочих типов, отличи слишком малы чтобы их как-то классифицировать.
Иногда типы данных используют аргумент, который называю размером аргумента, чей точный формат и значение меняется в зависимости от конкретного типа. Значения по умолчанию обеспечены для всех типов, если размер аргумента отсутствует.
#### ТИПЫ ANSI
Ниже представлены типы данных ANSI ( имена в круглых скобках - это синонимы ):
##### TEXT	ТЕКСТ
CHAR(или CHARACTER)	Строка текста в реализационно-определенном формате. Размер аргумента здесь это единственное неотрицательное целое число которое ссылается к максимальной длине строки. Значения этого типа, должны быть заключены в одиночные кавычки, например 'text'. Две рядом стоящие одиночные кавычки ('') внутри строки будет пониматься как одна одиночна кавычка (').
> ПРИМЕЧАНИЕ:
Здесь и далее, фраза Реализационно-Определенный или Реализационно-Зависимый, указывает, что этот аргумент или формат зависит от конкретной программы в которой реализуются данные.

##### EXACT NUMERIC	
ТОЧНОЕ ЧИСЛО

##### DEC (или DECIMAL)
Десятичное число; то есть, число которое мoжет иметь десятичную точку. Здесь аргумент размера имеет две части: точность и масштаб.Масштаб не может превышать точность. Cначала указывается точность, разделительная запятая и далее аргумент масштаба. Точность указывает сколько значащих цифр имеет число. Максимальное десятичное число составляющее номер - реализационно-определенное значение, равное или большее чем этот номер. Масштаб указывает максимальное число цифр справа от десятичной точки. Масштаб = нулю делает поле эквивалентом целого числа.
##### NUMERIC
Такое же как DECIMAL за исключением того, что максимальное десятичное не может превышать аргумента точности.
##### INT( или INTEGER)
Число без десятичной точки. Эквивалентно DECIMAL, но без цифр справа от десятичной точки, то есть с масштабом равным 0. Аргумент размера не используется (он автоматически устанавливается в реализационно-зависимое значение).
##### SMALLINT
Такое же как INTEGER, за исключением того, что, в зависимости от реализации, размер по умолчанию может ( или не может ) быть меньшее чем INTEGER.
##### APPROXIMATE NUMERIC
ПРИБЛИЗИТЕЛЬНОЕ ЧИСЛО
##### FLOAT	
Число с плавающей запятой на основе 10 показательной функции. Аргумент размера состоит из одного числа определяющего минимальную точность.
##### REAL
Такое же как FLOAT, за исключением того, что никакого аргумента размера не используется. Точность установлена реализационно-зависимую по умолчанию.
##### DOUBLE PRECISION ( или DOUBLE )
Такое же как REAL, за исключением того, что реализационно-определяемая точность для DOUBLE PRECISION должна превышать реализационно-определяемую точность REAL.
#### ЭКВИВАЛЕНТНЫЕ ТИПЫ ДАННЫХ В ДРУГИХ ЯЗЫКАХ
Когда используется вложение SQL в другие языки, значения используемые и произведенные командами SQL, обычно сохраняются в переменных главного языка( см. Главу 25 ). Эти переменные должны иметь тип данных совместимый со значениями SQL, которые они будут получать. В дополнениях, которые не являются частью официального SQL стандарта, ANSI обеспечивает поддержку при использовании вложения SQL в четыре языка: Паскаль, PL/I, КОБОЛ, и ФОРТРАН. Между прочим, он включает определение эквивалентов SQL, для данн- ых типов переменных используемых в этих языках.

    Эквиваленты типов данных четырех языков определенных ANSI:
    ПЛ/I
    SQL ТИП	ЭКВИВАЛЕНТ ПЛ/I
    CHAR	CHAR
    DECIMAL	FIXED DECIMAL
    INTEGER	FIXED BINARY
    FLOAT	FLOAT BINARY
    КОБОЛ
    SQL ТИП	ЭКВИВАЛЕНТ КОБОЛА
    CHAR ()	PIC X ()
    INTEGER	PIC S () USAGE COMPUTTATIONAL
    NUMERIC	PIC S ( < nines with embedded V > ) DISPLAY SING LEADING SEPERATE
    ПАСКАЛЬ
    SQL ТИП	ЭКВИВАЛЕНТ ПАСКАЛЯ
    INTEGER	INTEGER
    REAL	REAL
    CHAR ()	PACKED ARRAY [1..] OF CHAR
    ФОРТРАН
    SQL ТИП	ЭКВИВАЛЕНТ ФОРТРАНА
    CHAR	CHAR
    INTEGER	INTEGER
    REAL	REAL
    DOUBLE PRECISION	DOUBLE PRECISION

## Приложение C
### НЕКОТОРЫЕ ОБЩИЕ HЕСТАНДАРТНЫЕ СРЕДСТВА SQL
Имеется ряд особенностей языка SQL, которые пока не определены как часть стандарта ANSI или стандарта ISO (Международная Организация По Стандартизации), и являются общими для многочисленных реализаций, так как они были получены для практического использования. Это дополнительные элементы чисел этих особенностей. Конечно, эти особенности меняются от программы к программе, и их обсуждение предназначено только чтобы показать некоторые общие подходы к ним.
#### TИПЫ ДАННЫХ
Типы данных поддерживаемые стандартом SQL, собраны в Приложении B. Это количество для CHARACTER и разнообразие числовых типов. Реализация их может, фактически, быть значительно сложнее чем показано в терминах типов, которые они фактически могут использовать. Мы будем здесь обсуждать ряд таких нестандартных типов данных.
#### ТИПЫ DATE И TIME
Как упомянуто в Главе 2, тип данных DATE широко поддерживается, даже если он не часть стандарта. Мы использовали ранее в нашей таблице Порядков, этот тип использующий формат mm/dd/yyyy. Это стандартный формат IBM в США. Разумеется возможны и другие форматы, и программные реализации часто поддерживают ряд форма- тов, позволяя вам выбирать тот который лучше для вас подходит. Реализация которая предлагает эту особенность должна быть способна преобразовывать дату одного формата в другой - автоматически. Имеются несколько основных форматов даты с которыми вы можете столкнуться:

    
  | Стандарт                                 | Формат | Пример                |
|------------------------------------------|--------|-----------------------|
| Международная Организация По Стандартизации | (ISO)  | yyyy-mm-dd	1990-10-31 |
| Японский Индустриальный Стандарт         | (JIS)  | yyyy-mm-dd	1990-10-31 |
| IBM Европейский Стандарт                 | (EUR)  | dd.mm.yyyy	10.31.1990 |
  
    
Наличие специального типа определяемого для даты, дает возможность выполнять арифметические операции с датами. Например, вы можете добавлять число дней к дате и получать другую дату, в программе, самостоятельно следящей за числом дней в месяцах, високосными годами, и так далее. Даты могут также сравниваться; например фраза, дата A < дата B , означает, что дата A предшествует дате B по времени. Кроме даты, большое количество программ определяют специальный тип для времени, который может также быть представлен в ряде форматов, включая следующие:



| Стандарт                                 | Формат | Пример              |
|------------------------------------------|--------|---------------------|
| МЕЖДУНАРОДНАЯ ОРГАНИЗАЦИЯ ПО СТАНДАРТИЗАЦИИ | (ISO)  | hh-mm-ss	21.04.37   |
| Японский Индустриальный Стандарт         | (JIS ) | hh-mm-ss	21.04.37   |
| IBM Европейский Стандарт                 |        | hh-mm-ss            |
| IBM USA Стандарт                         | (USA)  | hh.mm AM/PM	9.04 PM |

Время может добавляться или сравниваться точно также как дата, с коррекцией числа секунд в минутах или часах автоматически. Кроме того, специально встроенные константы указывающие текущую дату или время ( CURDATE или CURTIME ) являются общими. Они похожи на константу USER (Пользователь) в которой их значение будет непрерывно меняться. Можете ли вы включать врем и дату в одно поле ? Некоторые реализации определяют тип DATE достаточно точно, чтобы включать туда еще и TIME. В качестве альтернативы, третий обобщающий тип, TIMESTAMP, может быть определен как комбинация этих двух.

#### ТИПЫ ТЕКСТОВОЙ СТРОКИ
ANSI поддерживает только один тип чтобы представлять текст. Это - тип CHAR. Любое поле такого типа должно иметь определенную длину. Если строка вставлена в поле меньше чем длина пол, она дополняется пробелами; строка не может быть длиннее чем длина пол.
Хотя и достаточно удобное, это определение все же имеет некоторые ограничения для пользователя. Например, символьные поля должны иметь одинаковую длину чтобы можно было выполнить команду UNION. Большинство реализаций, поддерживают строки переменной длины для типов данных VARCHAR и LONG VARCHAR( или просто LONG). В то врем как поле типа CHAR всегда может распределить память для максимального числа символов которое может сохраняться в поле, поле VARCHAR при любом количестве символов, может распределить только определенное количество памяти чтобы сохранить фактическое содержание поля, хотя SQL может установить снаружи, некоторое дополнительное пространство памяти чтобы следить за текущей длиной пол. Поле VARCHAR может быть любой длинны включая реализационно-определяемый максимум. Этот максимум может меняться от 254 до 2048 символов для VARCHAR, и до 16000 символов для LONG. LONG обычно используется для текста пояснительного характера или для данных, которые не могут легко сжиматься в простые значения полей; VARCHAR может использоваться для любой текстовой строки чья длина может меняться. Между прочим, не всегда хорошо использовать VARCHAR вместо CHAR. Извлечение и модифицирование полей VARCHAR - более сложный, и следовательно более медленный процесс, чем извлечение и модифицирование полей CHAR. Кроме того, некоторое количество памяти VARCHAR, остается всегда неиспользованной (в резерве) для гарантии вмещения всей длины строки. Вы должны просчитывать, насколько значения полей могут меняться по длине, а также, способны ли они к объединению с другими полями, перед тем как решить, использовать CHAR или VARCHAR. Часто, тип LONG используется для сохранения двоичных данных. Естественно, что использование размера такого "неуклюжего" пол будет ограничивать оперативность SQL. Проконсультируйтесь с вашим руководством.

#### КОМАНДА FORMAT
Как мы подчеркивали в Главе 7, процесс вывода выполняемого в стандарте SQL - ограничен. Хотя большинство реализаций включают SQL в пакеты, имеющие другие средства для управления этой функцией, некоторые реализации также используют команду типа FORMAT внутри SQL чтобы навзывать выводу запроса, определенные формы, структуры, или ограничения. Среди возможных функций команды FORMAT - существуют такие:
* определение ширины столбцов ( при печати ).
* oпределение представления NULL значений.
* обеспечение (новых) заголовков для столбцов.
обеспечение заголовков внизу или вверху страниц выводимых на печать.
* навязывает присвоение или изменение форматам полей содержащих значения даты, времени или денежной суммы.
* вычисляет общие и промежуточные суммы не исключая возможности обобщения поля, как это делает например SUM.
(Альтернативным подходом к этой проблеме в некоторых программах является предложение COMPUTE.)

Команда FORMAT может вводиться сразу перед или сразу после запроса к которому она применяется, в зависимости от реализации. Одна команда FORMAT обычно может применяться только к одному запросу, хотя любое число команд FORMAT может применяться к одному и тому же запросу. Вот некоторые примеры команды FORMAT:

 
       FORMAT NULL '_ _ _ _ _ _ _'; 
       FORMAT BTITLE 'Orders Grouped by Salesperson';
       FORMAT EXCLUDE (2, 3);
Первая из их значения NULL представляется в виде ' _ _ _ _ _ _ _ ' при выводе на печать; вторая вставляет заголовок 'Orders Grouped by Salesperson' в нижнюю часть каждой страницы; треть исключает второй и третий столбцы из вывода предыдущего запроса. Вы могли бы использовать последнюю из их если вы выбираете конкретные столбцы, чтобы использовать их в предложении ORDER BY, в вашем выводе. Так как указанные функции команды FORMAT могут выполняться по разному, весь набор их приложений не может быть здесь показан.

Имеются другие команды которые могут использоваться для выполнения тех же функций. Команда SET подобна команде FORMAT; она является вариантом или дополнением к команде, которая применяется во всех запросах текущего сеанса пользователя а не просто в одиночном запросе. В следующей реализации, команда FORMAT начинается ключевым словом COLUMN следующим образом:

    COLUMN odate FORMAT dd-mon-yy;

что навязывает формат типа - 10-Oct-90 в поле даты использующемся в выводе запроса на печать. Предложение COMPUTE, упомянутое ранее, вставляется в запрос, следующим образом:

        SELECT odate, amt
           FROM Orders 
           WHERE snum = 1001
           COMPUTE SUM (amt); 
Оно выводит все порядки продавца Peel, с датой и суммой приобретения по каждой дате, а в конце, общую сумму приобретений. Другая реализация выводит промежуточные суммы приобретений используя COMPUTE в качестве команды. Сначала, она определяет разбивку

 
            BREAK ON odate; 
вывода вышеупомянутого запроса на страницы - сгруппировав их по датам, поэтому все значения odate в каждой группе - одинаковые. Затем вы можете ввести следующее предложение:

           COMPUTE SUM OF amt ON odate;
 
Столбец в предложении ON, предварительно, должен быть использован в команде BREAK.
#### ФУНКЦИИ
Для SQL в стандарте ANSI, вы можете применять агрегатные функции для столбцов или использовать их значения в скалярных выражениях,таких например как - comm * 100. Имеется много других полезных функций, которые вы, вероятно встречали на практике.

Имеется список некоторых общих функций SQL отличающихся от стандартных агрегатов. Они могут использоваться в предложениях SELECT запросов, точно так же как агрегатные функции, но эти функции выполняются для одиночных значений а не групповых. В следующем списке они классифицированы согласно типам данных с которыми они выполняются. Если нет примечаний, то переменные в этом списке стандартизированы для любого выражения значений соответствующего типа, которые могут быть использованы в предложении SELECT:

##### МАТЕМАТИЧЕСКИЕ ФУНКЦИИ
Эти функции применяются для чисел.


| ФУНКЦИЯ       | ЗНАЧЕНИЕ                                 |
|---------------|------------------------------------------|
| ABX(X)        | Абсолютное значение из X ( преобразование отрицательного или положительного значений в положительное ) |
| CEIL (X)      | X - является десятичным значением которое будет округляться сверху. |
| FLOOR (X)     | X - является десятичным значением которое будет округляться снизу. |
| GREATEST(X,Y) | Возвращает большее из двух значений.     |
| LEAST(X,Y)    | Возвращает меньшее из двух значений.     |
| MOD(X,Y)      | Возвращает остаток от деления X на Y.    |
| POWER(X,Y)    | Возвращает значение X в степени Y.       |
| ROUND(X,Y)    | Цикл от X до десятичного Y. Eсли Y отсутствует, цикл до целого числа. |
| SING(X)       | Bозвращает минус если X < 0, или плюс если X > 0. |
| SQRT (X)      | Возвращает квадратный корень из X.       |


##### СИМВОЛЬНЫЕ ФУНКЦИИ
Эти функции могут быть применены для строк текста, либо из столбцов текстовых типов данных, либо из строк литерных текстов, или же комбинация из этих двух.

| ФУНКЦИЯ       | ЗНАЧЕНИЕ                                 |
|---------------|------------------------------------------|
| LEFT(,X)      | Возвращает крайние левые(старшие) символы X из строки. |
| RICHT(,X)     | Возвращает символы X младшего разряда из строки |
| ASCII()       | Возвращает код ASCII которым представляется строка в памяти компьютера. |
| CHR()         | Возвращает принтерные символы кода ASCII. |
| VALUE()       | Возвращает математическое значение для строки. Считается что строка имеет тип CHAR или VARCHAR, но состоит из чисел. VALUE('3') |
| UPPER()       | Преобразует все символы строки в символы верхнего регистра. |
| LOWER()       | Преобразует все символы строки в символы нижнего регистра. |
| INlTCAP()     | Преобразует символы строки в заглавные буквы. В некоторых реализациях может иметь название - PROPER. |
| LENGTH()      | Возвращает число символов в строке.      |
| \             | \                                        |
| LPAD(,X,'*' ) | Дополняет строку слева звездочками '*', или любым другим указанным символом, с количестве, определяем ом X. |
| RPAD(,X, ")   | То же самое что и LPAD, за исключением того, что дополнение делается справа. |
| SUBSTR(,X,Y)  | Извлекает Y символов из строки начиная с позиции X. |




##### ФУНКЦИИ ДАТЫ И ВРЕМЕНИ
Эти функции выполняются только для допустимых значений даты или времени.


| ФУНКЦИЯ   | ЗНАЧЕНИЕ                                 |
|-----------|------------------------------------------|
| DAY()     | Извлекает день месяца из даты. Подобные же функции существуют для MONTH(МЕСЯЦ), YEAR(ГОД), HOUR(ЧАСЫ), SECOND(СЕКУНДЫ) и так далее. |
| WEEKDAY() | Извлекает день недели из даты.           |

##### ДРУГИЕ ФУНКЦИИ
Эта функция может быть применена к любому типу данных.

| ФУНКЦИЯ | ЗНАЧЕНИЕ                                 |
|---------|------------------------------------------|
| NVL(,)  | NVL (NULL Значение) будет меняться на значение каждое NULL значение найденное в столбце . Если полученное значение не =NULL, NVL ничего не делает. |

##### INTERSECT И MINUS
Команда UNION, как вы уже видели в Главе 14, может объединить два запроса, объединив их вывод в один. Два других обычно имеющихся способа объединения отдельных запросов - это INTERSECT(Плюс) и MINUS(Минус). INTERSECT выводит только строки произведенные обоими перекрестными запросами, в то врем как MINUS выводит строки которые производятся одним запросом, но не другим. Следовательно, следующие два запроса

      SELECT * 
         FROM Salespeople
         WHERE city = 'London' 
 
         INTERSECT 
 
      SELECT * 
         FROM Salespeople 
         WHERE 'London' IN 
            (SELECT city 
                FROM Customers 
                WHERE Customers.snum = 
                 Salespeople.snum); 
выведут строки произведенные обоими запросами, производящими всех продавцов в Лондоне которые имели по крайней мере одного заказчика размещенного там также. С другой стороны, запрос
      SELECT * 
         FROM Salespeople 
         WHERE city = 'London' 
 
         MINUS 
 
      SELECT * 
         FROM Salespeople 
         WHERE 'London' IN 
            (SELECT sity 
                FROM Customers 
                WHERE Customers.snum = 
                 Salespeople.snum); 
удалит строки выбранные вторым запросом из вывода первого, и таким образом будут выведены все продавцы в Лондоне которые не имели там заказчиков. MINUS иногда еще называют DIFFERENCE (ОТЛИЧИЕ)
#### АВТОМАТИЧЕСКИЕ ВНЕШНИЕ ОБЪЕДИНЕНИЯ
В Главе 14, мы обсуждали внешнее объединение и показывали вам как выполнять его используя команду UNION. Некоторые программы базы данных имеют более непосредственный способ выполнения внешних объединений. В некоторых реализациях, вводимый знак " + " после предиката, может выводить строки которые удовлетворяют условию также как и строки которые ему не удовлетворяют. В условии предиката может содержаться поле совпадающее для обеих таблиц, и NULL значения будут вставлены там, где такого совпадения не будет найдено. Например, предположим вы хотите видеть ваших продавцов и соответствующих им заказчиков, не исключая тех продавцов которым не назначено ни одного заказчика ( хотя такого нет в наших типовых таблицах, но в действительности это возможно ) :
 
        SELECT a.snum, sname, cname 
           FROM Salespeople a, Customers b 
           WHEREa.snum = b.snum(+); 
Это является эквивалентом следующего объединения (UNION):
 
        SELECT a.snum, sname, cname 
           FROM Salespeople a, Customers b 
           WHERE a.snum = b.snum 
 
           UNION 
 
        SELECT snum, sname, '_ _ _ _ _ _ _ _ _ _' 
           FROM Salespeople 
           WHERE snum NOT IN 
              (SELECT snum 
                  FROM Customers); 
Мы считаем что подчеркивания будут отображены NULL значениями( см. команду FORMAT ранее в этом приложении где описывалось отображение NULL значениями).
#### ОТСЛЕЖИВАНИЕ ДЕЙСТВИЙ
Ваша SQL реализация - достаточна хороша, если она доступна многим пользователям, чтобы обеспечивать для них некий способ слежения за действиями выполняемыми в базе данных. Имеются две основные формы чтобы делать это:

    Journaling(Протоколирование) и  Auditing(Ревизия). 
 
Эти формы отличаются по назначению.
Journaling, применяется с целью защиты ваших данных, при разрушении вашей системы. Сначала Вы используете реализационно-зависимую процедуру чтобы архивировать текущее содержание вашей базы данных, поэтому копия ее содержания где-нибудь будет сохранена. Затем вы просматриваете протокол изменений сделанных в базе данных. Он сохраняется в некоторой области памяти, но не в главной памяти базы данных, а желательно на отдельном устройстве, и содержит список всех команд которые произвели изменения в структуре или в содержании базы данных. Если у вас вдруг появились проблемы и текущее содержание вашей базы данных оказалось нарушенным, вы можете повторно выполнить все изменения зарегистрированные в протоколе на резервной копии ва шей базы данных, и снова привести вашу базу данных в состояние которое было до момента последней записи в протокол. Типичной командой, чтобы начать протоколирование, будет следующая:
 
    SET JOURNAL ON; 
Auditing используется c целью защиты. Она следит за тем, кто и какие действия выполнял в базе данных, и сохраняет эту информацию в таблице доступной только очень немногим высоко привилегированным пользователям. Конечно, вы редко будете прибегать к процедуре ревизии, потому что очень скоро она займет много памяти и вам будет сложно работать в вашей базе данных. Но вы можете устанавливать ревизию для опре- деленных пользователей, определенных действий или определенных объектов данных. Имеется такая форма команды AUDIT:
 
    AUDIT INSERT ON Salespeople BY Diane; 
Или предложение ON или предложение BY могут быть исключены, устанавливая ревизию, либо всех объектов или всех пользователей, соответственно. Применение AUDIT ALL, вместо AUDIT INSERT, приведет к отслеживанию всех действий Diane в таблице Продавцов.

## Приложение E
### ТАБЛИЦЫ, ИСПОЛЬЗУЕМЫЕ В SQL
 
 
====================  ТАБЛИЦА 1:  ПРОДАВЦЫ  ================ 
 
      ---------------------------------------------- 
        snum  |   sname   |  city        |   comm 
      --------|-----------|--------------|---------- 
        1001  |  Peel     |  London      |    .12 
        1002  |  Serres   |  San Jose    |    .13 
        1004  |  Motika   |  London      |    .11 
        1007  |  Rifkin   |  Barcelona   |    .15 
        1003  |  Axelrod  |  New York    |    .10 
       --------------------------------------------- 
 
 
 
==================  ТАБЛИЦА 2:  ЗАКАЗЧИКИ  =============== 
 
       ---------------------------------------------- 
        cnum  |  cname     | city    | rating | snum 
       -------|------------|---------|--------|------ 
        2001  |  Hoffman   | London  |   100  | 1001 
        2002  |  Giovanni  | Rome    |   200  | 1003 
        2003  |  Liu       | SanJose |   200  | 1002 
        2004  |  Grass     | Berlin  |   300  | 1002 
        2006  |  Clemens   | London  |   100  | 1001 
        2008  |  Cisneros  | SanJose |   300  | 1007 
        2007  |  Pereira   | Rome    |   100  | 1004 
       ---------------------------------------------- 
 
 
 
==================  ТАБЛИЦА 3:   ПОРЯДКИ  ================== 
 
       ----------------------------------------------- 
        onum  |    amt    |    odate    | cnum | snum 
       -------|-----------|-------------|------|------ 
        3001  |    18.69  |  10/03/1990 | 2008 | 1007 
        3003  |   767.19  |  10/03/1990 | 2001 | 1001 
        3002  |  1900.10  |  10/03/1990 | 2007 | 1004 
        3005  |  5160.45  |  10/03/1990 | 2003 | 1002 
        3006  |  1098.16  |  10/03/1990 | 2008 | 1007 
        3009  |  1713.23  |  10/04/1990 | 2002 | 1003 
        3007  |    75.75  |  10/04/1990 | 2004 | 1002 
        3008  |  4723.00  |  10/05/1990 | 2006 | 1001 
        3010  |  1309.95  |  10/06/1990 | 2004 | 1002 
        3011  |  9891.88  |  10/06/1990 | 2006 | 1001 
       ----------------------------------------------- 
