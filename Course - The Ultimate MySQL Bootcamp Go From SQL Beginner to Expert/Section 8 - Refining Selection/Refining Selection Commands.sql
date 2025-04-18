USE Book_store;

-- DISTINCT
SELECT Author_lname FROM Books;
SELECT DISTINCT Author_lname FROM Books;
SELECT COUNT(Author_lname) AS 'Last Name Count', COUNT(DISTINCT Author_lname) AS 'Distinct Last Name Count'
FROM Books;

SELECT DISTINCT CONCAT(Author_fname, ' ', Author_lname) AS 'Unique Full Names'
FROM Books;
-- Same as
SELECT DISTINCT Author_fname, Author_lname AS 'Unique Full Names'
FROM Books;

-- ORDER BY
SELECT Book_id, Title, Pages
FROM Books
ORDER BY Pages DESC;

SELECT CONCAT_WS(' ', Author_fname, Author_lname) AS Author_Name
FROM Books
ORDER BY Author_Name;

-- LIMIT
SELECT Book_id, Title, Released_year
FROM Books
ORDER BY Released_year
LIMIT 5;

-- LIKE
SELECT *
FROM Books
WHERE Title LIKE '%:%';

-- Escaping Wildcards
SELECT *
FROM Books
WHERE Title LIKE '%\%%';

