/*

Situation :-
1. An Australian visitor isn't familiar with MPAA movie ratings (e.g. PG, PG-13, R, etc..)
2. We want to know how many types of ratings we have in our database.
3. How many ratings do we have available?

Challenge -> Use what you've learned about SELECT DISTINCT and COUNT to retrieve the
number of distinct rating types our films could have in our database.

*/
SELECT COUNT(DISTINCT rating)
FROM film;