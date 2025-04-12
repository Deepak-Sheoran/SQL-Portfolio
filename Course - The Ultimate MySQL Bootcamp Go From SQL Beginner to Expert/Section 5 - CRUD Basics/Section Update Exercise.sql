USE pet_shop;
SHOW TABLES;
DESC cats;
SELECT * FROM cats;
-- Change Jackson's name to 'Jack'
UPDATE cats
SET Name = 'Jack'
WHERE Name = 'Jackson';

-- Change Ringo's breed to 'British Shorthair'
Update cats
SET Breed = 'British Shorthair'
WHERE Name = 'Ringo';

-- Update the Maine Coon's ages to be 12
UPDATE cats
SET Age = 12
WHERE Breed = 'Maine Coon';