USE TV;
SELECT DATABASE();
SHOW TABLES;

SELECT TABLE_NAME
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'TV';

SELECT *
FROM Full_Reviews;

-- HAVING clause
SELECT Title, AVG(Rating) AS 'Average Rating', COUNT(Title) AS 'Review Count'
FROM Full_Reviews
GROUP BY Title
HAVING COUNT(Title) >= 3
ORDER BY COUNT(Title);