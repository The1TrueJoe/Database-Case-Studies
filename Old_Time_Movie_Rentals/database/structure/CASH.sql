USE CASE03_OTMR;

create table CASH
(
    PaymentID char(30) not null,
    Description char(30) not null,

    PRIMARY KEY (PaymentID),
    FOREIGN KEY (PaymentID) REFERENCES PAYMENTTYPE(PaymentID)
)

    collate = utf8_unicode_ci;