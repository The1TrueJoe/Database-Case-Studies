USE CASE03_OTMR;

create table CASH
(
    PaymentID char(30) not null,
    Description char(30) not null,

    primary key (PaymentID),
    foreign key (PaymentID) references PAYMENTTYPE(PaymentID)

)