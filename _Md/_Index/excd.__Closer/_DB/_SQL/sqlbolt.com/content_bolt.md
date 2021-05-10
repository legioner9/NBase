<!-- Start Document Outline -->

* [SQL Lesson 2: Queries with constraints (Pt. 1)](#sql-lesson-2-queries-with-constraints-pt-1)
* [SQL Lesson 3: Queries with constraints (Pt. 2)](#sql-lesson-3-queries-with-constraints-pt-2)
* [SQL Lesson 4: Filtering and sorting Query results](#sql-lesson-4-filtering-and-sorting-query-results)
	* [ORDER BY](#order-by)
	* [DISTYNCT](#distynct)
* [SQL Review: Simple SELECT Queries](#sql-review-simple-select-queries)
	* [answers](#answers)
		* [OFFSET](#offset)
* [SQL Lesson 6: Multi-table queries with JOINs](#sql-lesson-6-multi-table-queries-with-joins)
	* [answers](#answers-1)
		* [INNER JOIN](#inner-join)
* [SQL Lesson 7: OUTER JOINs](#sql-lesson-7-outer-joins)
	* [answers](#answers-2)
		* [LEFT JOIN](#left-join)
* [SQL Lesson 8: A short note on NULLs](#sql-lesson-8-a-short-note-on-nulls)
	* [answers](#answers-3)
* [SQL Lesson 9: Queries with expressions](#sql-lesson-9-queries-with-expressions)
	* [Aliases for columns and tables](#aliases-for-columns-and-tables)
		* [answers](#answers-4)
			* [Expr In SELECT](#expr-in-select)
* [SQL Lesson 10: Queries with aggregates (Pt. 1)](#sql-lesson-10-queries-with-aggregates-pt-1)
	* [answers](#answers-5)
		* [MAX , SUM , AVG , Group BY](#max--sum--avg--group-by)
* [SQL Lesson 11: Queries with aggregates (Pt. 2)](#sql-lesson-11-queries-with-aggregates-pt-2)
	* [ansver](#ansver)
* [SQL Lesson 12: Order of execution of a Query](#sql-lesson-12-order-of-execution-of-a-query)
	* [answers](#answers-6)
* [SQL Lesson 13: Inserting rows](#sql-lesson-13-inserting-rows)
	* [answers](#answers-7)
		* [INSERT INTO](#insert-into)
* [SQL Lesson 14: Updating rows](#sql-lesson-14-updating-rows)
	* [answer](#answer)
		* [UPDATE](#update)
* [SQL Lesson 15: Deleting rows](#sql-lesson-15-deleting-rows)
* [answers](#answers-8)
	* [DELETE](#delete)
* [SQL Lesson 16: Creating tables](#sql-lesson-16-creating-tables)
	* [CREATE TABLE](#create-table)
		* [example](#example)
		* [answers](#answers-9)
* [SQL Lesson 17: Altering tables](#sql-lesson-17-altering-tables)
	* [ADD COLUMN](#add-column)
	* [DROP COLUMN](#drop-column)
	* [RENAME TO](#rename-to)
		* [answers](#answers-10)
* [SQL Lesson 18: Dropping tables](#sql-lesson-18-dropping-tables)
	* [answers](#answers-11)

<!-- End Document Outline -->
<a href="https://sqlbolt.com/lesson/select_queries_with_constraints" target="_blank">https://sqlbolt.com/lesson/select_queries_with_constraints</a>
    
    SELECT column, another_column, …
    FROM mytable
    WHERE condition
        AND/OR another_condition
        AND/OR …;
        
# SQL Lesson 2: Queries with constraints (Pt. 1)        
<a href="https://sqlbolt.com/lesson/select_queries_with_constraints" target="_blank">https://sqlbolt.com/lesson/select_queries_with_constraints</a>

| Operator                       | Condition                                | SQL Example                              |
|--------------------------------|------------------------------------------|------------------------------------------|
| =, !=, &lt; &lt;=, &gt;, &gt;= | Standard numerical operators             | col_name <span class="faux-keyword">!=</span> 4 |
| BETWEEN … AND …                | Number is within range of two values (inclusive) | col_name <span class="faux-keyword">BETWEEN</span> 1.5 <span class="faux-keyword">AND</span> 10.5 |
| NOT BETWEEN … AND …            | Number is not within range of two values (inclusive) | col_name <span class="faux-keyword">NOT BETWEEN</span> 1 <span class="faux-keyword">AND</span> 10 |
| IN (…)                         | Number exists in a list                  | col_name <span class="faux-keyword">IN</span> (2, 4, 6) |
| NOT IN (…)                     | Number does not exist in a list          | col_name <span class="faux-keyword">NOT IN</span> (1, 3, 5) |

# SQL Lesson 3: Queries with constraints (Pt. 2)
<a href="https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2" target="_blank">https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2</a>

| Operator       | Condition                                | Example                                  |
|----------------|------------------------------------------|------------------------------------------|
| =              | Case sensitive exact string comparison (<em>notice the single equals</em>) | col_name <span class="faux-keyword">=</span> "abc" |
| != or &lt;&gt; | Case sensitive exact string inequality comparison | col_name <span class="faux-keyword">!=</span> "abcd" |
| LIKE           | Case insensitive exact string comparison | col_name <span class="faux-keyword">LIKE</span> "ABC" |
| NOT LIKE       | Case insensitive exact string inequality comparison | col_name <span class="faux-keyword">NOT LIKE</span> "ABCD" |
| %              | Used anywhere in a string to match <br>                a sequence of zero or more characters (only with LIKE or NOT LIKE) | col_name <span class="faux-keyword">LIKE</span> "%AT%"<br><br>                (matches "<span class="uline">AT</span>", "<span class="uline">AT</span>TIC", "C<span class="uline">AT</span>" <br>                    or even "B<span class="uline">AT</span>S") |
| _              | Used anywhere in a string to match <br>                a single character (only with LIKE or NOT LIKE) | col_name <span class="faux-keyword">LIKE</span> "AN_"<br><br>                (matches "<span class="uline">AN</span>D", but not "<span class="uline">AN</span>") |
| IN (…)         | String exists in a list                  | col_name <span class="faux-keyword">IN</span> ("A", "B", "C") |
| NOT IN (…)     | String does not exist in a list          | col_name <span class="faux-keyword">NOT IN</span> ("D", "E", "F") |

# SQL Lesson 4: Filtering and sorting Query results

<a href="https://sqlbolt.com/lesson/filtering_sorting_query_results" target="_blank">https://sqlbolt.com/lesson/filtering_sorting_query_results</a>
#### ORDER BY

    SELECT column, another_column, …
    FROM mytable
    WHERE condition(s)
    ORDER BY column ASC/DESC
    LIMIT num_limit OFFSET num_offset;
#### DISTYNCT

    SELECT DISTINCT column, another_column, …
    FROM mytable
    WHERE condition(s);
    
# SQL Review: Simple SELECT Queries
<a href="https://sqlbolt.com/lesson/select_queries_review" target="_blank">https://sqlbolt.com/lesson/select_queries_review</a>

### answers

    Select City From north_american_cities Where Country = 'Mexico' Order By Population Desc Limit 2;
     
#### OFFSET

    Select City From north_american_cities Where Country = 'United States' Order By Population Desc Limit 2 Offset 2;
     

# SQL Lesson 6: Multi-table queries with JOINs
<a href="https://sqlbolt.com/lesson/select_queries_with_joins" target="_blank">https://sqlbolt.com/lesson/select_queries_with_joins</a>

    SELECT column, another_table_column, …
    FROM mytable
    INNER JOIN another_table 
        ON mytable.id = another_table.id
    WHERE condition(s)
    ORDER BY column, … ASC/DESC
    LIMIT num_limit OFFSET num_offset;
    
### answers
#### INNER JOIN

    SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id 
     
*
    
    SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id Where Boxoffice.Domestic_sales < Boxoffice.International_sales
     
*

    SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id Order By Rating Desc
        
# SQL Lesson 7: OUTER JOINs
<a href="https://sqlbolt.com/lesson/select_queries_with_outer_joins" target="_blank">https://sqlbolt.com/lesson/select_queries_with_outer_joins</a>

    SELECT column, another_column, …
    FROM mytable
    INNER/LEFT/RIGHT/FULL JOIN another_table 
        ON mytable.id = another_table.matching_id
    WHERE condition(s)
    ORDER BY column, … ASC/DESC
    LIMIT num_limit OFFSET num_offset;
### answers
#### LEFT JOIN

    SELECT Distinct Building_name FROM Buildings Left Join Employees On Buildings.Building_name= Employees.Building Where Employees.Role NotNull ;
     
*

    SELECT Distinct Buildings.Building_name , Employees.Role FROM Buildings Left Join Employees On Buildings.Building_name= Employees.Building ;
     
    
# SQL Lesson 8: A short note on NULLs
  
 <a href="https://sqlbolt.com/lesson/select_queries_with_nulls" target="_blank">https://sqlbolt.com/lesson/select_queries_with_nulls</a>
 
    SELECT column, another_column, …
    FROM mytable
    WHERE column IS/IS NOT NULL
    AND/OR another_condition
    AND/OR …;

### answers 

    SELECT DISTINCT building_name
    FROM buildings 
      LEFT JOIN employees
        ON building_name = building
    WHERE role IS NULL;
# SQL Lesson 9: Queries with expressions
<a href="https://sqlbolt.com/lesson/select_queries_with_expressions" target="_blank">https://sqlbolt.com/lesson/select_queries_with_expressions</a>

    SELECT particle_speed / 2.0 AS half_particle_speed
    FROM physics_data
    WHERE ABS(particle_position) * 10.0 > 500;
    
*

    SELECT col_expression AS expr_description, …
    FROM mytable;
    
*
#### Aliases for columns and tables

    SELECT column AS better_column_name, …
    FROM a_long_widgets_table_name AS mywidgets
    INNER JOIN widget_sales
      ON mywidgets.id = widget_sales.widget_id;
### answers
#### Expr In SELECT

    SELECT 	Title, (Domestic_sales + International_sales)/1000000 as sum   FROM movies Left Join Boxoffice On Id = Movie_id
     
*

    SELECT 	Title, Rating*10 as sum   FROM movies Left Join Boxoffice On Id = Movie_id
     
*

    SELECT 	Title   FROM movies Left Join Boxoffice On Id = Movie_id Where Year%2 = 0
    
# SQL Lesson 10: Queries with aggregates (Pt. 1)
<a href="https://sqlbolt.com/lesson/select_queries_with_aggregates" target="_blank">https://sqlbolt.com/lesson/select_queries_with_aggregates</a>

| Function                                 | Description                              |
|------------------------------------------|------------------------------------------|
| <strong>COUNT(</strong>*<strong>)</strong>, <strong>COUNT(</strong><span style="font-style: italic">column</span><strong>)</strong> | A common function used to counts the number of rows in the group if no column name is specified. <br>			Otherwise, count the number of rows in the group with non-NULL values in the specified column. |
| <strong>MIN(</strong><span style="font-style: italic">column</span><strong>)</strong> | Finds the smallest numerical value in the specified column for all rows in the group. |
| <strong>MAX(</strong><span style="font-style: italic">column</span><strong>)</strong> | Finds the largest numerical value in the specified column for all rows in the group. |
| <strong>AVG(</strong><span style="font-style: italic">column</span>)<strong></strong> | Finds the average numerical value in the specified column for all rows in the group. |
| <strong>SUM(</strong><span style="font-style: italic">column</span><strong>)</strong> | Finds the sum of all numerical values in the specified column for the rows in the group. |
| Docs:<br>			<a href="https://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html" title="MySQL Aggregate Functions">MySQL</a>,<br>			<a href="http://www.postgresql.org/docs/9.4/static/functions-aggregate.html" title="Postgres Aggregate Functions">Postgres</a>,<br>			<a href="http://www.sqlite.org/lang_aggfunc.html" title="SQLite Aggregate Functions">SQLite</a>,<br>			<a href="https://msdn.microsoft.com/en-us/library/ms173454.aspx" title="Microsoft SQL Server Aggregate Functions">Microsoft SQL Server</a><br>		 | Any                                      |

    SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
    FROM mytable
    WHERE constraint_expression
    GROUP BY column;

### answers 
#### MAX , SUM , AVG , Group BY

    SELECT * , MAX(Years_employed) FROM employees;
    SELECT * , AVG(Years_employed) FROM employees Group By Role;
    SELECT * , SUM(Years_employed) FROM employees Group By Building;
    
# SQL Lesson 11: Queries with aggregates (Pt. 2)
<a href="https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2" target="_blank">https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2</a>
  
    SELECT group_by_column, AGG_FUNC(column_expression) AS aggregate_result_alias, …
    FROM mytable
    WHERE condition
    GROUP BY column
    HAVING group_condition;
     
  
### ansver 

    SELECT role, COUNT(*) as Number_of_artists
    FROM employees
    WHERE role = "Artist";
.
    
    SELECT Role,Count(*)
    FROM employees Group By Role;
    
.
    
    SELECT Sum(Years_employed)
    FROM employees
    Where Role = 'Engineer';
Eqivalent ^

    SELECT role, SUM(years_employed)
    FROM employees
    GROUP BY role
    HAVING role = "Engineer";
    
# SQL Lesson 12: Order of execution of a Query
<a href="https://sqlbolt.com/lesson/select_queries_order_of_execution" target="_blank">https://sqlbolt.com/lesson/select_queries_order_of_execution</a>

    SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
    FROM mytable
        JOIN another_table
          ON mytable.column = another_table.column
        WHERE constraint_expression
        GROUP BY column
        HAVING constraint_expression
        ORDER BY column ASC/DESC
        LIMIT count OFFSET COUNT;

### answers

    /* own variant */
    SELECT *,count() FROM movies Group By Director;
    
    /* sqlbolt.com variant*/
    SELECT director, COUNT(id) as Num_movies_directed
    FROM movies
    GROUP BY director;
.

    /* It is TABLE many summa to one director */
    SELECT Director,  (Domestic_sales + International_sales) as summa 
    FROM movies  
    Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id
    
    /* own variant create mediate Table */
    SELECT Director ,SUM(summa)
      FROM ( SELECT Director,  (Domestic_sales + International_sales) as summa 
    FROM movies  
    Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id )
    Group By Director
    
    /* sqlbolt.com variant ONSE! SUM and create column */
    SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
    FROM movies
        INNER JOIN boxoffice
            ON movies.id = boxoffice.movie_id
    GROUP BY director;
     
# SQL Lesson 13: Inserting rows
<a href="https://sqlbolt.com/lesson/inserting_rows" target="_blank">https://sqlbolt.com/lesson/inserting_rows</a>



    INSERT INTO mytable
    (column, another_column, …)
    VALUES (value_or_expr, another_value_or_expr, …),
          (value_or_expr_2, another_value_or_expr_2, …),
          …;

.

    INSERT INTO boxoffice
    (movie_id, rating, sales_in_millions)
    VALUES (1, 9.9, 283742034 / 1000000);
    
### answers
#### INSERT INTO

    INSERT Into Movies
    VALUES (4,'Toy Story 4', John Lasseter, 2001, 89);
    
    INSERT Into Boxoffice
    VALUES (4,8.7,34000000, 270000000);
    
# SQL Lesson 14: Updating rows
<a href="https://sqlbolt.com/lesson/updating_rows" target="_blank">https://sqlbolt.com/lesson/updating_rows</a>


    UPDATE mytable
    SET column = value_or_expr, 
        other_column = another_value_or_expr, 
        …
    WHERE condition;
    
### answer
#### UPDATE

    Update movies 
    Set Director = "John Lasseter"  
    Where Title = "A Bug's Life";
    
    Update Movies
    Set Year = 1999 
    Where Title = "Toy Story 2";
    
    Update Movies 
    Set Director = "Lee Unkrich", Title = "Toy Story 3" 
    Where Title = "Toy Story 8";
    
# SQL Lesson 15: Deleting rows
<a href="https://sqlbolt.com/lesson/deleting_rows" target="_blank">https://sqlbolt.com/lesson/deleting_rows</a>

    DELETE FROM mytable
    WHERE condition;
    
# answers 
#### DELETE
    Delete FROM movies Where Year < 2005;
    Delete FROM movies Where Director = "Andrew Stanton";
    
# SQL Lesson 16: Creating tables
<a href="https://sqlbolt.com/lesson/creating_tables" target="_blank">https://sqlbolt.com/lesson/creating_tables</a>
#### CREATE TABLE
    CREATE TABLE IF NOT EXISTS mytable (
        column DataType TableConstraint DEFAULT default_value,
        another_column DataType TableConstraint DEFAULT default_value,
        …
    );
     
| Тип данных                               | Описание                                 |
|------------------------------------------|------------------------------------------|
| <code>INTEGER</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>BOOLEAN</code> | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Целочисленные типы данных могут хранить целые целые значения, такие как число или возраст. </font><font style="vertical-align: inherit;">В некоторых реализациях логическое значение просто представляется как целочисленное значение, равное 0 или 1.</font></font> |
| <code>FLOAT</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>DOUBLE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">,</font></font><code>REAL</code> | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Типы данных с плавающей точкой могут хранить более точные числовые данные, такие как измерения или дробные значения. </font><font style="vertical-align: inherit;">Различные типы могут использоваться в зависимости от точности с плавающей запятой, требуемой для этого значения.</font></font> |
| <code>CHARACTER(num_chars)</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>VARCHAR(num_chars)</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">,</font></font><code>TEXT</code> | <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Текстовые типы данных могут хранить строки и текст во всех видах локалей. </font><font style="vertical-align: inherit;">Различие между различными типами, как правило, сводится к тому, что при работе с этими столбцами основывается эффективность базы данных.</font></font></p><br>                <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Типы CHARACTER и VARCHAR (переменные символы) указываются с максимальным количеством символов, которое они могут хранить (более длинные значения могут быть усечены), поэтому может быть более эффективным для хранения и запроса с большими таблицами.</font></font></p> |
| <code>DATE</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>DATETIME</code> | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SQL также может хранить метки даты и времени для отслеживания временных рядов и данных о событиях. </font><font style="vertical-align: inherit;">С ними может быть сложно работать, особенно при манипулировании данными в разных часовых поясах.</font></font> |
| <code>BLOB</code>                        | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Наконец, SQL может хранить двоичные данные в BLOB-объектах прямо в базе данных. </font><font style="vertical-align: inherit;">Эти значения часто непрозрачны для базы данных, поэтому вам обычно нужно хранить их с правильными метаданными, чтобы запросить их.</font></font> |
| <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Документы:<br>                 </font></font><a href="http://dev.mysql.com/doc/refman/5.6/en/data-types.html" title="Типы данных MySQL"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">MySQL</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ,<br>                 </font></font><a href="http://www.postgresql.org/docs/9.4/static/datatype.html" title="Типы данных Postgres"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Postgres</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ,<br>                 </font></font><a href="https://www.sqlite.org/datatype3.html" title="Типы данных SQLite"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SQLite</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ,<br>                 </font></font><a href="https://msdn.microsoft.com/en-us/library/ms187752.aspx" title="Типы данных Microsoft SQL Server"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Microsoft SQL Server</font></font></a><br>             | Any                                      |
     
    
| скованность                     | Описание                                 |
|---------------------------------|------------------------------------------|
| <code>PRIMARY KEY</code>        | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Это означает, что значения в этом столбце являются уникальными, и каждое значение можно использовать для идентификации одной строки в этой таблице.</font></font> |
| <code>AUTOINCREMENT</code>      | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Для целочисленных значений это означает, что значение автоматически заполняется и увеличивается с каждой вставкой строки. </font><font style="vertical-align: inherit;">Не поддерживается во всех базах данных.</font></font> |
| <code>UNIQUE</code>             | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Это означает, что значения в этом столбце должны быть уникальными, поэтому вы не можете вставить в этот столбец еще одну строку с тем же значением, что и другая строка в таблице. </font><font style="vertical-align: inherit;">Отличается от `PRIMARY KEY` тем, что он не должен быть ключом для строки в таблице.</font></font> |
| <code>NOT NULL</code>           | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Это означает, что вставленное значение не может быть равно NULL.</font></font> |
| <code>CHECK (expression)</code> | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Это позволяет вам запускать более сложное выражение для проверки правильности введенных значений. </font><font style="vertical-align: inherit;">Например, вы можете проверить, что значения положительные или превышают определенный размер, или начать с определенного префикса и т. Д.</font></font> |
| <code>FOREIGN KEY</code>        | <font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Это проверка согласованности, которая гарантирует, что каждое значение в этом столбце соответствует другому значению в столбце в другой таблице. </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><br>                Например, если есть две таблицы, одна из которых перечисляет всех сотрудников по идентификатору, а другая перечисляет их информацию о заработной плате, `FOREIGN KEY` может гарантировать, что каждая строка в таблице заработной платы соответствует действительному сотруднику в основном списке сотрудников.</font></font> |

### example

    CREATE TABLE movies (
        id INTEGER PRIMARY KEY,
        title TEXT,
        director TEXT,
        year INTEGER, 
        length_minutes INTEGER
    );
    
### answers

    CREATE TABLE Database (
    id INTEGER PRIMARY KEY,
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
    );

# SQL Lesson 17: Altering tables
<a href="https://sqlbolt.com/lesson/altering_tables" target="_blank">https://sqlbolt.com/lesson/altering_tables</a>
#### ADD COLUMN
    ALTER TABLE mytable
    ADD column DataType OptionalTableConstraint 
        DEFAULT default_value;

#### DROP COLUMN
    ALTER TABLE mytable
    DROP column_to_be_deleted;
    
#### RENAME TO
    ALTER TABLE mytable
    RENAME TO new_table_name;
    
### answers
    Alter Table movies
    Add Aspect_ratio Float;
.

    Alter Table movies
    Add Language TEXT Default "English";

# SQL Lesson 18: Dropping tables
<a href="https://sqlbolt.com/lesson/dropping_tables" target="_blank">https://sqlbolt.com/lesson/dropping_tables</a>

    DROP TABLE IF EXISTS mytable;
    
#### answers 
    Drop Table if Exists Movies;
    Drop Table If Exists BoxOffice;