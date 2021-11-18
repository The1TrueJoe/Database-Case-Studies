USE CASE03_OTMR;

create table DISTRIBUTOR
(
    DistributorID          char(30) not null,
    DistributorName        char(30) not null,
    DistributorCity        char(30) not null,
    DistributorState       char(30) not null,
    DistributorZIP         char(30) not null,
    DistributorPhoneNumber char(30) not null,

    primary key (DistributorID)

)
