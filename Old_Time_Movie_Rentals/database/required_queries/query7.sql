-- query 7: list the toal amount received by each payment, sort by payment description
select PAYMENTTYPE.Description, sum(PAYMENT.PaymentAmount) as Amount_Received from PAYMENT
join PAYMENTTYPE on PAYMENT.PaymentID = PAYMENTTYPE.PaymentID
group by PAYMENTTYPE.Description
order by PAYMENTTYPE.Description

