USE CASE03_OTMR;

INSERT INTO `CUSTOMER` (`CustomerID`,`CustomerName`,`CustomerStreet`,`CustomerCity`,`CustomerState`,`CustomerZIP`,`CustomerPhone`)
VALUES
  ("GWU83XXQ6SW","Xaviera Compton","209-1993 Nibh St.","Bridgeport","WI","43654","(438) 658-9246"),
  ("SSR04PNZ6GD","Emma Odom","Ap #692-4950 Dui, Street","Topeka","CO","55774","(383) 350-0431"),
  ("YNG17TGN1RV","Michelle Adkins","P.O. Box 212, 7062 Vitae, Av.","Great Falls","AR","59122","(257) 828-6581"),
  ("KID83LJJ8XY","Warren Santos","878-9088 Fusce Ave","Boise","MO","52712","1-547-570-4537"),
  ("ONO14IRL9JL","Julie Albert","459-435 Metus Avenue","Lexington","VT","2355","(420) 555-5469");



-- Insert Employee Data
INSERT INTO `EMPLOYEE`(`EmployeeSIN`, `ManagerSIN`, `EmployeeName`, `EmployeeStreet`, `EmployeeCity`, `EmployeeState`, `EmployeePhoneNumber`, `EmployeeHireDate`)
VALUES
("138 521 7718", "138 521 7718", "Will Smith", "165 Walker Ave", "Columbia", "SC", "(458) 678-6946", "2020-9-22"),
("881 638 2625", "138 521 7718", "John Hancock", "209-157 Coldmart St.", "Columbia", "SC", "(803) 420-6978", "2019-10-22"),
("659 586 9753", "138 521 7718", "Justin Evans", "650 Railroad Ave", "Columbia", "SC", "(704) 658-9246", "2019-08-2"),
("585 524 4683", "138 521 7718", "Aidan Santos", "256 North main St.", "Columbia", "SC", "(438) 658-9245", "2018-10-22"),
("658 245 4144", "138 521 7718", "Eva Albert", "85 Builtlane Blvd.", "Columbia", "SC", "(803) 669-9246", "2020-03-19");

SELECT *
FROM EMPLOYEE;


-- Insert Status ID data
INSERT INTO `PAYMENTSTATUS` (`StatusID`, `Description`)
values
("IMI19", "Payment Approved"),
("IAI78", "Payment Approved"),
("SXP31", "Payment Approved"),
("EUL23", "Payment Approved"),
("WTU46", "Payment Approved");

SELECT *
FROM PAYMENTSTATUS;

INSERT INTO `PAYMENT` (`PaymentID`,`CustomerID`,`EmployeeSIN`,`StatusID`,`PaymentAmount`,`PaymantDateTime`)
VALUES
  ("DRF12QYS5ZR","GWU83XXQ6SW","138 521 7718","IMI19",7,"2021-10-22"),
  ("RQH81RGN5GH","SSR04PNZ6GD","881 638 2625","IAI78",6,"2021-11-11"),
  ("LSF26GDF7SD","YNG17TGN1RV","659 586 9753","SXP31",14,"2021-11-13"),
  ("NXK38QLD3NK","KID83LJJ8XY","585 524 4683","EUL23",5,"2021-12-13"),
  ("CGG23EJY8YH","ONO14IRL9JL","658 245 4144","WTU46",4,"2021-12-14");

INSERT INTO `PAYMENTTYPE` (`PaymentID`, `Description`)
VALUES
("DRF12QYS5ZR", "Approved Debit Card payment"),
("RQH81RGN5GH", "Approved Credit Card payment"),
("LSF26GDF7SD", "Cash Payment"),
("NXK38QLD3NK", "Cash Payment"),
("CGG23EJY8YH", "Approved Check");

INSERT INTO `DEBITCARD` (`PaymentID`, `DebitCardNumber`, `DebitCardType`, `DebitCardExpiry`)
VALUES
("DRF12QYS5ZR", "4929942028927138", "VISA", "11/2028");

INSERT INTO `CREDITCARD` (`PaymentID`, `CreditCardNumber`, `CreditCardType`, `CreditCardExpiry`)
VALUES
("RQH81RGN5GH", "4485694945526420", "VISA", "10/2030");

INSERT INTO `CASH` (`PaymentID`, `Description`)
VALUES
("LSF26GDF7SD", "CASH PAYMENT"),
("NXK38QLD3NK", "CASH PAYMENT");

INSERT INTO `BANKCHECK`(`PaymentID`, `CheckNumber`, `BankNumber`, `BankName`)
VALUES
("CGG23EJY8YH", "123456789 987654 1001", "987654", "Wells Fargo");
