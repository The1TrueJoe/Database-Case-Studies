/*
List the top 5 customers based on their total payment, and sort in descending order by total payment
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Output customer name, id, and their total payment*/
SELECT CUSTOMER.CustomerName, CUSTOMER.CustomerID, TOTAL_PAYMENT.PaymentAmount
/* Access the Employee table */
FROM CUSTOMER
/* Join this to a new temp table*/
JOIN (
    /* Output the employee ID and the total payment amount into a temp table */
    SELECT CustomerID, SUM(PaymentAmount) AS PaymentAmount
    /* Access the PAYMENT table */
    FROM PAYMENT
    /* Group multiple payments together based on the ID*/
    GROUP BY CustomerID
    )

    /* Set temp table alias to TOTAL_PAYMENT */
    AS TOTAL_PAYMENT
    /* Join these tables based on employee IDs*/
    ON TOTAL_PAYMENT.CustomerID = CUSTOMER.CustomerID

/* Sort based on the IDs */
ORDER BY TOTAL_PAYMENT.PaymentAmount DESC
/* Limit to top 5 customers */
LIMIT 5
;