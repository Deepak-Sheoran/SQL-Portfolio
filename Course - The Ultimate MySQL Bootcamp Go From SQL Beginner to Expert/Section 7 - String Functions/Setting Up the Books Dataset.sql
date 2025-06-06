CREATE DATABASE IF NOT EXISTS Book_Store;
USE Book_Store;

CREATE TABLE IF NOT EXISTS Books 
	(
		Book_id TINYINT UNSIGNED AUTO_INCREMENT,
		Title VARCHAR(60) NOT NULL DEFAULT 'Not Known',
		Author_fname VARCHAR(30) NOT NULL DEFAULT 'Joen',
		Author_lname VARCHAR(30) NOT NULL DEFAULT 'Doe',
		Released_year MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
		Stock_quantity SMALLINT UNSIGNED NOT NULL DEFAULT 0,
		Pages SMALLINT UNSIGNED NOT NULL DEFAULT 0,
		PRIMARY KEY(Book_id)
	);

SHOW TABLES;
SHOW COLUMNS
FROM Books;

INSERT INTO Books (Title, Author_fname, Author_lname, Released_year, Stock_quantity, Pages)
VALUES
	('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
	('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
	('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
	('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
	('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
	('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
	('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
	('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
	('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
	('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
	('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
	("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
	('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
	('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
	('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
	('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM Books;