-- Write the INNER JOIN query that we can see the city and country names in the city table and country table together.

--INNER JOIN
-- Inner join is symmetric. Tables can be swapped, for example, even if city is swapped with country in the first example below
-- inner join joins over the country_id column, which can perform a join operation.

SELECT
    city.city,
    country.country
FROM
    city
INNER JOIN
    country ON city.country_id = country.country_id;



--Write the INNER JOIN query in which we can see the payment_id in the payment 
--table and the first_name and last_name names in the customer table together.
SELECT
    payment.payment_id,
    customer.first_name,
    customer.last_name
FROM
    payment
INNER JOIN
    customer ON payment.customer_id = customer.customer_id;

--Write the INNER JOIN query in which we can see the rental_id in the rental table with the customer table and the first_name and last_name 
-- names in the customer table together.
SELECT
    rental.rental_id,
    customer.first_name,
    customer.last_name
FROM
    rental
INNER JOIN
    customer ON rental.customer_id = customer.customer_id;