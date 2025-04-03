/*

Situation :-
1. An Australian visitor isn't familiar with MPAA movie ratings (e.g. PG, PG-13, R, etc..)
2. We want to know the types of ratings we have in our database.
3. What ratings do we have available?

Challenge -> Use what you've learned about SELECT DISTINCT to retrieve the distinct rating types our films could have in our database.

*/
SELECT DISTINCT rating
FROM film;