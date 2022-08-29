/* 1)
Write the LEFT JOIN query where we can see the city and country names in the city table and the country table together. */

SELECT c.city , ct.country
FROM city AS c
LEFT JOIN country AS ct
ON c.country_id = ct.country_id;


/* 2)Write the RIGHT JOIN query where we can see the customer table and the payment_id in the payment table and the first_name and last_name names in the customer table together. */

SELECT p.payment_id , c.first_name , c.last_name
FROM customer AS c
RIGHT JOIN payment as p
ON c.customer_id = p.customer_id;


/* 3)Write the FULL JOIN query where we can see the customer table and the rental_id in the rental table and the first_name and last_name names in the customer table together. */

SELECT r.rental_id , c.first_name , c.last_name
FROM customer AS c
FULL JOIN rental as r
ON c.customer_id = r.customer_id;


