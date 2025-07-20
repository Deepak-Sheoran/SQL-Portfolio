USE Company;
SELECT DATABASE();
SHOW TABLES;
SELECT *
FROM Customers;
SELECT *
FROM Orders;




-- Joins
-- Cross Join
SELECT *
FROM Customers, Orders;
-- Inner Join
SELECT *
FROM Customers
JOIN Orders
ON Customers.Customer_Id = Orders.Customer_Id;
-- Left Join
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.Customer_Id = Orders.Customer_Id;
-- Right Join
SELECT *
FROM Customers
RIGHT JOIN Orders
ON Customers.Customer_Id = Orders.Customer_Id;




-- Find the orders placed by Boy George
-- Method 1. Using Subquery
SELECT *
FROM Orders
WHERE Customer_Id = (SELECT Customer_Id FROM Customers WHERE CONCAT_WS(' ', First_Name, Last_Name) = 'Boy George');
-- Method 2. Using Joins
SELECT A.Customer_Id, Order_Id, CONCAT_WS(' ', First_Name, Last_Name) AS 'Full Name', Amount
FROM Customers AS A
JOIN Orders AS B
ON A.Customer_Id = B.Customer_Id
WHERE CONCAT_WS(' ', First_Name, Last_Name) = 'Boy George';



SELECT Order_Id, A.Customer_Id, CONCAT_WS(' ', First_Name, Last_Name) AS Name, Email, Order_Date, Amount
FROM Customers AS A
JOIN Orders AS B
ON A.Customer_Id = B.Customer_Id;



-- Inner Join with Group By
SELECT A.Customer_Id, CONCAT_WS(' ', First_Name, Last_Name) AS Name, SUM(Amount) AS 'Total Amount'
FROM Customers AS A
JOIN Orders AS B
ON A.Customer_Id = B.Customer_Id
GROUP BY A.Customer_Id, Name
ORDER BY 'Total Amount';

-- IFNULL function
SELECT A.Customer_Id, CONCAT_WS(' ', First_Name, Last_Name) AS Name, IFNULL(SUM(Amount), 0) AS Total
FROM Customers AS A
LEFT JOIN Orders AS B
ON A.Customer_Id = B.Customer_Id
GROUP BY A.Customer_Id
ORDER BY Total;