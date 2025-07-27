USE TV;
SELECT DATABASE();
SHOW TABLES;

SELECT TABLE_NAME
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'TV';

SELECT *
FROM Full_Reviews;

-- HAVING clause
SELECT Title, ROUND(AVG(Rating), 2) AS 'Average Rating', COUNT(Title) AS 'Review Count'
FROM Full_Reviews
GROUP BY Title
HAVING COUNT(Title) >= 3
ORDER BY COUNT(Title);

