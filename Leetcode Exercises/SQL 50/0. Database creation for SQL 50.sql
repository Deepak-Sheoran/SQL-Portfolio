-- Create the database 'sql50' if it doesn't already exist
CREATE DATABASE IF NOT EXISTS sql50;

-- Select the 'sql50' database for use
USE sql50;

-- Display the name of the currently selected database
SELECT DATABASE();
SHOW TABLES;

-- Set the SQL mode to allow explicit insertion of 0 into AUTO_INCREMENT columns
SET SESSION sql_mode = 'NO_AUTO_VALUE_ON_ZERO';




-- 1. Recyclable and Low Fat Products
-- Create the 'Products' table if it doesn't already exist
-- This table stores product information including whether it's low fat and recyclable
CREATE TABLE IF NOT EXISTS Products
	(
		Product_Id INT UNSIGNED AUTO_INCREMENT,     -- Unique identifier for each product
        Low_Fats ENUM('Y', 'N'),                    -- Indicates if the product is low fat
        Recyclable ENUM('Y', 'N'),                  -- Indicates if the product is recyclable
        PRIMARY KEY(Product_Id)                     -- Set Product_Id as the primary key
    );
-- Set the starting value for AUTO_INCREMENT to 0
ALTER TABLE Products AUTO_INCREMENT = 0;
-- Insert a product with an explicit Product_Id of 0
-- This only works because of the NO_AUTO_VALUE_ON_ZERO SQL mode
INSERT INTO Products
VALUE(0, 'Y', 'N');
-- Insert multiple products with auto-generated Product_Ids
INSERT INTO Products(Low_Fats, Recyclable)
VALUES
    ('Y', 'Y'),
    ('N', 'Y'),
    ('Y', 'Y'),
    ('N', 'N');
-- Retrieve and display all records from the Products table
SELECT *
FROM Products;




-- 2. Find Customer Referee
CREATE TABLE Customer
	(
		Id TINYINT UNSIGNED AUTO_INCREMENT,
        Name VARCHAR(20),
        Referee_Id TINYINT UNSIGNED,
        PRIMARY KEY(Id)
    );
INSERT INTO Customer(Name, Referee_Id)
VALUES
	('Will', NULL),
	('Jane', NULL),
    ('Alex', 2),
    ('Bill', NULL),
    ('Zack', 1),
    ('Mark', 2);
SELECT *
FROM Customer;




-- 3. Big Countries
CREATE TABLE IF NOT EXISTS World
	(
		Name VARCHAR(30),
        Continent VARCHAR(30),
        Area INT UNSIGNED,
        Population INT UNSIGNED,
        GDP BIGINT UNSIGNED,
        PRIMARY KEY(Name)
    );
INSERT INTO World
VALUES
	('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
    ('Albania', 'Europe', 28748, 2831741, 12960000000),
    ('Algeria', 'Africa', 2381741, 37100000, 188681000000),
    ('Andorra', 'Europe', 468, 78115, 3712000000),
    ('Angola', 'Africa', 1246700, 20609294, 100990000000);
SELECT * FROM World;




-- 4. Article Views 1
CREATE TABLE Views
	(
		Article_Id TINYINT UNSIGNED,
        Author_Id TINYINT UNSIGNED,
        Viewer_Id TINYINT UNSIGNED,
        View_Date DATE
    );
INSERT INTO Views
VALUES
	(1, 3, 5, '2019-08-01'),
    (1, 3, 6, '2019-08-02'),
    (2, 7, 7, '2019-08-01'),
    (2, 7, 6, '2019-08-02'),
    (4, 7, 1, '2019-07-22'),
    (3, 4, 4, '2019-07-21'),
    (3, 4, 4, '2019-07-21');
SELECT * FROM Views;




-- 5. Invalid Tweets
CREATE TABLE Tweets
	(
		Tweet_Id TINYINT AUTO_INCREMENT,
        Content VARCHAR(40),
        PRIMARY KEY(Tweet_Id)
    );
INSERT INTO Tweets(Content)
VALUES
	('Let us Code'),
    ('More than fifteen chars are here!');
SELECT * FROM Tweets;




-- 6. 

-- Optional: Drop the sql50 database if needed
-- DROP DATABASE IF EXISTS sql50;