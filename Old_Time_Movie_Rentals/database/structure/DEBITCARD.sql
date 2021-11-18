USE CASE03_OTMR;


DROP TABLE DEBITCARD;

create table DEBITCARD
(
    PaymentID       char(30) not null,
    DebitCardNumber char(30) not null,
    DebitCardType   char(30) not null,
    DebitCardExpiry char(30) not null,

    PRIMARY KEY (PaymentID),
    FOREIGN KEY (PaymentID) REFERENCES PAYMENTTYPE(PaymentID)
)
    collate = utf8_unicode_ci;

