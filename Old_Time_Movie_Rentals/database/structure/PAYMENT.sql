USE CASE03_OTMR

drop table PAYMENT;

create table PAYMENT
(
    CustomerID      char(30) not null,
    StatusID        char(30) not null,
    PaymentID       char(30) not null,
    EmployeeSIN     char(30) not null,
    PaymentAmount   char(30) not null,
    PaymantDateTime date     not null,

    PRIMARY KEY (PaymentID),
    FOREIGN KEY (CustomerID) references CUSTOMER(CustomerID),
    FOREIGN KEY (EmployeeSIN) REFERENCES EMPLOYEE(EmployeeSIN),
    FOREIGN KEY (StatusID) REFERENCES PAYMENTSTATUS(StatusID)
)
    collate = utf8_unicode_ci;

