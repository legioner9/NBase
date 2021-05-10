<!-- Start Document Outline -->

* [Язык манипуляции данными в SQL](#язык-манипуляции-данными-в-sql)
	* [(Глава 5) Оператор SELECT](#глава-5-оператор-select)
		* [(5.1) Простой оператор SELECT](#51-простой-оператор-select)
		* [Сортировка по дням рождения](#сортировка-по-дням-рождения)
		* [(5.2.) Предикаты I](#52-предикаты-i)
		* [(5.3.) Переименование столбцов и вычисления в результирующем наборе](#53-переименование-столбцов-и-вычисления-в-результирующем-наборе)
		* [(5.4.) Предикаты II](#54-предикаты-ii)
		* [(5.5.) Получение итоговых значений](#55-получение-итоговых-значений)
		* [(5.6.) Использование в запросе нескольких источников записей](#56-использование-в-запросе-нескольких-источников-записей)
		* [(5.7) Традиционные операции над множествами и оператор SELECT](#57-традиционные-операции-над-множествами-и-оператор-select)
		* [Реляционное деление](#реляционное-деление)
		* [(5.8) Использование ключевых слов SOME (ANY) и ALL с предикатами сравнения](#58-использование-ключевых-слов-some-any-и-all-с-предикатами-сравнения)
		* [(5.9.) Преобразование типов и оператор CAST](#59-преобразование-типов-и-оператор-cast)
		* [(5.10.) Оператор CASE](#510-оператор-case)
	* [(Глава 6) Операторы модификации данных](#глава-6-операторы-модификации-данных)
		* [(6.1.) Оператор INSERT](#61-оператор-insert)
		* [Конструктор значений таблицы](#конструктор-значений-таблицы)
		* [(6.2.) Оператор UPDATE](#62-оператор-update)
		* [(6.3.) Оператор DELETE](#63-оператор-delete)

<!-- End Document Outline -->	
# Язык манипуляции данными в SQL
<a href="http://sql-tutorial.ru/ru/book_sql_dml.html" target="_blank">http://sql-tutorial.ru/ru/book_sql_dml.html</a>

## (Глава 5) Оператор SELECT
<a href="http://sql-tutorial.ru/ru/book_select_statement.html" target="_blank">http://sql-tutorial.ru/ru/book_select_statement.html</a>

### (5.1) Простой оператор SELECT
<a href="http://sql-tutorial.ru/ru/book_simple_select_statement.html" target="_blank">http://sql-tutorial.ru/ru/book_simple_select_statement.html</a>

    SELECT DISTINCT speed, ram 
    FROM PC;
    
Res
    
    speed  ram
    500	64
    750	128
    600	128
    500	32
    450	64
    450	32
    900	128
    800	128
    
#
    SELECT DISTINCT speed, ram 
    FROM PC 
    ORDER BY ram DESC;
    
Res

    450	32
    500	32
    450	64
    500	64
    600	128
    750	128
    800	128
    900	128

### Сортировка по дням рождения
<a href="http://sql-tutorial.ru/ru/book_sorting_in_order_of_days_of_birth.html" target="_blank">http://sql-tutorial.ru/ru/book_sorting_in_order_of_days_of_birth.html</a>

### (5.2.) Предикаты I
<a href="http://sql-tutorial.ru/ru/book_predicates_1.html" target="_blank">http://sql-tutorial.ru/ru/book_predicates_1.html</a>

### (5.3.) Переименование столбцов и вычисления в результирующем наборе
<a href="http://sql-tutorial.ru/ru/book_renaming_columns_calculations_in_result_set.html" target="_blank">http://sql-tutorial.ru/ru/book_renaming_columns_calculations_in_result_set.html</a>

### (5.4.) Предикаты II
<a href="http://sql-tutorial.ru/ru/book_predicates_2.html" target="_blank">http://sql-tutorial.ru/ru/book_predicates_2.html</a>

### (5.5.) Получение итоговых значений
<a href="http://sql-tutorial.ru/ru/book_getting_summarizing_values.html" target="_blank">http://sql-tutorial.ru/ru/book_getting_summarizing_values.html</a>

### (5.6.) Использование в запросе нескольких источников записей
<a href="http://sql-tutorial.ru/ru/book_using_multiple_tables_in_query.html" target="_blank">http://sql-tutorial.ru/ru/book_using_multiple_tables_in_query.html</a>

### (5.7) Традиционные операции над множествами и оператор SELECT
http://sql-tutorial.ru/ru/book_set_theoretic_operations_and_select_statement.html

### Реляционное деление
http://sql-tutorial.ru/ru/book_relational_division.html

### (5.8) Использование ключевых слов SOME (ANY) и ALL с предикатами сравнения 
http://sql-tutorial.ru/ru/book_using_any_all_keywords_with_comparison_predicates.html

### (5.9.) Преобразование типов и оператор CAST
http://sql-tutorial.ru/ru/book_type_conversion_and_cast_function.html

### (5.10.) Оператор CASE
http://sql-tutorial.ru/ru/book_case_statement.html

## (Глава 6) Операторы модификации данных
<a href="http://sql-tutorial.ru/ru/book_data_modification_statements.html" target="_blank">http://sql-tutorial.ru/ru/book_data_modification_statements.html</a>

### (6.1.) Оператор INSERT
http://sql-tutorial.ru/ru/book_operator_insert.html

### Конструктор значений таблицы
http://sql-tutorial.ru/ru/book_table_values_constructor.html

### (6.2.) Оператор UPDATE
http://sql-tutorial.ru/ru/book_update_statement.html

### (6.3.) Оператор DELETE
http://sql-tutorial.ru/ru/book_delete_statement.html