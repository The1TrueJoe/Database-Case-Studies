/*
List the total number of movies rented out by each store, grouped and sorted by store ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

/*	Access StoreID values of the MOVIERENTAL table and counts the number of times a unique StoreID occurs in MOVIERENTAL. The amount of times that StoreID occurs
	is the number of movies that store has rented out. Here we are also grabbing the StoreName from the STORE table
*/
SELECT MOVIERENTAL.StoreID, COUNT(MOVIERENTAL.StoreID) AS NumberOfRentedOutMovies, STORE.StoreName
FROM MOVIERENTAL, STORE

/*Making sure that the StoreID from both tables match up*/
WHERE MOVIERENTAL.StoreID = STORE.StoreID

/*Grouping by StoreID*/
GROUP BY StoreID;