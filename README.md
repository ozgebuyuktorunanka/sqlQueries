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
├── queries/
│   ├── 01_basic_select.sql
│   ├── 02_filtering_data.sql
│   ├── 03_sorting_results.sql
│   ├── 04_joins.sql
│   ├── 05_group_by_aggregate.sql
│   └── 06_subqueries.sql
├── README.md
└── LICENSE
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

---

## 🤝 Contributing

1. Fork the repo
2. Create a new branch: `git checkout -b feature/your-feature`
3. Commit changes: `git commit -m 'feat: add new SQL example'`
4. Push to your fork: `git push origin feature/your-feature`
5. Create a pull request

All contributions are welcome!
