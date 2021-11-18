use CASE03_OTMR;

create table CUSTOMER
(
    CustomerID     char(30) not null,
    CustomerName   char(30) not null,
    CustomerStreet char(30) not null,
    CustomerCity   char(30) not null,
    CustomerState  char(30) not null,
    CustomerZIP    int(11) not null,
    CustomerPhone  char(30) not null,

    primary key (CustomerID)

)