use CASE03_OTMR;

create table DEBITCARD
(
    PaymentID       char(30) not null,
    DebitCardNumber char(30) not null,
    DebitCardType   char(30) not null,
    DebitCardExpiry char(30) not null,

    primary key (PaymentID),
    foreign key (PaymentID) references PAYMENTTYPE(PaymentID)

)