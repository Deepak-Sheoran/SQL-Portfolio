SHOW DATABASES;
USE TV;
SELECT DATABASE();

SELECT *
FROM Series;
SELECT *
FROM Reviewers;
SELECT *
FROM Reviews;



-- 1. Write a query that outputs Title alongside Ratings
SELECT Title, Rating
FROM Series
JOIN Reviews
ON Series.Id = Reviews.Series_Id
ORDER BY Title;

-- 2. Find the average rating for each series and then sort the data
SELECT Title, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM Series
JOIN Reviews
ON Series.Id = Reviews.Series_Id
GROUP BY Title
ORDER BY Avg_Rating;

-- 3. Print the first name, last name of the reviewers alongside the ratings they gave to the series
SELECT First_Name, Last_Name, Rating
FROM Reviewers
JOIN Reviews
ON Reviewers.Id = Reviews.Reviewer_Id;

-- 4. Find the series for which there are no reviews
SELECT Title AS Unreviewed_Series
FROM Series
LEFT JOIN Reviews
ON Series.Id = Reviews.Series_Id
WHERE Rating IS NULL;

-- 5. Print out the genre and average rating
SELECT Genre, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM Series
JOIN Reviews
ON Series.Id = Reviews.Series_Id
GROUP BY Genre;

-- 6. Complex
SELECT
	First_Name,
    Last_Name,
	COUNT(Rating) AS Count,
    IFNULL(MIN(Rating), 0) As Minimum,
    IFNULL(MAX(Rating), 0) AS Maximum,
    IFNULL(ROUND(AVG(Rating), 2), 0) AS Average,
    IF(COUNT(Rating) = 0, 'INACTIVE', 'ACTIVE') AS Status
FROM Reviewers
LEFT JOIN Reviews
ON Reviewers.Id = Reviews.Reviewer_Id
GROUP BY First_Name, Last_Name;

-- 7. Output Title of the series, its rating and the full name of the person who left that rating
SELECT Title, Rating, CONCAT_WS(' ', First_Name, Last_Name) AS Reviewer
FROM Reviews
JOIN Series
ON Series.Id = Reviews.Series_Id
JOIN Reviewers
ON Reviewers.Id = Reviews.Reviewer_Id
ORDER BY Title;