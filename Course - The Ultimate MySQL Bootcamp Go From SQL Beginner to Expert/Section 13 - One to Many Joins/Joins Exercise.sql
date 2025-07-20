-- 1. Write the schema for two tables that are related to each other
CREATE DATABASE IF NOT EXISTS College;
SHOW DATABASES;
USE College;
SELECT DATABASE();
CREATE TABLE IF NOT EXISTS Students
	(
		Id TINYINT UNSIGNED AUTO_INCREMENT,
        First_Name VARCHAR(30) NOT NULL DEFAULT 'John Doe',
        PRIMARY KEY(Id)
    );
CREATE TABLE IF NOT EXISTS Papers
	(
		Title VARCHAR(50) NOT NULL DEFAULT 'Not Found!!',
        GRADE TINYINT UNSIGNED,
        Student_Id TINYINT UNSIGNED,
        FOREIGN KEY(Student_Id) REFERENCES Students(Id) ON DELETE CASCADE
    );
SHOW TABLES;
DESC Students;
DESC Papers;

INSERT INTO Students(First_Name)
VALUES
	('Caleb'),
    ('Samantha'),
    ('Raj'),
    ('Carlos'),
    ('Lisa');
INSERT INTO Papers
VALUES
	('My First Book Report', 60, 1),
    ('My Second Book Report', 75, 1),
    ('Russian Lit Through the Ages', 94, 2),
    ('De Montaigne and The Art of The Essay', 98, 2),
    ('Borges and Magical Realism', 89, 4);
    
SELECT *
FROM Students;
SELECT *
FROM Papers;

-- 2. Print what's on the screen
SELECT First_Name, Title, Grade
FROM Students
JOIN Papers
ON Students.Id = Papers.Student_Id
ORDER BY Grade DESC;

-- 3. Print what's on the screen
SELECT First_Name, Title, Grade
FROM Students
LEFT JOIN Papers
ON Students.Id = Papers.Student_Id;

-- 4. Replace rhe NULL values from the output in the third query
SELECT First_Name, IFNULL(Title, 'MISSING'), IFNULL(Grade, 0)
FROM Students
LEFT JOIN Papers
ON Students.Id = Papers.Student_Id;

-- 5. Print the average grade each student recieved
SELECT First_Name, IFNULL(AVG(Grade), 0) AS Average
FROM Students
LEFT JOIN Papers
ON Students.Id = Papers.Student_Id
GROUP BY First_Name
ORDER BY Average DESC;

-- 6. Using the data from the above query create a new column called passing_status and use the case statement to assign which student passes
SELECT First_Name, IFNULL(AVG(Grade), 0) AS Average,
	CASE
		WHEN IFNULL(AVG(Grade), 0) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS Passing_Status
FROM Students
LEFT JOIN Papers
ON Students.Id = Papers.Student_Id
GROUP BY First_Name
ORDER BY Average DESC;