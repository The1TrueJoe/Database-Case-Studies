USE CASE03_OTMR;


DROP TABLE BANKCHECK;

create table BANKCHECK
(
    PaymentID   char(30) not null,
    CheckNumber char(30) not null,
    BankNumber  char(30) not null,
    BankName    char(30) not null,

    PRIMARY KEY (PaymentID),
    FOREIGN KEY (PaymentID) REFERENCES PAYMENTTYPE(PaymentID)
)
    collate = utf8_unicode_ci;