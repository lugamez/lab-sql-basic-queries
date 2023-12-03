USE SAKILA;

/* 1. Display all available tables in the Sakila database.
*/

SHOW TABLES;

/* 2. Retrieve all the data from the tables actor, film and customer.
*/

SELECT * FROM SAKILA.ACTOR;
SELECT * FROM SAKILA.FILM;
SELECT * FROM SAKILA.CUSTOMER;

/* 3. Retrieve the following columns from their respective tables:
3.1 Titles of all films from the film table
*/

SELECT TITLE FROM SAKILA.FILM;

/* 3. Retrieve the following columns from their respective tables:
3.2 List of languages used in films, with the column aliased as language from the language table
*/

SELECT NAME AS "LANGUAGE" FROM SAKILA.LANGUAGE;

/* 3. Retrieve the following columns from their respective tables:
3.3 List of first names of all employees from the staff table
*/

SELECT FIRST_NAME FROM SAKILA.STAFF;

/* 4. Retrieve unique release years.
*/

SELECT DISTINCT RELEASE_YEAR FROM SAKILA.FILM;

/* 5. Counting records for database insights:
5.1 Determine the number of stores that the company has.
*/

SELECT COUNT(STORE_ID) FROM SAKILA.STORE;

/* 5. Counting records for database insights:
5.2 Determine the number of employees that the company has.
*/

SELECT COUNT(STAFF_ID) FROM SAKILA.STAFF;

/* 5. Counting records for database insights:
5.3 Determine how many films are available for rent and how many have been rented.
*/

SELECT COUNT(RENTAL_ID) FROM SAKILA.RENTAL; /* FILMS AVAILABLE FOR RENT */
SELECT COUNT(RENTAL_DATE) FROM SAKILA.RENTAL; /* FILMS RENTED */

SELECT * FROM SAKILA.RENTAL;

/* 5. Counting records for database insights:
5.4 Determine the number of distinct last names of the actors in the database.
*/

SELECT COUNT(DISTINCT LAST_NAME) FROM SAKILA.ACTOR;

/* 6. Retrieve the 10 longest films.
*/

SELECT * FROM SAKILA.FILM
ORDER BY LENGTH DESC 
LIMIT 10;

/* Use filtering techniques in order to:
7.1 Retrieve all actors with the first name "SCARLETT".
*/

SELECT * FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'SCARLETT';

/* 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
*/

SELECT * FROM SAKILA.FILM
WHERE TITLE LIKE '%ARMAGEDDON%' AND LENGTH>100;

/* 7.3 Determine the number of films that include Behind the Scenes content
*/
SELECT * FROM SAKILA.FILM
WHERE SPECIAL_FEATURES LIKE '%Behind the Scenes%';
