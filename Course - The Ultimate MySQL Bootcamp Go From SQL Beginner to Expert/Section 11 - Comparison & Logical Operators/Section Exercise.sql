SHOW DATABASES;
USE book_store;
SELECT DATABASE();
SHOW TABLES;
DESC books;

-- 1. Select all books written before 1980 (non inclusive)
SELECT Title, Released_year
FROM books
WHERE Released_year < 1980;

-- 2. Select all books written by Eggers or Chabon
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author
FROM books
WHERE Author_lname IN ('Eggers', 'Chabon');

-- 3. Select all books written by Lahiri, Published after 2000
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author, Released_year
FROM books
WHERE Author_lname = 'Lahiri' AND Released_year > 2000;

-- 4. Select all books that have page counts between 100 and 200
SELECT Title, Pages
FROM books
WHERE Pages BETWEEN 100 AND 200;

-- 5. Select all books where author last name starts with a 'C' or an 'S'
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author
FROM books
WHERE Author_lname LIKE 'C%' OR Author_lname LIKE 'S%';

SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author
FROM books
WHERE LEFT(Author_lname, 1) IN ('C', 'S');

-- 6. Generate the Output
SELECT Title, CONCAT_WS(' ', Author_fname, Author_lname) AS Author,
CASE
	WHEN Title LIKE '%stories%' THEN 'Short Stories'
    WHEN Title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
    ELSE 'Novel'
END AS Type
FROM books;

-- 7. Generate the Output
SELECT CONCAT_WS(' ', Author_fname, Author_lname) AS Author,
CASE
	WHEN COUNT(*) = 1 THEN '1 book'
    ELSE CONCAT(COUNT(*), ' books')
END AS Count
FROM books
GROUP BY Author
ORDER BY COUNT(*) DESC;