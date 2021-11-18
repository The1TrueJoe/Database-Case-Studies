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

    primary key (PaymentID),
    foreign key (CustomerID) references CUSTOMER(CustomerID),
    foreign key (EmployeeSIN) references EMPLOYEE(EmployeeSIN),
    foreign key (StatusID) references PAYMENTSTATUS(StatusID)
    
)