-- In the author table and book table, let's sort the books that are more than the average number 
-- of books by author name, surname and book name.

SELECT author.first_name, author.last_name, book.title, book.page_number
FROM author
INNER JOIN book ON book.author_id = author.author_id
WHERE page_number > (
    SELECT AVG(page_number) FROM book   --agreegiate function:AVG
);

-- Print the names, length, actor's names and surnames of the movies with the maximum length.
-- Table: movie table and actor table, film_actor table
-- if there is no common column between the two tables.

SELECT actor.first_name, actor.last_name, film.title, film.length 
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.length = (
    SELECT MAX(length) FROM film
);
