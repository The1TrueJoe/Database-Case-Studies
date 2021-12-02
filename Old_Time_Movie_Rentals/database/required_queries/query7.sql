/*
List the total amount received by each payment type, sort by payment description
*/

/* Specify the schema to user */
use CASE03_OTMR;

select PAYMENTTYPE.Description, sum(PAYMENT.PaymentAmount) as Amount_Received from PAYMENT
join PAYMENTTYPE on PAYMENT.PaymentID = PAYMENTTYPE.PaymentID
group by PAYMENTTYPE.Description
order by PAYMENTTYPE.Description

