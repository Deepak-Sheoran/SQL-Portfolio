-- Create the database 'sql50' if it doesn't already exist
CREATE DATABASE IF NOT EXISTS sql50;

-- Select the 'sql50' database for use
USE sql50;

-- Display the name of the currently selected database
SELECT DATABASE();

-- Set the SQL mode to allow explicit insertion of 0 into AUTO_INCREMENT columns
SET SESSION sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

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

-- Optional: Drop the Products table and the sql50 database if needed
-- DROP TABLE IF EXISTS Products;
-- DROP DATABASE IF EXISTS sql50;


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

