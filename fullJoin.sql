--FULL OUTER JOIN, sol tablodaki tüm satırları ve sağ tablodaki tüm satırları döndürür. 
--Eşleşme olmadığında, diğer taraftaki sütunlar için NULL değerleri döndürülür. 
--Başka bir deyişle, LEFT JOIN ve RIGHT JOIN'in sonuçlarının birleşimidir.


SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.Amount
FROM
    Customers C
FULL OUTER JOIN
    Orders O ON C.CustomerID = O.CustomerID;