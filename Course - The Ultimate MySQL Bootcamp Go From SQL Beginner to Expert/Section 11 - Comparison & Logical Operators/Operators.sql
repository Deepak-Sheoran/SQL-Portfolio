SHOW DATABASES;
USE book_store;
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

