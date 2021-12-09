USE CASE03_OTMR;

create table STOREMOVIE
(
    MovieID char(30) not null,
    StoreID char(30) not null,

    primary key (MovieID, StoreID),
    foreign key (MovieID) references MOVIE(MovieID),
    foreign key (StoreID) references STORE(StoreID)
    
);