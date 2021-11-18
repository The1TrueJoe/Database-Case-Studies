USE CASE03_OTMR;

create table STOREMOVIE
(
    MovieID char(30) not null,
    StoreID char(30) not null,

    PRIMARY KEY (MovieID, StoreID),
    FOREIGN KEY (MovieID) REFERENCES MOVIE(MovieID),
    FOREIGN KEY (StoreID) REFERENCES STORE(StoreID)
)
    collate = utf8_unicode_ci;

