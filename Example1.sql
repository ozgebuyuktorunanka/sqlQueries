-- city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT
    c.city, co.country
FROM city AS c
LEFT JOIN country AS co
ON c.country_id = co.country_id;


-- customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
-- RIGHT JOIN sorgusunu yazınız.
SELECT
    c.first_name, c.last_name,p.payment_id
FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id;


-- customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz 
-- FULL JOIN sorgusunu yazınız.
SELECT  
    r.rental_id, c.first_name, c.last_name
FROM customer AS c
FULL JOIN rental AS r
ON c.rental_id = r.rental_id;