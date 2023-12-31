/*
How many payment transactions were greater than $5.00?
*/
SELECT COUNT(payment_id)
FROM payment
WHERE amount > 5;

/*
How many actors have a first name that starts with the letter P
*/
SELECT COUNT(actor_id)
FROM actor
WHERE first_name ILIKE 'P%';

/*
How many unique districts are our customers from?
*/
SELECT COUNT(DISTINCT district)
FROM address;

/*
Retrieve the list of names for those distinct districts from the previous question.
*/
SELECT DISTINCT district
FROM address
ORDER BY district;

/*
How many films have a rating of R and a replacement cost between $5 and $15?
*/
SELECT COUNT(film_id)
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

/*
How many films have the word Truman somewhere in the title?
*/
SELECT COUNT(title)
FROM film
WHERE title ILIKE '%Truman%';