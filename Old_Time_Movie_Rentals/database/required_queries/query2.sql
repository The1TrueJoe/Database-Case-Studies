/*
List all the customers who lie in UpTown. List their name and address sorted by name
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Display customer name and address */
SELECT CustomerName, CustomerStreet, CustomerState, CustomerZIP
/* Access the CUSTOMER table */
FROM CUSTOMER
/* Exclude customers that are not from UpTown */
WHERE CustomerCity LIKE 'UpTown'
/* Sort customers by their names */
ORDER BY CustomerName
;