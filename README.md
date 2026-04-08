# SQL JOINS Complete Guide

## 📌 What is JOIN?
SQL JOIN is used to combine data from multiple tables based on a related column.

---

## 🔗 Types of JOIN
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
5. CROSS JOIN
6. SELF JOIN

---

## 🧱 Tables Used
- student
- professor
- department

---

## ▶️ How to Run
1. Run setup/create_tables.sql
2. Run setup/insert_data.sql
3. Execute queries from joins/

---

## 📊 Example
```sql
SELECT s.student_name, d.dept_name
FROM student s
INNER JOIN department d
ON s.dpet_id = d.dpet_id;
