USE pet_shop;
INSERT INTO cats(name)
VALUE ('Todd');

-- Inserting an empty row
INSERT INTO cats()
VALUE();

SELECT *
FROM cats;