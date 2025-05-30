-- Table: Customer

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | tinyint |
-- | name        | varchar |
-- | referee_id  | tinyint |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
--  

-- Find the names of the customer that are not referred by the customer with id = 2.

-- Return the result table in any order.

USE sql50;
SHOW TABLES;

SELECT Name
FROM Customer
WHERE Referee_Id <> 2 OR Referee_Id IS NULL;