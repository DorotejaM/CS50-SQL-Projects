# CS50-SQL-Projects

This repository contains solutions and SQL queries for the **CS50 SQL** course problem sets, covering querying, data manipulation, database design, and analysis across different domains.

## Overview
This course, **CS50’s Introduction to Databases with SQL**, is developed by **Harvard University and Cambridge**. Throughout these problem sets, I applied SQL in various real-world contexts, including:

✔ **Writing complex queries** (`SELECT`, `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`)
✔ **Designing and managing relational databases**
✔ **Performing data analysis** to extract insights
✔ **Creating database schemas** for business applications
✔ **Implementing data integrity and normalization**
✔ **Cleaning and transforming raw datasets** into structured databases
✔ **Optimizing queries using indexing techniques**
✔ **Working with views** for aggregation, partitioning, and securing data
✔ **Understanding database scalability and performance tuning**
✔ **Implementing security measures**, prepared statements, and penetration testing

---

## **Project Breakdown**

### **Week 0: Querying & SQL Basics**
**Concepts:** SQL basics, queries, filtering (`WHERE`, `LIKE`), ordering (`ORDER BY`), aggregates (`COUNT`, `SUM`, `ROUND`), pattern matching

✔ **Cyberchase** *(cyberchase.db)* – Querying TV episodes  
✔ **36 Views** *(views.db)* – Analyzing image brightness, contrast, entropy  
✔ **Players** *(players.db)* – Filtering players based on conditions  

---

### **Week 1: Relational Databases & Joins**
**Concepts:** Relationships (one-to-one, one-to-many, many-to-many), `JOIN`, `GROUP BY`, `HAVING`, subqueries, set operations (`UNION`, `INTERSECT`, `EXCEPT`)

✔ **Packages, Please** *(packages.db)* – Tracking lost packages  
✔ **DESE** *(dese.db)* – Analyzing school expenditures and performance  
✔ **Moneyball** *(moneyball.db)* – Identifying undervalued baseball players  

---

### **Week 2: Database Design & Schema Creation**
**Concepts:** Database schemas, `PRIMARY KEY`, `FOREIGN KEY`, normalization, constraints (`NOT NULL`, `UNIQUE`, `CHECK`), altering tables

✔ **ATL** *(atl/schema.sql)* – Flight management system  
✔ **Happy to Connect** *(connect/schema.sql)* – Users, schools, companies, and connections  
✔ **Union Square Donuts** *(donuts/schema.sql)* – Inventory, customer orders, and recipes  

---

### **Week 3: Data Import, Cleaning & Manipulation**
**Concepts:** `INSERT`, `UPDATE`, `DELETE`, CSV import, data cleaning (`NULL` handling, rounding, filtering), `ORDER BY`

✔ **Meteorite Cleaning** *(meteorites/import.sql)* – Cleaning and importing historical meteorite data  
✔ **Don't Panic!** *(hack/hack.sql)* – Simulating a penetration test (modifying user passwords, deleting logs, inserting misleading data)  

---

### **Week 4: Views & Aggregation**
**Concepts:** `CREATE VIEW`, simplifying queries, `GROUP BY`, partitioning data, securing access

✔ **Census Taker** *(census.sql)* – Creating views for rural areas, total population, population by district, and most populated regions  
✔ **The Private Eye** *(private.sql)* – Decoding a cipher left by a detective using `SUBSTR()` and views  
✔ **Bed and Breakfast** *(bnb.sql)* – Creating views for available listings, one-bedroom properties, frequently reviewed listings, and June vacancies  

---

### **Week 5: Query Optimization & Indexing**
**Concepts:** `CREATE INDEX`, `EXPLAIN QUERY PLAN`, covering indexes, transactions (`BEGIN`, `COMMIT`, `ROLLBACK`), concurrency

✔ **In a Snap** *(snap.sql)* – Optimizing messaging queries using indexes for faster retrieval  
✔ **your.harvard** *(harvard.sql)* – Creating indexes to speed up student enrollment queries  

---

### **Week 6: Scaling & Security**
**Concepts:** MySQL database design, distributed databases, security, prepared statements, and scalability

✔ **Happy to Connect (Sentimental)** *(sentimental-connect/schema.sql)* – Recreated LinkedIn’s database in MySQL  
✔ **From the Deep** *(from-the-deep/answers.md)* – Analyzing distributed database architectures  
✔ **Don't Panic! (Sentimental) with Python** *(dont-panic/hack.py)* – Automating SQL pentesting with Python  

---

## **Final Project: AI Readiness Analysis**

**Concepts:** AI readiness analysis, efficiency modeling, risk assessment, database schema design, SQL queries

✔ **Design Document** *(ai-readiness/design.md)* – Full project documentation  
✔ **Database Schema** *(ai-readiness/schema.sql)* – SQLite tables for AI readiness analysis  
✔ **Queries** *(ai-readiness/queries.sql)* – AI readiness, efficiency, and risk analysis queries  

**Project Summary:**
This final project analyzes AI readiness across **151 countries** from **2020 to 2023**, examining AI readiness scores, efficiency in AI implementation, risk levels, and investment portfolios to improve AI readiness. The project includes an **entity relationship diagram (ERD)**, **optimizations for query performance**, and detailed **SQL queries** for analysis and reporting.

---

## **Skills Demonstrated**
✔ **SQL Queries:** `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`  
✔ **Database Schema Design:** `CREATE TABLE`, `FOREIGN KEY`, `PRIMARY KEY`  
✔ **Data Integrity & Normalization**  
✔ **Data Cleaning & Transformation:** `ROUND()`, `NULL` Handling, Filtering Rows  
✔ **Views & Aggregation:** `CREATE VIEW`, `GROUP BY`, `SUM()`, `COUNT()`  
✔ **Security & Data Manipulation:** `UPDATE`, `DELETE`, MD5 Hashing, SQL Injection Prevention  
✔ **Optimization & Indexing:** `CREATE INDEX`, `EXPLAIN QUERY PLAN`  
✔ **Scaling & Performance Tuning:** Sharding, Replication, Read Replicas  
