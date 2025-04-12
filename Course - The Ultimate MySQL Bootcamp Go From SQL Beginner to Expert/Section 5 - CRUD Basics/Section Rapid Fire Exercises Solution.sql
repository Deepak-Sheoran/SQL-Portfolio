USE pet_shop;
SHOW TABLES;
DESC cats;
SELECT *
FROM cats;

-- Write a query that prints the Cat_Id
SELECT Cat_id FROM cats;

-- Write a query that prints the Name and Breed of the cats
SELECT Name, Breed FROM cats;

-- Write a query that prints the Name and Age of the 'Tabby' cats
SELECT Name, Age
FROM cats
WHERE Breed = 'Tabby';

-- Write a query that prints the the Cat_Id and Age for cats whose Cats_Id and Age are the same
SELECT Cat_Id, Age
FROM cats
WHERE Cat_Id = Age;