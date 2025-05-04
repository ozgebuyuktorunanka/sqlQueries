--We are making two queries in the bookstore database. In our first query, we sort the 5 books with the highest number of pages and in our second query, 
--we sort 5 books by name. Thanks to the EXCEPT keyword, it shows the data that is in the first query but not in the second query.

( SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
EXCEPT
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);