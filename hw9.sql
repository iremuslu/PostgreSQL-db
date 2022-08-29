/* 1)Write the INNER JOIN query where we can see the city and country names in the city table and the country table together. */

SELECT city , country
FROM city 
INNER JOIN 
country ON country.country_id = city.country_id;


/* 2)Write the INNER JOIN query where we can see the customer table and the payment_id in the payment table and the first_name and last_name names in the customer table together. */


SELECT p.payment_id,c.first_name,c.last_name
FROM customer AS c
INNER JOIN
payment AS p ON c.customer_id = p.customer_id;



/* 3)Write the INNER JOIN query where we can see the customer table and the rental_id in the rental table and the first_name and last_name names in the customer table together. */

SELECT r.rental_id , c.first_name , c.last_name
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id;



