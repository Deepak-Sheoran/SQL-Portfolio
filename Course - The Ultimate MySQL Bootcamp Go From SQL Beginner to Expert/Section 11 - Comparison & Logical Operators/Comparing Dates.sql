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

-- People born after noon
SELECT *
FROM people
WHERE Hour(BirthTime) > 12;

-- Using Cast
SELECT CAST('2009-09-11 09:53:27' AS DATE) AS 'Date';

SELECT *
FROM people
WHERE BirthTime BETWEEN CAST('10:00:00' AS TIME) AND CAST('14:00:00' AS TIME);

