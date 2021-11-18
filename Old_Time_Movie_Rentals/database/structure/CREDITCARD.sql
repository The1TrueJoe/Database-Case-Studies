USE CASE03_OTMR;


drop table CREDITCARD;

create table CREDITCARD
(
    PaymentID        char(30) not null,
    CreditCardNumber char(30) not null,
    CreditCardType   char(30) not null,
    CreditCardExpiry char(30) not null,

    primary key (PaymentID),
    FOREIGN KEY (PaymentID) REFERENCES PAYMENTTYPE(PaymentID)
)
    collate = utf8_unicode_ci;

