create table PAYMENT
(
    CustomerID      char(30) not null,
    StatusID        char(30) not null,
    PaymentID       char(30) not null,
    EmployeeSIN     char(30) not null,
    PaymentAmount   char(30) not null,
    PaymantDateTime date     not null
)
    collate = utf8_unicode_ci;

