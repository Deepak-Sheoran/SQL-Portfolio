SHOW DATABASES;
USE Book_Store;
SHOW TABLES;
DESC Books;
SELECT * FROM Books;

-- String Functions

-- 1. CONCAT
SELECT Book_id, CONCAT(Author_fname, ' ', Author_lname) AS 'Author Name'
FROM Books;

-- 2. CONCAT_WS
SELECT Book_id, CONCAT_WS(' ', Author_fname, Author_lname) AS 'Author Name'
FROM Books;