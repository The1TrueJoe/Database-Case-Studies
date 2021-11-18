use CASE03_OTMR;

create table CREDITCARD
(
    PaymentID        char(30) not null,
    CreditCardNumber char(30) not null,
    CreditCardType   char(30) not null,
    CreditCardExpiry char(30) not null,

    primary key (PaymentID),
    foreign key (PaymentID) references PAYMENTTYPE(PaymentID)

)