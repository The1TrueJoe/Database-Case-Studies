/*
List the total payment received by each employee, sorted by employee number
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Output employee name, id, and their total payment*/
SELECT EMPLOYEE.EmployeeName, EMPLOYEE.EmployeeSIN, TOTAL_PAYMENT.PaymentAmount
/* Access the Employee table */
FROM EMPLOYEE
/* Join this to a new temp table*/
JOIN (
    /* Output the employee ID and the total payment amount into a temp table */
    SELECT EmployeeSIN, SUM(PaymentAmount) AS PaymentAmount
    /* Access the PAYMENT table */
    FROM PAYMENT
    /* Group multiple payments together based on the ID*/
    GROUP BY EmployeeSIN
    )

    /* Set temp table alias to TOTAL_PAYMENT */
    AS TOTAL_PAYMENT
    /* Join these tables based on employee IDs*/
    ON TOTAL_PAYMENT.EmployeeSIN = EMPLOYEE.EmployeeSIN

/* Sort based on the IDs */
ORDER BY EmployeeSIN
;