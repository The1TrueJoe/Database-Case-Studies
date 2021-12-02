/*
List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

/*
	Querying MovieID and StoreID from the MEDIA table and Querying MovieTitle from the MOVIE table
*/
SELECT MEDIA.MovieID, MEDIA.StoreID, MOVIE.MovieTitle
FROM MEDIA, MOVIE

/* The first part of the WHERE statement makes sures that MovieID matchs for both the MEDIA and MOVIE table.
	The second part of the WHERE statment looks at the MovieID in the MEDIA table and query's the MOVIERENTAL database to see what MovieID exists in the MEDIA table
    but not in the MOVIERENTAL table. 
*/
WHERE MEDIA.MovieID = MOVIE.MovieID AND MEDIA.MovieID NOT IN (SELECT MOVIERENTAL.MovieID FROM MOVIERENTAL)

/*Group By StoreID and sorted by MovieID, NOTE: Movie ID is a string thus we have to use GROUP BY*/
GROUP BY StoreID, MovieID;