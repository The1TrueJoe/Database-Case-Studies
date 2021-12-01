use CASE03_OTMR;

drop table MEDIA;

create table MEDIA
(
    MediaID        char(30) UNIQUE not null,
    MovieID        char(30) not null,
    StoreID        char(30) not null,
    MediaCondition char(30) not null,

    primary key (MediaID),
    foreign key (StoreID) references STOREMOVIE(StoreID),
    foreign key (MovieID) references STOREMOVIE(MovieID)

);