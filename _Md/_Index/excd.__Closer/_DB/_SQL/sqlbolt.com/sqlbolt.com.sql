SELECT City , Population FROM north_american_cities Where Country = "Canada";
Select * From north_american_cities Where Country = "United States" ORDER by Latitude desc
SELECT * FROM north_american_cities Where Longitude < -87.629798 Order by Longitude;

SELECT Longitude FROM north_american_cities Where cities = Chicago { === -87.629798 }

SELECT * FROM north_american_cities Where Longitude <
 (SELECT Longitude FROM north_american_cities Where City = "Chicago")
 Order by Longitude;
 
Select City From north_american_cities Where Country = 'Mexico' Order By Population Desc Limit 2;
Select City From north_american_cities Where Country = 'United States' Order By Population Desc Limit 2 Offset 2;

less 6
SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id 
SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id Where Boxoffice.Domestic_sales < Boxoffice.International_sales
SELECT * FROM movies Inner Join Boxoffice On  Boxoffice.Movie_id = Movies.id Order By Rating Desc

less 7 
SELECT Distinct Building_name FROM Buildings Left Join Employees On Buildings.Building_name= Employees.Building Where Employees.Role NotNull ;
SELECT Distinct Buildings.Building_name , Employees.Role FROM Buildings Left Join Employees On Buildings.Building_name= Employees.Building ;

less 8
SELECT Distinct Buildings.Building_name FROM Buildings Left Join Employees On Buildings.Building_name= Employees.Building Where Employees.role IsNull

SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;

less 9
SELECT 	Title, (Domestic_sales + International_sales)/1000000 as sum   FROM movies Left Join Boxoffice On Id = Movie_id
SELECT 	Title, Rating*10 as sum   FROM movies Left Join Boxoffice On Id = Movie_id
SELECT 	Title   FROM movies Left Join Boxoffice On Id = Movie_id Where Year%2 = 0

les 10
SELECT * , MAX(Years_employed) FROM employees;
SELECT * , AVG(Years_employed) FROM employees Group By Role;
SELECT * , SUM(Years_employed) FROM employees Group By Building;

less 11

SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

SELECT Role,Count(*)  FROM employees Group By Role

SELECT Sum(Years_employed)  FROM employees Where Role = 'Engineer'

less 12 
/* own variant */
SELECT *,count() FROM movies Group By Director;

/* sqlbolt.com variant*/
SELECT director, COUNT(id) as Num_movies_directed
FROM movies
GROUP BY director;

/* TABLE many summa to one director */
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

less 13
/* own variant */
INSERT Into Movies
VALUES (4,'Toy Story 4', John Lasseter, 2001, 89);

INSERT Into Boxoffice
VALUES (4,8.7,34000000, 270000000);

/* sqlbolt.com variant*/
INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

less 14

Update movies 
Set Director = "John Lasseter"  
Where Title = "A Bug's Life";

Update Movies
Set Year = 1999 
Where Title = "Toy Story 2";

Update Movies 
Set Director = "Lee Unkrich", Title = "Toy Story 3" 
Where Title = "Toy Story 8";

less 14

Delete FROM movies Where Year < 2005;
Delete FROM movies Where Director = "Andrew Stanton";

less 15 

CREATE TABLE Database (
id INTEGER PRIMARY KEY,
Name TEXT,
Version FLOAT,
Download_count INTEGER
);

less 16 
Alter Table movies
Add Language TEXT Default "English";
