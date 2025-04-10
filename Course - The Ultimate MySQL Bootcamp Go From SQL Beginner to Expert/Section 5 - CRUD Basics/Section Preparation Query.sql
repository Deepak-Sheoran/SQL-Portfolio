SHOW DATABASES;
USE pet_shop;
SELECT DATABASE();
SHOW TABLES;
DROP TABLE IF EXISTS cats;
CREATE TABLE Cats (
    Cat_id TINYINT UNSIGNED AUTO_INCREMENT,
    Name VARCHAR(25),
    Breed VARCHAR(25),
    Age TINYINT UNSIGNED,
    PRIMARY KEY (Cat_id)
);
DESC Cats;

INSERT INTO Cats(Name, Breed, Age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT *
FROM Cats;