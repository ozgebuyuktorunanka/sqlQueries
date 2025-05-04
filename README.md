# 📚 SQL Query Practice with dvdrental

This repository provides practice SQL queries using the popular `dvdrental` sample database. It's great for beginners and intermediate learners to understand how to retrieve and manipulate data using SQL.
---

## 🛠 Requirements

- PostgreSQL installed on your machine
- Database example for test.
- Basic understanding of SQL concepts

---

## 📥 Getting Started

1. **Install PostgreSQL:**

   Download and install from [PostgreSQL Official Site](https://www.postgresql.org/download/)

2. **Download dvdrental Sample Database:**

   Get the `.tar` file from  
   [dvdrental Download Page](https://www.postgresqltutorial.com/postgresql-sample-database/)

3. **Restore the Database:**

   Open terminal and run:
   ```bash
   pg_restore -U your_username -d dvdrental -v "/path/to/dvdrental.tar"
   ```

---

## 📂 Folder Structure

```
.
├── sqlQueries/
│   ├── letJoin.sql
│   ├── innerJoin.sql
│   ├── rightJoin.sql
│   ├── fullJoin.sql
│   ├── xx.sql
│   └── xx.sql
├── README.md
```

---

## ✅ Covered Topics

- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `OFFSET`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY`, `HAVING`
- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`
- Subqueries
- `CASE` statements
- Basic `INSERT`, `UPDATE`, `DELETE`

---

## 💡 Sample Queries

**List All Actors**
```sql
SELECT * FROM actor;
```

**Movies with Rental Rate > 4.99**
```sql
SELECT title, rental_rate
FROM film
WHERE rental_rate > 4.99;
```

**Join City and Country Tables**
```sql
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;
```

### Comparation Tables for Inner and Right Join.
#### LEFT JOIN ve RIGHT JOIN Farkları
| Feature             | LEFT JOIN                                                                 | RIGHT JOIN                                                                 |
|---------------------|---------------------------------------------------------------------------|----------------------------------------------------------------------------|
| **What it Includes?** | Includes **all** rows from the left table (the first table after FROM) and matching rows from the right table. | Includes **all** rows from the right table (the table after JOIN) and matching rows from the left table. |
| **Focus** | Focuses on the left table. All rows from the left table are guaranteed to be in the result set. | Focuses on the right table. All rows from the right table are guaranteed to be in the result set. |
| **Non-matching Rows** | Non-matching rows from the left table are included in the result set. Values for columns from the right side will be `NULL`. | Non-matching rows from the right table are included in the result set. Values for columns from the left side will be `NULL`. |
| **Alternative Syntax** | Can also be written as `LEFT OUTER JOIN`.                                  | Can also be written as `RIGHT OUTER JOIN`.                                 |
| **Symmetry** | A `RIGHT JOIN` query can be written as a `LEFT JOIN` by swapping the left and right tables. | A `LEFT JOIN` query can be written as a `RIGHT JOIN` by swapping the left and right tables. |

### UNION ALL:
Important Note: SELECT queries combined with UNION ALL must have:
   - The same number of columns,
   - Corresponding columns with compatible data types. (varchar - varchar column or if column includes string - string value )

### INTERSECT
The INTERSECT operator returns rows that are common to the result sets of two SELECT queries. Like UNION, INTERSECT removes duplicate rows from the result by default.

   Things to consider when using **INTERSECT**:
   - Both SELECT queries must have the same number of columns.
   - The data types of the corresponding columns must be compatible.

**Result**:
- The result of the query is a single result set containing only rows with matching CustomerName in both the VIP_Customers table and the Loyal_Customers table. Even if a customer name occurs more than once in both tables, it will only appear once in the result set (because INTERSECT removes duplicates).

- The INTERSECT operator is useful for finding the intersection (in the sense of set theory) between data sets.

## Sources:
   1. https://www.w3schools.com/sql/ 
   2. 
   3. 
   4.

