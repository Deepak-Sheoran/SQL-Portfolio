/*

Situation :-
-> We want to reward our first 10 paying customers.
-> What are the customer ids of the first 10 customers who created a payment?

*/
SELECT customer_id
FROM payment
ORDER BY payment_date
LIMIT 10;