-- Write the LEFT JOIN query that we can see the city and country names in the city table and country table together.
SELECT
    c.city, co.country
FROM city AS c
LEFT JOIN country AS co
ON c.country_id = co.country_id;

-- we can see the payment_id in the customer table and payment table together with the first_name and last_name names in the customer table.
-- Write the RIGHT JOIN query.
SELECT
    c.first_name, c.last_name,p.payment_id
FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id;


-- the customer table and the rental_id in the rental table and the first_name and last_name names in the customer table, which we can see together 
-- Write the FULL JOIN query.
SELECT  
    r.rental_id, c.first_name, c.last_name
FROM customer AS c
FULL JOIN rental AS r
ON c.rental_id = r.rental_id;