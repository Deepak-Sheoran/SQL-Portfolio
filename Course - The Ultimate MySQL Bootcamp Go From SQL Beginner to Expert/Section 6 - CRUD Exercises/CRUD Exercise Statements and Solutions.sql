-- Create a new database called shirts_db
CREATE DATABASE IF NOT EXISTS shirts_db;
USE shirts_db;
SELECT DATABASE();

-- CREATE a new table called Shirts that follows the following structure and data:
-- | Shirt_id |   Article   | Colour | Shirt_size | Last_worn |
-- ------------------------------------------------------------
-- |    1     |   T-Shirt   |  White |      S     |     10    |
-- |    2     |   T-Shirt   |  Green |      S     |    200    |
-- |    3     |  Polo Shirt |  Black |      M     |     10    |
-- |    4     |   Tank Top  |  Blue  |      S     |     50    |
-- |    5     |   T-Shirt   |  Pink  |      S     |     0     |
-- |    6     |  Polo Shirt |   Red  |      M     |     5     |
-- |    7     |   Tank Top  |  White |      S     |    200    |
-- |    8     |   Tank Top  |  Blue  |      M     |     15    |

-- Shirt_id   - Numerical -> Primary key and Auto Increments
-- Article    - Text
-- Colour     - Text
-- Shirt_size - Minimum 1 and Maximum 2 or 3 characters
-- Last_worn  - Numerical
CREATE TABLE IF NOT EXISTS Shirts
    (
        Shirt_id TINYINT UNSIGNED AUTO_INCREMENT,
        Article VARCHAR(20) NOT NULL DEFAULT 'Unknown',
        Colour VARCHAR(15) NOT NULL DEFAULT 'Colorless',
        Shirt_size VARCHAR(2) NOT NULL DEFAULT 'NA',
        Last_worn TINYINT UNSIGNED NOT NULL DEFAULT 0,
        PRIMARY KEY(Shirt_id)
    );
DESCRIBE Shirts;



-- C Challenges:
-- Insert all the data that's in the table
INSERT INTO Shirts(Article, Colour, Shirt_size, Last_worn)
VALUES
    ('T-Shirt', 'White', 'S', 10),
    ('T-Shirt', 'Green', 'S', 200),
    ('Polo Shirt', 'Black', 'M', 10),
    ('Tank Top', 'Blue', 'S', 50),
    ('T-Shirt', 'Pink', 'S', 0),
    ('Polo Shirt', 'Red', 'M', 5),
    ('Tank Top', 'White', 'S', 200),
    ('Tank Top', 'Blue', 'M', 15);

-- Add a new shirt Purple polo shirt, Shirt_size M last worn 50 days ago
INSERT INTO Shirts(Article, Colour, Shirt_size, Last_worn)
VALUE('Polo Shirt', 'Purple', 'M', 50);

SELECT *
FROM Shirts;



-- R Challenges:
-- Print all shirts(i.e., rows) but only print out Article and Colour
SELECT Article, Colour
FROM Shirts;

-- Print every detail except the Shirt_id for all medium shirts
SELECT Article, Colour, Shirt_size, Last_worn
FROM Shirts
WHERE Shirt_size = 'M';



-- U Challenges:
-- Update all polo shirts -> Change their Shirt_size to L
UPDATE Shirts
SET Shirt_size = 'L'
WHERE Article = 'Polo Shirt';

SELECT Article, Shirt_size
FROM Shirts
WHERE Article = 'Polo Shirt';

-- Update the shirt that was last worn 15 days ago, change it to 0
UPDATE Shirts
SET Last_worn = 0
WHERE Last_worn = 15;

SELECT *
FROM Shirts
WHERE Last_worn = 0;

-- Update all white shirts, change their Shirt_size to 'XS' and colour to 'off white'
UPDATE Shirts
SET Shirt_size = 'XS', Colour = 'Off White'
WHERE Colour = 'White';

SELECT *
FROM Shirts
WHERE Colour = 'Off White';



-- D Challenges:
-- DELETE all old shirts (Last worn 200 days ago)
DELETE
FROM Shirts
WHERE Last_worn >= 200;

-- DELETE all the tank tops
DELETE
FROM Shirts
WHERE Article = 'Tank Top';

-- DELETE all shirts
DELETE
FROM Shirts;



-- Drop the entire shirts table
DROP TABLE IF EXISTS Shirts;