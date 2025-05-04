-- We can use page number is not static, We get this static value ( page number) from another sql queries result.

SELECT * FROM book
WHERE page_number > 
(
    SELECT page_number from book
    WHERE title = 'Gülün Adı';
);

-- Max Number Size : SELECT MAX(page_number) FROM book
-- To column differ calculate and write to new column differ: (SELECT MAX(page_number) - page_number) AS differ

SELECT 
    title, page_number, (SELECT MAX(page_number) FROM book), ((SELECT MAX(page_number) - page_number) AS differ)
    FROM book
    WHERE page_number > (
        SELECT page_number
        FROM book 
        WHERE title = 'Gülün Adı'
        );