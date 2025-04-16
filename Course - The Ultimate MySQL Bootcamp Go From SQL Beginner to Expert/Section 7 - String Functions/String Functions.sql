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

-- 3. SUBSTRING
SELECT CONCAT(Author_fname, ' ', SUBSTRING(Author_lname FROM 1 FOR 1), '.') AS 'Author Name' -- An example of combining string function
FROM Books;

-- Combining String Functions
SELECT CONCAT(SUBSTR(Title FROM 1 FOR 10), '...') AS 'Shortened Title'
FROM Books;

SELECT CONCAT(SUBSTR(Author_fname, 1, 1), '.', SUBSTRING(Author_lname, 1, 1), '.') AS 'Author\'s Initials'
FROM Books;


-- 4. REPLACE
SELECT REPLACE(Title, ' ', '-') AS 'Hyphen in Place of Whitespace'
FROM Books;

-- 5. REVERSE
SELECT CONCAT(Author_fname, REVERSE(Author_fname)) AS Palindrome
FROM Books;

-- 6. CHAR_LENGTH and LENGTH
SELECT Title, CONCAT(CHAR_LENGTH(Title), ' characters') AS Length, CONCAT(LENGTH(Title), ' Bytes') AS 'Size in Bytes'
FROM Books;

-- 7. UPPER and LOWER
SELECT Title, UCASE(Title) AS 'Upper Case Title', LCASE(Title) AS 'Lower Case Title'
FROM Books;

SELECT CONCAT('I LOVE ', UPPER(Title), ' !!!') AS 'Announcement'
FROM Books;

-- 8. INSERT
SELECT INSERT('Hello Bobby', 6, 0, 'There');

-- 9. INSTR
SELECT INSTR('Hello World', 'Wor');

-- 10. LEFT and RIGHT
SELECT LEFT('omghahalol!', 3);
SELECT RIGHT('omghahalol!', 4);

-- 11. REPEAT
SELECT REPEAT('Ha', 4);

-- 12. TRIM
SELECT TRIM('  San Antonio   '), TRIM(LEADING 'x' FROM 'xxxBarxxx');

