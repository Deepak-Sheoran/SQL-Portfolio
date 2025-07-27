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
FROM Full_Reviews;

-- Further operation we can perform using views
-- a simple logical statement
SELECT *
FROM Full_Reviews
WHERE Genre = 'Animation';
-- Doing a group by
SELECT Genre, AVG(Rating) AS Average_Rating
FROM Full_Reviews
GROUP BY Genre
ORDER BY Average_Rating;



-- Updatable views
CREATE VIEW Ordered_Series AS
SELECT *
FROM Series
ORDER BY Released_Year;

SELECT *
FROM Ordered_Series;

INSERT INTO Ordered_Series(Title, Released_Year, Genre)
VALUE('The Great', 2020, 'Comedy');

SELECT *
FROM Series;

DELETE
FROM Ordered_Series
WHERE Title = 'The Great';

SELECT *
FROM Series;



-- Changing an existing view
-- 1. CREATE OR REPLACE
CREATE OR REPLACE VIEW Ordered_Series AS
SELECT *
FROM Series
ORDER BY Released_Year DESC;

SELECT *
FROM Ordered_Series;

-- 2. ALTER VIEW
ALTER VIEW Ordered_Series AS
SELECT *
FROM Series
ORDER BY Released_year;

SELECT *
FROM Ordered_Series;



-- Following is the code for finding the views in a database
SELECT TABLE_NAME
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'TV';

DROP VIEW Ordered_Series;