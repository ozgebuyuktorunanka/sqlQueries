--UNION ALL is used to combine the result sets of two or more SELECT queries.
--It differs from -- UNION in that it does not remove duplicate lines. It only adds the result sets one after the other.

SELECT
    CustomerName,
    Region
FROM
    Customers_RegionA

UNION ALL

SELECT
    CustomerName,
    Region
FROM
    Customers_RegionB;