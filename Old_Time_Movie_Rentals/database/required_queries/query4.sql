/*
List the total number of movies rented out by each store, grouped and sorted by store ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

SELECT MOVIERENTAL.StoreID, COUNT(MOVIERENTAL.StoreID) AS NumberOfRentedOutMovies, STORE.StoreName
FROM MOVIERENTAL, STORE
WHERE MOVIERENTAL.StoreID = STORE.StoreID
GROUP BY StoreID;