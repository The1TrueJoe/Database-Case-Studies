USE CASE03_OTMR;

create table PAYMENTTYPE
(
    PaymentID   char(30) not null,
    Description char(30) not null,
    PRIMARY KEY (PaymentID)
)
    collate = utf8_unicode_ci;

