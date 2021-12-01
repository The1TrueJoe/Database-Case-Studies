USE CASE03_OTMR;


drop table MOVIERENTAL;

create table MOVIERENTAL
(
    MediaID        char(30) not null,
    CustomerID     char(30) not null,
    StatusID       char(30) not null,
    MovieID        char(30) not null,
    StoreID        char(30) not null,
    EmployeeSIN    char(30) not null,
    PaymentID      char(30) not null,
    RentalDateTime date     not null,
    DueDate        date     not null,
    OverdueCharge  char(30) not null,
    RentalRate     char(30) not null,

    primary key (MediaID, MovieID, RentalDateTime),
    foreign key (MediaID) references MEDIA(MediaID),
    foreign key (CustomerID) references CUSTOMER(CustomerID),
    foreign key (EmployeeSIN) references EMPLOYEE(EmployeeSIN),
    foreign key (PaymentID) references PAYMENT(PaymentID),
    foreign key (StatusID) references RENTALSTATUS(StatusID)

    
);




USE CASE03_OTMR;
alter table MOVIERENTAL ADD CONSTRAINT MVUI_MEDIAID UNIQUE(MediaID);

alter table MOVIERENTAL
    add constraint MOVIERENTAL___fk
        foreign key (MediaID) references MEDIA(MediaID);