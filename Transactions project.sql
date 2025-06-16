

Create Database Banking;
Use Banking;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    join_date DATE
);
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(10),
    amount DECIMAL(12,2),
    transaction_time DATETIME,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
INSERT INTO Customers (customer_id, name, email, phone, join_date)
VALUES
(1, 'Alice', 'alice@example.com', '1234567890', '2023-02-01'),
(2, 'Bob', 'bob@example.com', '9876543210', '2022-01-01'),
(3, 'Charlie', 'charlie@example.com', '5551234567', '2023-03-01'),
(4, 'David', 'david@example.com', '7654321098', '2022-06-01'),
(5, 'Eve', 'eve@example.com', '3421567890', '2023-01-15');

INSERT INTO Accounts (account_id, customer_id, account_type, balance, status)
VALUES
(101, 1, 'Savings', 60000.00, 'Active'),
(102, 1, 'Current', 30000.00, 'Active'),
(103, 2, 'Savings', 40000.00, 'Active'),
(104, 3, 'Current', 70000.00, 'Active'),
(105, 4, 'Savings', 20000.00, 'Frozen'),
(106, 5, 'Current', 100000.00, 'Active');

INSERT INTO Transactions (transaction_id, account_id, transaction_type, amount, transaction_time)
VALUES
(1, 101, 'Credit', 10000.00, '2023-02-01 10:00:00'),
(2, 101, 'Debit', 5000.00, '2023-02-02 11:00:00'),
(3, 102, 'Credit', 20000.00, '2023-02-03 12:00:00'),
(4, 103, 'Debit', 10000.00, '2023-02-04 13:00:00'),
(5, 101, 'Credit', 15000.00, '2023-02-05 14:00:00'),
(6, 104, 'Debit', 20000.00, '2023-02-06 15:00:00'),
(7, 105, 'Credit', 5000.00, '2023-02-07 16:00:00'),
(8, 106, 'Debit', 30000.00, '2023-02-08 17:00:00'),
(9, 101, 'Credit', 8000.00, '2023-02-09 18:00:00'),
(10, 102, 'Debit', 10000.00, '2023-02-10 19:00:00');
#Queries

#List all customers who joined after January 1, 2023.
SELECT * FROM Customers WHERE join_date > '2023-01-01';

#Retrieve all active accounts with a balance greater than ₹50,000.
SELECT * FROM Accounts WHERE status = 'Active' AND balance > 50000;

#Show all transactions for account_id 101 ordered by transaction_time.
SELECT * FROM Transactions WHERE account_id = 101 ORDER BY transaction_time;

#Find the email and phone number of the customer named 'Alice'.
SELECT email, phone FROM Customers WHERE name = 'Alice';

#Display the total number of accounts under each account_type.
SELECT account_type, COUNT(*) AS num_accounts FROM Accounts GROUP BY account_type;

#Find the total amount credited and debited for each customer.
SELECT C.customer_id, C.name, 
    SUM(IF(T.transaction_type = 'Credit', T.amount, 0)) AS total_credited,
    SUM(IF(T.transaction_type = 'Debit', T.amount, 0)) AS total_debited
FROM Customers C JOIN Accounts A ON C.customer_id = A.customer_id
JOIN Transactions T ON A.account_id = T.account_id
GROUP BY C.customer_id, C.name;
    
#List all customers who have performed more than 3 transactions.
SELECT C.customer_id, C.name, COUNT(T.transaction_id) AS num_transactions
FROM Customers C JOIN Accounts A ON C.customer_id = A.customer_id
JOIN Transactions T ON A.account_id = T.account_id
GROUP BY C.customer_id, C.name HAVING 
COUNT(T.transaction_id) > 3;

#Display accounts with zero or negative balance.
SELECT * FROM Accounts WHERE balance <= 0;

#List the top 3 customers based on total balance across their accounts.
SELECT C.customer_id, C.name, SUM(A.balance) AS total_balance
FROM Customers C JOIN Accounts A ON C.customer_id = A.customer_id
GROUP BY C.customer_id, C.name ORDER BY total_balance DESC
LIMIT 3;

#Display the names of customers who have at least one account with a balance higher than the average balance of all accounts.
SELECT DISTINCT C.name FROM Customers C JOIN Accounts A ON C.customer_id = A.customer_id
WHERE A.balance > (SELECT AVG(balance) FROM Accounts);
    





