USE pet_shop;
SHOW TABLES;
DESC cats;
SELECT * FROM cats;

-- DELETE all 4 year old cats
DELETE
FROM cats
WHERE Age = 4;

-- DELETE the cats whose Age is the same as their Cat_id
DELETE
FROM cats
WHERE Cat_id = Age;

-- DELETE all the cats
DELETE
FROM cats;