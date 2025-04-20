USE Book_store;

-- Challenges
-- 1. Print the number of books in the database
SELECT COUNT(Title) AS 'Book_Count'
FROM Books;

-- How many books were released by each year
SELECT Released_year, COUNT(Title) AS 'Number of Books Released'
FROM Books
GROUP BY Released_year
ORDER BY Released_year DESC;

-- Print out the total number of books in stock
SELECT SUM(Stock_quantity) AS 'Total Books in Stock'
FROM Books;

-- Find the average released year for each author
SELECT CONCAT_WS(' ', Author_fname, Author_lname) AS Author, AVG(Released_year)
FROM Books
GROUP BY Author;

-- Find the full name of the author who wrote the longest book
SELECT CONCAT_WS(' ', Author_fname, Author_lname) AS Author, Pages
FROM Books
WHERE Pages = (SELECT MAX(Pages) FROM Books);

-- Print what's on the screen 😣
SELECT
	Released_year AS Year,
    COUNT(Title) AS '# Books',
    AVG(Pages) AS 'Avg Pages'
FROM Books
GROUP BY Year
ORDER BY Year;