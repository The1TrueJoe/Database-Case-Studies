/*
List the last names of all customers who are now renting
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Return the name of the customer */
SELECT CUSTOMER.CustomerName
/* Access tables CUSTOMER and MOVIERENTAL */
FROM CUSTOMER, MOVIERENTAL
/* Relate the customer IDs of the active rentals to the customers */
WHERE MOVIERENTAL.CustomerID = CUSTOMER.CustomerID
;