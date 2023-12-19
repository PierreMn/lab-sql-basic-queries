Use sakila;

-- 1. Display all available tables in the Sakila database.

show tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

select * from actor;
select * from film;
select * from customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
select title from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name as language from language; 

-- 3.3 List of first names of all employees from the staff table
select first_name from staff;

-- 4. Retrieve unique release years.
select distinct release_year from film order by release_year;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has -> 2
select count(store_id) from store; 

-- 5.2 Determine the number of employees that the company has -> 2
select count(staff_id) from staff;

-- 5.3 Determine how many films are available for rent (-> 1000) and how many have been rented (1000)
select count(film_id) from film ;
select distinct film_id, count(film_id) from inventory group by film_id;

-- 5.4 Determine the number of distinct last names of the actors in the database (200)
select distinct count(last_name) from actor;

-- Retrieve the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name = "SCARLETT" ;

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
select title, length from film where title like "%ARMAGEDDON%" and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
select title, special_features from film where special_features like "%Behind the Scenes%";
