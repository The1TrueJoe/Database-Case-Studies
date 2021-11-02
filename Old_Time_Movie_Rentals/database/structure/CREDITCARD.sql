create table CREDITCARD
(
    PaymentID        char(30) not null,
    CreditCardNumber char(30) not null,
    CreditCardType   char(30) not null,
    CreditCardExpiry char(30) not null
)
    collate = utf8_unicode_ci;

