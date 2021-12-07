/*
List the total amount received by each payment type, sort by payment description
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Selects the description from the PAYMENTTYPE and creates a new calcualted column of the sum of PaymentAmount from PAYMENT*/
select PAYMENTTYPE.Description, sum(PAYMENT.PaymentAmount) as Amount_Received from PAYMENT

/* Joins PAYMENTTYPE with PAYMENT where there PaymentID's match */
join PAYMENTTYPE on PAYMENT.PaymentID = PAYMENTTYPE.PaymentID

/* Groups by description and orders by the description in alphanumeric order*/
group by PAYMENTTYPE.Description
order by PAYMENTTYPE.Description
