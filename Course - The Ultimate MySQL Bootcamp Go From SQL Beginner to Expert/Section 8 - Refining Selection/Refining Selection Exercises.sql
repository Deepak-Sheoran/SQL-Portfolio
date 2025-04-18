SHOW DATABASES;
USE Book_store;
SELECT DATABASE();
SHOW TABLES;
DESC Books;

-- Exercises:
-- 1. Select all story collections i.e., Titles that contain 'stories'
SELECT Book_id, Title
FROM Books
WHERE Title LIKE '%stories%';

-- 2. Find the Longest Book and print out its Title and Page Count
SELECT Book_id, Title, Pages
FROM Books
ORDER BY Pages DESC
LIMIT 1;

-- 3. Print a summary containing the title and year, for the 3 most recent books
SELECT CONCAT_WS(' - ', Title, Released_year) AS Summary
FROM Books
ORDER BY Released_year DESC
LIMIT 3;

-- 4. Find all the bokks with an Author_lname that contains a space " "
SELECT Title, Author_lname
FROM Books
WHERE Author_lname LIKE '% %';

-- 5. Find the 3 books with the lowest stock quantity - Select title, year and stock
SELECT Book_id, Title, Released_year, Stock_quantity
FROM Books
ORDER BY Stock_quantity, Title
LIMIT 3;

-- 6. Print the Title and Author_lname, sorted first by Author_lname and then by Title
SELECT Title, Author_lname
FROM Books
ORDER BY Author_lname, Title;

-- 7. Create a new column and then sort it by last name
SELECT UCASE(CONCAT('My Favorite Author is ', Author_fname, ' ', Author_lname, '!')) AS Yell
FROM Books
ORDER BY Author_lname;