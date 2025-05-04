--FULL OUTER JOIN returns all rows in the left table and all rows in the right table. 
--When there is no match, NULL values are returned for the columns on the other side. 
--In other words, it is the union of the results of LEFT JOIN and RIGHT JOIN.

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.Amount
FROM
    Customers C
FULL OUTER JOIN
    Orders O ON C.CustomerID = O.CustomerID;