
-- ANY Usage 
--Usage: The ANY condition returns true (TRUE) if a comparison is true for at least one value in the set of values returned by the subquery.

SELECT first_name, last_name
FROM author
WHERE id = ANY
{
    SELECT id 
    FROM book 
    WHERE title = 'Book Title Dummy' OR title = 'Book Title dummy 2'
};

-- Find movies that are longer than any other movie in the “Children” category:
SELECT title, length
FROM film
WHERE length > ANY (
    SELECT f.length
    FROM film f
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
    WHERE c.name = 'Children'
);

-- SELECT title, length
-- FROM film
-- WHERE length > (
--     SELECT MIN(f.length)
--     FROM film f
--     JOIN film_category fc ON f.film_id = fc.film_id
--     JOIN category c ON fc.category_id = c.category_id
--     WHERE c.name = 'Children'
-- );

-- ALL Usage 
--ALL: The comparison must be true for all values in the subquery set.

SELECT first_name, last_name
FROM author
WHERE id = ALL
{
    SELECT id 
    FROM book 
    WHERE title = 'Book Title Dummy' OR title = 'Book Title dummy 2'
};

-- Find out which movies are longer than all the movies in the category “Children”:
SELECT title, length
FROM film
WHERE length > ALL (
    SELECT f.length
    FROM film f
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
    WHERE c.name = 'Children'
);
-- SELECT title, length
-- FROM film
-- WHERE length > (
--     SELECT MAX(f.length)
--     FROM film f
--     JOIN film_category fc ON f.film_id = fc.film_id
--     JOIN category c ON fc.category_id = c.category_id
--     WHERE c.name = 'Children'
-- );