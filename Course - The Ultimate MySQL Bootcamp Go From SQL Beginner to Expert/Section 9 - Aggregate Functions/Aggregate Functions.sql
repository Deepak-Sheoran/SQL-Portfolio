USE Book_store;
SHOW TABLES;
DESC Books;

-- Aggregate Functions:
-- 1. COUNT
SELECT COUNT(*) AS 'Number of Books'
FROM Books;

SELECT COUNT(Author_lname) AS 'Number of Author Last Names', COUNT(DISTINCT Author_lname) AS 'Number of Unique Author Last Names'
FROM Books;

-- Number of Titles that contain the word 'the'
SELECT COUNT(Title) AS 'Special Titles Count'
FROM Books
WHERE Title LIKE '%the%';

-- GROUP BY
SELECT CONCAT(Author_fname, ' ', Author_lname) AS Author, COUNT(*) AS Book_Count
FROM Books
GROUP BY Author
ORDER BY Book_Count DESC;

SELECT Released_year, COUNT(*) AS Book_Count
FROM Books
GROUP BY Released_year
ORDER BY Book_Count DESC;

-- 2. MIN and MAX
SELECT
	MAX(Released_year) AS 'Earliest Book Release Year',
    MIN(Released_year) AS 'Oldest Book Release Year',
    MIN(Author_lname),
    MAX(Author_lname),
    MAX(Pages)
FROM Books;

-- Sub Query
SELECT Title
FROM Books
WHERE Pages = (SELECT MAX(Pages) FROM Books);

SELECT Title, Released_year
FROM Books
WHERE Released_year = (SELECT MIN(Released_Year) FROM Books);

-- GROUPING BY multiple columns
SELECT Author_lname, Author_fname, COUNT(Title) AS Book_Count
FROM Books
GROUP BY Author_lname, Author_fname
ORDER BY Book_Count DESC;

-- MIN & MAX with GROUP BY
-- Find the year each author published their first book
SELECT
	CONCAT_WS(' ', Author_fname, Author_lname) AS Author,
    COUNT(Title) AS 'Number of Books Published',
    MIN(Released_year) AS 'Published Their First Book',
    MAX(Released_year) AS 'Published Their Latest Book'
FROM Books
GROUP BY Author;

-- 3. SUM
SELECT SUM(Pages)
FROM Books;

SELECT
	CONCAT_WS(' ', Author_fname, Author_lname) AS Author,
    COUNT(Title) AS Book_Count,
    SUM(Pages) AS 'Total Pages Written'
FROM Books
GROUP BY Author
ORDER BY Book_Count DESC, Author;

-- 4. AVG
SELECT AVG(Released_year) AS 'Average Released Year Across all Books', AVG(Pages) AS 'Average Number of Pages Written by all the Authors'
FROM Books;

SELECT 
	Released_year,
    SUM(Stock_Quantity) AS 'Stock Quantity',
    COUNT(Title) AS 'Number of Books Published',
    AVG(Stock_quantity) AS 'Average Stock Quantity'
FROM Books
GROUP BY Released_year;