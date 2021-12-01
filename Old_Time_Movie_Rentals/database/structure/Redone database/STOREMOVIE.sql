USE CASE03_OTMR;

create table STOREMOVIE
(
    MovieID char(30) not null,
    StoreID char(30) not null,

    primary key (MovieID, StoreID),
    foreign key (StoreID) references STORE(StoreID)

)