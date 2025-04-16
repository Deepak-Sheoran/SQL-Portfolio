SHOW DATABASES;
USE Book_store;
SHOW TABLES;
DESC Books;

-- Exercises:
-- 1. Reverse and Uppercase the following sentence -> 'Why does my cat look at me with such hatred?'
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- 2. What does the following query print out
SELECT REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '_'); -- 'I_like_cats'

-- 3. Replace spaces in titles with '->'
SELECT REPLACE(Title, ' ', '->') AS 'Title'
FROM Books;

-- 4. Print the last name forwards and backwards
SELECT Author_lname AS forwards, REVERSE(Author_lname) AS backwards
FROM Books;

-- 5. Print out full names in caps
SELECT CONCAT(UPPER(Author_fname), ' ', UCASE(Author_lname)) AS 'Full Name in Caps'
FROM Books;

-- 6. Print a sentence for each row that tells the title and their released year
SELECT CONCAT(Title, ' was released in ', Released_year) AS Blurb
FROM Books;

-- 7. Print the Book title and the length of each title
SELECT Title, CHAR_LENGTH(Title) AS 'Character Count'
FROM Books;

-- 8. Print what's shown on the screen
SELECT 
	CONCAT(LEFT(Title, 10), '...') AS 'Short Title',
    CONCAT(Author_lname, ',',Author_fname) AS Author,
    CONCAT(Stock_quantity, ' in Stock') AS Quantity
FROM Books;