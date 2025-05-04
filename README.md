# 📚 SQL Query Practice with dvdrental

This repository provides practice SQL queries using the popular `dvdrental` sample database. It's great for beginners and intermediate learners to understand how to retrieve and manipulate data using SQL.

---

## 🛠 Requirements

- PostgreSQL installed on your machine
- `dvdrental` sample database restored

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

## Comparation Tables for Inner and Right Join.
### LEFT JOIN ve RIGHT JOIN Farkları

| Özellik             | LEFT JOIN                                                                 | RIGHT JOIN                                                                 |
|---------------------|---------------------------------------------------------------------------|----------------------------------------------------------------------------|
| **Ne İçerir?** | Sol tablodaki (FROM'dan sonraki ilk tablo) **tüm** satırları ve sağ tablodaki eşleşen satırları içerir. | Sağ tablodaki (JOIN'den sonraki tablo) **tüm** satırları ve sol tablodaki eşleşen satırları içerir. |
| **Odak Noktası** | Sol tabloya odaklanır. Sonuç setinde sol tablonun tüm satırları mutlaka bulunur. | Sağ tabloya odaklanır. Sonuç setinde sağ tablonun tüm satırları mutlaka bulunur. |
| **Eşleşmeyen Satırlar** | Sol tablodaki eşleşmeyen satırlar sonuç setine dahil edilir. Sağ taraftaki sütunlar için değerler `NULL` olur. | Sağ tablodaki eşleşmeyen satırlar sonuç setine dahil edilir. Sol taraftaki sütunlar için değerler `NULL` olur. |
| **Alternatif Yazım** | `LEFT OUTER JOIN` olarak da yazılabilir.                                  | `RIGHT OUTER JOIN` olarak da yazılabilir.                                 |
| **Simetri** | Bir `RIGHT JOIN` sorgusunu, sol ve sağ tabloların yerini değiştirerek bir `LEFT JOIN` olarak yazabilirsiniz. | Bir `LEFT JOIN` sorgusunu, sol ve sağ tabloların yerini değiştirerek bir `RIGHT JOIN` olarak yazabilirsiniz. |



## Sources:
   1. https://www.w3schools.com/sql/ 
   2. 
   3. 
   4.

