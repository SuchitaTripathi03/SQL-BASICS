##SQL COMMANDS  
## ques 1) Identify the primary keys and foreign keys in maven movies db. Discuss the differences
## ans1 ) Primary Keys (PK): A primary key is a column or a set of columns that uniquely identifies each record in a table. It cannot contain NULL values and must be unique. The script defines primary keys using PRIMARY KEY (column_name). For example, actor_id is the primary key for the actor table.

##Foreign Keys (FK): A foreign key is a column or a set of columns in one table that links to the primary key of another table. It establishes a relationship between the two tables. The script defines foreign keys using FOREIGN KEY (column_name) REFERENCES other_table(other_column). For example, the city table has a country_id foreign key that references the country_id in the country table. This means each city record is linked to a specific country record.
## ques 2)  List all details of actors
USE Mavenmovies;
SELECT * FROM actor;
## ques 3) List all customer information from DB.
SELECT * FROM customer;
## ques 4)List different countries.
SELECT * FROM country;
##ques 5)Display all active customers.
SELECT * FROM customer WHERE active = 1;
## ques 6)List of all rental IDs for customer with ID 1
SELECT rental_id FROM rental WHERE customer_id = 1;
## ques 7)Display all the films whose rental duration is greater than 5
SELECT * FROM film WHERE rental_duration > 5;
## ques 8)List the total number of films whose replacement cost is greater than $15 and less than $20
SELECT COUNT(*) FROM film WHERE replacement_cost BETWEEN 15 AND 20;
## ques 9) Display the count of unique first names of actors.
SELECT COUNT(DISTINCT first_name) FROM actor;
##ques 10) Display the first 10 records from the customer table .
SELECT * FROM customer LIMIT 10;
##ques 11)Display the first 3 records from the customer table whose first name starts with ‘b’.
SELECT * FROM customer WHERE first_name LIKE 'b%' LIMIT 3;
##ques 12)Display the names of the first 5 movies which are rated as ‘G
SELECT title FROM film WHERE rating = 'G' LIMIT 5;
## ques 13)-Find all customers whose first name starts with "a".
SELECT * FROM customer WHERE first_name LIKE 'A%';
##ques 14)- Find all customers whose first name ends with "a".
SELECT * FROM customer WHERE first_name LIKE '%a';
##ques 15- Display the list of first 4 cities which start and end with ‘a’ .
SELECT * FROM city WHERE city LIKE 'A%a' LIMIT 4;
##ques 16- Find all customers whose first name have "NI" in any position.
SELECT * FROM customer WHERE first_name LIKE '%NI%';
## ques 17- Find all customers whose first name have "r" in the second position .
SELECT * FROM customer WHERE first_name LIKE '_r%';
##ques 18 - Find all customers whose first name starts with "a" and are at least 5 characters in length.
SELECT * FROM customer WHERE first_name LIKE 'a____%';
##ques 19- Find all customers whose first name starts with "a" and ends with "o".
SELECT * FROM customer WHERE first_name LIKE 'a%o';
##ques 20 - Get the films with pg and pg-13 rating using IN operator.
SELECT * FROM film WHERE rating IN ('PG', 'PG-13');
##ques 21 - Get the films with length between 50 to 100 using between operator.
SELECT * FROM film WHERE length BETWEEN 50 AND 100;
##ques 22) - Get the top 50 actors using limit operator.
SELECT * FROM actor LIMIT 50;
## ques23) - Get the distinct film ids from inventory table.
SELECT DISTINCT film_id FROM inventory;