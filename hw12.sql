
/* 1) In the movie table, the movie length is shown in the length column. 
How many movies are longer than the average movie length? */
SELECT COUNT(*) 
FROM film WHERE length > ( SELECT AVG(length) 
						  FROM film );



									   
/*2) How many movies have the highest rental_rate in the movie table?*/

SELECT COUNT(*)
FROM film WHERE rental_rate = ( SELECT MAX(rental_rate)
							  FROM film);

/*3) In the film table, list the films with the lowest rental rate and the lowest replacement cost.  */

SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate)
					FROM film ) AND
					replacement_cost = (SELECT MAX(replacement_cost)
									   FROM film);
									   
								
/*4) In the payment table, list the customers who make the most purchases. */

SELECT customer_id, SUM(amount) 
FROM payment 
GROUP BY customer_id 
ORDER BY SUM(amount) DESC;
