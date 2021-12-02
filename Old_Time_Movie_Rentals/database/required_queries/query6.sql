/*
List all the customers who did not rent any movie and sort by customer ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

/*
	Selects the CustomerID and CustomerName from the CUSTOMER table
*/
SELECT CustomerID, CustomerName
FROM CUSTOMER

/*
	Checks to see if the CustomerID is not in the MOVIERENTAL table. If it is not than that means
    the customer has yet to rent a movie. 
*/
WHERE CustomerID NOT IN (SELECT CustomerID FROM MOVIERENTAL) 

/*
	Sorting by Customer ID. Group by is used because CustomerID is a unique alapha numeric string
*/
GROUP BY CustomerID;