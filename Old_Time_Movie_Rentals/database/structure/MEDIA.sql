use CASE03_OTMR;

create table MEDIA
(
    MediaID        char(30) not null,
    MovieID        char(30) not null,
    StoreID        char(30) not null,
    MediaCondition char(30) not null,

    primary key (MediaID),
    foreign key (MovieID) references MOVIE(MovieID),
    foreign key (StoreID) references STOREMOVIE(StoreID)

)