create table MOVIE
(
    MovieID         char(30) not null,
    MovieTitle      char(30) not null,
    StartName       char(30) not null,
    MovieDescriptor char(30) not null,
    MovieDirector   char(30) not null,
    Rating          char(30) not null,
    Genre           char(30) not null
)
    collate = utf8_unicode_ci;

