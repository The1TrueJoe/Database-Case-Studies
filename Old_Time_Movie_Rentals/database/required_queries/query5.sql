/*
List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

SELECT MovieID, StoreID
FROM MEDIA
WHERE MediaID NOT IN (SELECT MediaID FROM MOVIERENTAL)
GROUP BY StoreID, MovieID;