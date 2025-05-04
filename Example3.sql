-- In movie table 1, the movie length is shown in the length column. 
-- How many movies have a length greater than the average movie length?

SELECT COUNT(*) AS average_long_film_number
FROM film
WHERE length > ( 
    SELECT
     AVG(length) FROM film
);



-- 2. How many movies in the movie table have the highest rental_rate?

SELECT COUNT(*) AS max_high_rental_rate_film_number   --this usage is alias.
FROM film
WHERE rental_rate = (
    SELECT MAX(rental_rate) FROM film
);


-- 3. in the movie table, list the movies with the lowest rental_rate and the lowest replacement_cost. in the payment table, 
--list the customers who made the largest number of purchases.

SELECT title, rental_rate,replacement_cost
FROM film
WHERE 
    rental_rate = (SELECT MIN(rental_rate) FROM film)
    AND 
    replacement_cost = (SELECT MIN(replacement_cost) FROM film );

--In the Payment table, list the customers who made the largest number of purchases.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(p.payment_id) AS total_purchases -- or Count(*)
FROM
    customer AS c
JOIN
    payment AS p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id, c.first_name, c.last_name
ORDER BY
    total_purchases DESC;  --sorting the largest number