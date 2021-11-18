use CASE03_OTMR;

create table STORE
(
    StoreID          char(30) not null,
    DistributorID    char(30) not null,
    StoreName        char(30) not null,
    StoreStreet      char(30) not null,
    StoreCity        char(30) not null,
    StoreState       char(30) not null,
    StoreZIP         char(30) not null,
    StorePhoneNumber char(30) not null,

    primary key (StoreID),
    foreign key (DistributorID) references DISTRIBUTOR(DistributorID)
)
    collate = utf8_unicode_ci;

