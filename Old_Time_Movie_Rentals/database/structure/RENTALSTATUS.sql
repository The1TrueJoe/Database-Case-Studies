USE CASE03_OTMR;

create table RENTALSTATUS
(
    StatusID    char(30) not null,
    Description char(30) not null,
    PRIMARY KEY (StatusID)
)
    collate = utf8_unicode_ci;

