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

## ✅ Project Outcome

This Banking Database SQL project successfully simulates the backend structure of a basic banking system. The key outcomes of the project include:

- 📦 **Structured Schema Design**: Implemented normalized tables for Customers, Accounts, and Transactions with proper relationships using primary and foreign keys.
- 🔍 **Real-time Querying**: Executed various SQL queries to extract insights like total credited/debited amounts, active accounts, customer transaction behavior, and account summaries.
- 📊 **Analytical Insights**: Derived valuable analytics such as top customers by balance, average balance comparisons, and account-type distributions.
- 🔄 **Data Integrity**: Maintained referential integrity using foreign key constraints, allowing for safe and consistent data joins.
- 🧠 **Hands-on SQL Practice**: Demonstrated practical use of `JOIN`, `GROUP BY`, `HAVING`, subqueries, and aggregate functions—essential for any SQL-based data project.

This project is ideal for learning **relational database design**, **data extraction techniques**, and **banking system fundamentals**.

## 📂 How to Use

1. **Set Up Your Environment**  
   Open your preferred SQL editor such as **MySQL Workbench**, **phpMyAdmin**, **DBeaver**, or an online SQL compiler.

2. **Create and Populate the Database**
   - Copy and run the provided **DDL (Data Definition Language)** scripts to create the database and tables.
   - Run the **INSERT statements** to populate the tables with sample data.

3. **Execute the SQL Queries**
   - Use the pre-written queries to:
     - Retrieve customer insights
     - Analyze transaction behavior
     - Track account balances and activity

4. **Customize or Extend the Schema**
   - Modify or expand the project to include:
     - 💳 Credit card or loan modules
     - 🔒 User authentication system
     - 📈 Stored procedures or views for reporting

> 💡 This project serves as a foundation for more complex banking systems and is great for practicing real-world SQL operations.




