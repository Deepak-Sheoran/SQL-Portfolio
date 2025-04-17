USE Book_store;
INSERT INTO Books(Title, Author_fname, Author_lname, Released_year, Stock_quantity, Pages)
VALUES
	('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('Fake_Book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT *
FROM Books;