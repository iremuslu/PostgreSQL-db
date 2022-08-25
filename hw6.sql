--COUNT , MIN , MAX , SUM ,AVG 

/* 1)What is the average of the values ​​in the rental_rate column in the movie table? */ 

SELECT ROUND(AVG(rental_rate),2)
FROM film;


/* 2)How many of the movies in the movie table start with the character 'C'? */

SELECT COUNT(title),title
FROM film
WHERE title ILIKE 'C%'
GROUP BY title;

/* 3)Among the movies in the movie table, how many minutes is the longest (length) movie with a rental_rate equal to 0.99? */

SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;


/* 4)How many different replacement_cost values are there for the movies in the movie table that are longer than 150 minutes? */

SELECT  COUNT(DISTINCT(replacement_cost))
FROM film
WHERE length > 150;