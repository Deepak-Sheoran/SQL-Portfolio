SHOW DATABASES;
USE TV;
SELECT DATABASE();
-- Following is the code for finding the views in a database
SELECT TABLE_NAME
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'TV';

SHOW TABLES;

CREATE VIEW Full_Reviews AS
SELECT A.Id AS Review_Id, Series_Id, Title, Genre, Released_Year, Rating, Reviewer_Id, First_Name, Last_Name
FROM Reviews AS A
JOIN Series AS B
	ON A.Series_Id = B.Id
JOIN Reviewers AS C
	ON A.Reviewer_Id = C.Id
ORDER BY Series_Id;

SELECT *
FROM Full_Reviews;

-- Further operation we can perform using views
-- a simple logical statement
SELECT *
FROM Full_Reviews
WHERE Genre = 'Animation';

-- DROP VIEW Full_Reviews;