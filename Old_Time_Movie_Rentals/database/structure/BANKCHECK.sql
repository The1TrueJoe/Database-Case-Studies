use CASE03_OTMR;

create table BANKCHECK
(
    PaymentID   char(30) not null,
    CheckNumber char(30) not null,
    BankNumber  char(30) not null,
    BankName    char(30) not null,

    primary key (PaymentID),
    foreign key (PaymentID) references PAYMENTTYPE(PaymentID)
    
)