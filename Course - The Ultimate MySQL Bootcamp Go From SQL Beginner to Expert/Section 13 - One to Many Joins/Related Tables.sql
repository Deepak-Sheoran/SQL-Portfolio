CREATE DATABASE IF NOT EXISTS Company;
SHOW DATABASES;
USE Company;
SELECT DATABASE();

CREATE TABLE IF NOT EXISTS Customers
	(
		Customer_Id TINYINT UNSIGNED AUTO_INCREMENT,
        First_Name VARCHAR(30) NOT NULL DEFAULT 'John',
        Last_Name VARCHAR(30) NOT NULL DEFAULT 'Doe',
        Email VARCHAR(50) NOT NULL DEFAULT 'NotAny@gmail.com',
        CONSTRAINT email_standard CHECK(Email LIKE '%@gmail.com'),
        PRIMARY KEY(Customer_Id)
    );

CREATE TABLE IF NOT EXISTS Orders
	(
		Order_Id TINYINT UNSIGNED AUTO_INCREMENT,
        Order_Date DATE NOT NULL,
        Amount NUMERIC(8,2) NOT NULL DEFAULT 0.00,
        Customer_Id TINYINT UNSIGNED NOT NULL,
        PRIMARY KEY(Order_Id),
        FOREIGN KEY(Customer_Id) REFERENCES Customers(Customer_Id) ON DELETE CASCADE
    );

DESC Customers;
DESC Orders;

INSERT INTO Customers(First_Name, Last_Name, Email)
VALUES
	('Boy', 'George', 'george@gmail.com'),
	('George', 'Michael', 'gm@gmail.com'),
    ('David', 'Bowie', 'david@gmail.com'),
    ('Blue', 'Steele', 'blue@gmail.com');

INSERT INTO Orders(Order_Date, Amount, Customer_Id)
VALUES
	('2016-02-10', 99.99, 1),
    ('2017-11-11', 35.50, 1),
    ('2014-12-12', 800.67, 2),
    ('2015-01-03', 12.50, 2);


SELECT *
FROM Customers;
SELECT *
FROM Orders;

SELECT Order_Id, A.Customer_Id, CONCAT_WS(' ', First_Name, Last_Name) AS Name, Email, Order_Date, Amount
FROM Customers AS A
JOIN Orders AS B
ON A.Customer_Id = B.Customer_Id;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

DROP DATABASE IF EXISTS  Company;