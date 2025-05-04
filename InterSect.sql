--The INTERSECT operator returns rows that are common to the result sets of two SELECT queries.

SELECT
    CustomerName
FROM
    VIP_Customers

INTERSECT

SELECT
    CustomerName
FROM
    Loyal_Customers;