SHOW DATABASES;
USE book_store;
SELECT DATABASE();
SHOW TABLES;

SELECT *
FROM people;

-- Find people who were born before the year 2005
SELECT *
FROM people
WHERE YEAR(BirthDate) < 2005;