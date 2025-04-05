-- Section challenge Instructions:
--    Create a pastries table
-- -> It should include 2 columns: name and quantity.
--    Name is 50 characters max.
-- -> Inspect the table/columns
-- -> Delete the table
CREATE DATABASE practice_db;
USE practice_db;
CREATE TABLE pastries
	(
		Name VARCHAR(50),
        Quantity SMALLINT
    );
SHOW TABLES;
SHOW COLUMNS
FROM pastries;
DROP TABLE pastries;
SHOW TABLES;
DROP DATABASE practice_db;