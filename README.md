# 🏦 Banking Database SQL Project

This project demonstrates the creation and querying of a **banking database** using SQL. It includes three core entities: `Customers`, `Accounts`, and `Transactions`, and explores meaningful insights through SQL queries—such as account activity, transaction analysis, and customer behavior.

---

## 📌 Project Overview

This **Banking System Database** project simulates the backend of a basic banking system. It allows for:
- Storing customer details
- Managing multiple account types per customer
- Tracking financial transactions
- Extracting useful data insights through queries

It serves as a great learning tool for mastering SQL concepts like **joins**, **aggregations**, **grouping**, **subqueries**, and **data filtering**.

---

## 🛠️ Technologies Used

- **SQL (MySQL / PostgreSQL compatible)**
- Relational Database Concepts
- DDL & DML (CREATE, INSERT, SELECT)
- Aggregate & Conditional Functions
- Subqueries and JOIN operations

---

## 🗃️ Database Schema

### 1. `Customers`
Stores customer data.

| Field        | Type        | Description                |
|--------------|-------------|----------------------------|
| customer_id  | INT         | Primary Key                |
| name         | VARCHAR(100)| Customer's full name       |
| email        | VARCHAR(100)| Email address              |
| phone        | VARCHAR(15) | Contact number             |
| join_date    | DATE        | Date of joining the bank   |

### 2. `Accounts`
Stores account details for each customer.

| Field        | Type         | Description                   |
|--------------|--------------|-------------------------------|
| account_id   | INT          | Primary Key                   |
| customer_id  | INT          | Foreign key from Customers    |
| account_type | VARCHAR(20)  | Type (Savings/Current)        |
| balance      | DECIMAL(12,2)| Account balance               |
| status       | VARCHAR(20)  | Account status (Active/Frozen)|

### 3. `Transactions`
Tracks each financial transaction.

| Field           | Type          | Description                            |
|------------------|---------------|----------------------------------------|
| transaction_id   | INT           | Primary Key                            |
| account_id       | INT           | Foreign key from Accounts              |
| transaction_type | VARCHAR(10)   | Credit or Debit                        |
| amount           | DECIMAL(12,2) | Transaction amount                     |
| transaction_time | DATETIME      | Date and time of the transaction       |

---

###✅ Project Outcome
-#Through this SQL-based banking system, we can:
-Model real-world relationships between customers, accounts, and transactions
-Perform insightful queries to analyze banking data
-Practice complex SQL operations such as JOINs, subqueries, aggregations, and filters
-Lay the foundation for building scalable systems like online banking portals

###📂 How to Use
1.Copy and run the DDL & INSERT scripts in your SQL editor (MySQL, PostgreSQL, etc.)
2.Execute the queries section to fetch insights.
3.Modify or expand the schema for credit cards, loans, or authentication systems.


