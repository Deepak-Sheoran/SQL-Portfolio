/*
How many people there are who has name that starts with 'j'
*/
SELECT COUNT(first_name)
FROM customer
WHERE first_name ILIKE 'j%';

/*
How many people there are who has name that starts with 'j' and their last name starts with 's'
*/
SELECT COUNT(last_name)
FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';
