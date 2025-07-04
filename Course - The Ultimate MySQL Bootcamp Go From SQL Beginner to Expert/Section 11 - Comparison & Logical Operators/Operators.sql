SHOW DATABASES;
USE book_store;
SELECT DATABASE();
SHOW TABLES;
DESC books;

-- 1. != or <> -- NOT EQUAL Operator
SELECT *
FROM books
WHERE Released_year <> 2017;

-- 2. NOT LIKE Operator
SELECT Title
FROM books
WHERE Title NOT LIKE '% %' OR Title NOT LIKE '%e%'; -- This lets us pick out book titles that don't have spaces in them

-- 3. > and >= -- Greated Than and Greater Than Equal To
SELECT Title, Released_year
FROM books
WHERE Released_year > 2005;
SELECT Title, Pages
FROM books
WHERE Pages >= 500;

-- 4. < and <= -- Less than and Less Than Equal To
SELECT Title, Released_year
FROM books
WHERE Released_year <= 2000
ORDER BY Released_year;

-- 5. LOGICAL AND - 'AND' and LOGICAL OR - 'OR'
-- Select books written by Dave Eggers, published after the year 2010
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author, Released_year
FROM books
WHERE CONCAT_WS(' ', Author_fname, Author_lname) = 'Dave Eggers' AND Released_year > 2010;

-- Select books written by Dave Eggers or published before the year 2010
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author, Released_year
FROM books
WHERE CONCAT_WS(' ', Author_fname, Author_lname) = 'Dave Eggers' OR Released_year < 2010;

SELECT Title, Pages
FROM books
WHERE Pages <= 200 OR Title LIKE '%stories%';

-- 6. BETWEEN
SELECT Title, Released_year
FROM books
WHERE Released_year >= 2004 AND Released_year <= 2015;

SELECT Title, Released_year
FROM books
WHERE Released_year BETWEEN 2004 AND 2015;

-- 7. IN
SELECT Title, Author_lname
FROM books
WHERE Author_lname IN ('Carver', 'Lahiri', 'Smith');

-- 8. NOT IN
SELECT Title, Released_year
FROM books
WHERE 
	Released_year BETWEEN 2000 AND 2016
    AND
    Released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016)
ORDER BY Released_year;

-- OR

SELECT Title, Released_year
FROM books
WHERE Released_year % 2 <> 0
ORDER BY Released_year;

-- CASE statements
SELECT Title, Released_year,
	CASE
		WHEN Released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS Genre
FROM books;

SELECT Title, Stock_quantity,
CASE
	WHEN Stock_quantity BETWEEN 0 AND 40 THEN '*'
    WHEN Stock_quantity BETWEEN 41 AND 70 THEN '**'
    WHEN Stock_quantity BETWEEN 71 AND 100 THEN '***'
    WHEN Stock_quantity BETWEEN 101 AND 140 THEN '****'
    ELSE '*****'
END AS Stock
FROM books
ORDER BY Stock_quantity;