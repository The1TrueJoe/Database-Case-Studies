/*
List all the customers who did not rent any movie and sort by customer ID
*/

/* Specify the schema to user */
use CASE03_OTMR;
SELECT CustomerID, CustomerName
FROM CUSTOMER
WHERE CustomerID NOT IN (SELECT CustomerID FROM MOVIERENTAL) 
GROUP BY CustomerID;