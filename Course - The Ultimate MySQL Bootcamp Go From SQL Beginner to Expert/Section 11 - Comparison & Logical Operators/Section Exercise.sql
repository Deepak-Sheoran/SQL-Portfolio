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
SELECT Title, 