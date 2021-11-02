create table DEBITCARD
(
    PaymentID       char(30) not null,
    DebitCardNumber char(30) not null,
    DebitCardType   char(30) not null,
    DebitCardExpiry char(30) not null
)
    collate = utf8_unicode_ci;

