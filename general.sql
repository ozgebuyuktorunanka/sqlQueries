-- How many films have at least 4 'e' or 'E' in their name?
SELECT COUNT(*)
FROM film
WHERE LENGTH(title) - LENGTH(REPLACE(LOWER(title), 'e', '')) >= 4;
--OR
SELECT COUNT(*)
FROM film
WHERE title ILIKE '%e%e%e%e';   --ILIKE upper or lowercase is not affected to it.

-- List category names and the number of films per category.
SELECT c.name, COUNT(fc.film_id)
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;

-- Which rating category has the most films?
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;

-- List the 3 longest films from the film table that start with 'K' and have the minimum replacement_cost?
SELECT *
FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 3;

-- What is the name of the customer who made the most rentals?
SELECT SUM(amount), c.first_name, c.last_name
FROM payment as p
JOIN customer AS c ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY SUM(amount) DESC
LIMIT 1;