SHOW DATABASES;
USE pet_shop;
SHOW TABLES;
DESC cats;

-- INSERT statement for inserting single row of data in the table
INSERT INTO cats
VALUE('Jetson', 7);

-- INSERT statement for inserting multiple rows of data in the table
INSERT INTO cats
VALUES
	('Blue Steele', 5),
    ('Jenkins', 7);

-- Inserting data with switched order
INSERT INTO cats(Age, Name)
VALUE(12, 'Victoria');

INSERT INTO cats(Age, Name)
VALUES
	(2,  'Beth'),
    (8,  'Linus'),
    (10, 'Charlie'),
    (3,  'Sadie'),
    (1,  'Lazy Bear');

-- Statement for checking whether or not the row we inserted actually got stored inside the table
SELECT *
FROM cats;