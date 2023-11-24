/*

Situation :-
-> If a customer can watch any movie that is 50 minutes or less in run time, how many options does they have?

*/
SELECT COUNT(title)
FROM film
WHERE length <= 50;