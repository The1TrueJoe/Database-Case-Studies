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
    RentalRate     char(30) not null
)
    collate = utf8_unicode_ci;

