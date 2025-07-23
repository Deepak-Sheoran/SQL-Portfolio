SHOW DATABASES;
USE TV;
SELECT DATABASE();

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
FROM Full_Reviews
WHERE Genre = 'Animation';

-- DROP VIEW Full_Reviews;