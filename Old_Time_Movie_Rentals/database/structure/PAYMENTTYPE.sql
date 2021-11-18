USE CASE03_OTMR;

create table PAYMENTTYPE
(
    PaymentID   char(30) not null,
    Description char(30) not null,
    primary key (PaymentID)
    
);

USE CASE03_OTMR;

alter table PAYMENTTYPE
	add constraint PAYMENTTYPE___fk
		foreign key (PaymentID) references PAYMENT(PaymentID);