use CASE03_OTMR;

create table MOVIE
(
    MovieID         char(30) not null,
    MovieTitle      char(30) not null,
    StartName       char(30) not null,
    MovieDescriptor char(30) not null,
    MovieDirector   char(30) not null,
    Rating          char(30) not null,
    Genre           char(30) not null,

    primary key (MovieID)

);

USE CASE03_OTMR;
alter table MOVIE modify MovieTitle char(255) not null;
alter table MOVIE modify MovieDescriptor char(255) not null;
