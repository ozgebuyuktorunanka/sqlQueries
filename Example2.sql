-- Sort all data for first_name columns in actor and customer tables.
SELECT first_name
FROM actor

UNION ALL

SELECT first_name
FROM customer
ORDER BY first_name;

-- Sort intersecting data for first_name columns in actor and customer tables.
SELECT first_name
FROM actor

INTERSECT

SELECT first_name
FROM customer
ORDER BY first_name;

--Sort data for first_name columns in actor and customer tables that are in the first table but not in the second table.
SELECT first_name
FROM actor

EXCEPT

SELECT first_name
FROM customer
ORDER BY first_name;