/*
List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID
*/

/* Specify the schema to user */
use CASE03_OTMR;
SELECT MEDIA.MovieID, MEDIA.StoreID, MOVIE.MovieTitle
FROM MEDIA, MOVIE
WHERE MEDIA.MovieID = MOVIE.MovieID AND MEDIA.MovieID NOT IN (SELECT MOVIERENTAL.MovieID FROM MOVIERENTAL)
GROUP BY StoreID, MovieID;