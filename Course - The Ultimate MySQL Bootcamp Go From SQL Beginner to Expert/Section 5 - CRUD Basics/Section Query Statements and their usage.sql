USE pet_shop;
SHOW TABLES;

-- SELECT
SELECT * FROM cats;
SELECT Name FROM cats;
SELECT Age FROM cats;
SELECT Name, Age FROM cats;

-- WHERE
SELECT *
FROM cats
WHERE Age = 4;
SELECT NAME FROM cats WHERE Age = 4;

-- AS
SELECT Cat_Id AS ID
FROM cats;

-- Update
UPDATE cats
SET Age = 14
WHERE Name = 'Misty';
