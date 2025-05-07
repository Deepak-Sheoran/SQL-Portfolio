SHOW DATABASES;
USE Book_store;
SELECT DATABASE();
SHOW TABLES;

CREATE TABLE People
	(
		Id TINYINT UNSIGNED AUTO_INCREMENT,
		Name VARCHAR(50) DEFAULT 'John Doe' NOT NULL,
        BirthDate DATE,
        BirthTime TIME,
        BirthDateTime DATETIME,
        PRIMARY KEY(Id)
    );

DESC People;

INSERT INTO People(Name, BirthDate, BirthTime, BirthDateTime)
VALUE ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO People(Name, BirthDate, BirthTime, BirthDateTime)
VALUES 
	('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'),
	('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT *
FROM People;

-- Date and Time Functions
-- Dynamically getting the current date and time
SELECT 
	CURDATE() AS 'Current Date',
	CURTIME() AS 'Current Time',
    NOW() AS 'Current Date and Time';
    
INSERT INTO People(Name, BirthDate, BirthTime, BirthDateTime)
VALUE ('Just Born', CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP);

-- 