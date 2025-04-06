USE pet_shop;

-- NOT NULL constraint
CREATE TABLE cats2
	(
		Name VARCHAR(20) NOT NULL,
        Age TINYINT NOT NULL
    );

SHOW COLUMNS
FROM cats2;