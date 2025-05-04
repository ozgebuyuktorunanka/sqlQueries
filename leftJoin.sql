-- SELECT column 1, column 2, ... FROM Table1  --> Primary Search in Table1 
-- LEFT JOIN Table2 ON table2.id = table1.id;

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.Amount
FROM
    Customers C
LEFT JOIN
    Orders O ON C.CustomerID = O.CustomerID;

    