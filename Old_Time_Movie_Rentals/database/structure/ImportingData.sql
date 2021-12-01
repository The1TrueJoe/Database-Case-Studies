-- Inserting data into the customer table
USE CASE03_OTMR;

INSERT INTO `CUSTOMER` (`CustomerID`,`CustomerName`,`CustomerStreet`,`CustomerCity`,`CustomerState`,`CustomerZIP`,`CustomerPhone`)
VALUES
  ("GWU83XXQ6SW","Xaviera Compton","209-1993 Nibh St.","Bridgeport","WI","43654","(438) 658-9246"),
  ("SSR04PNZ6GD","Emma Odom","Ap #692-4950 Dui, Street","Topeka","CO","55774","(383) 350-0431"),
  ("YNG17TGN1RV","Michelle Adkins","P.O. Box 212, 7062 Vitae, Av.","Great Falls","AR","59122","(257) 828-6581"),
  ("KID83LJJ8XY","Warren Santos","878-9088 Fusce Ave","Boise","MO","52712","1-547-570-4537"),
  ("ONO14IRL9JL","Julie Albert","459-435 Metus Avenue","Lexington","VT","2355","(420) 555-5469");


INSERT INTO `CUSTOMER` (`CustomerID`,`CustomerName`,`CustomerStreet`,`CustomerCity`,`CustomerState`,`CustomerZIP`,`CustomerPhone`)
VALUES ("AEUX368Q6SZ","Alexendar Hill","209-1993 Smith Lane.","Uptown","VT","43669","(469) 420-4201");


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


-- Distributors
 INSERT INTO DISTRIBUTOR(DistributorID, DistributorName, DistributorCity, DistributorState, DistributorZIP, DistributorPhoneNumber)
 VALUES
 ("100", "Magnolia Pictures", "Florence", "SC", "29501", "(843) 543-3481"),
 ("200","Walt Disney", "Burbank", "CA", "91501", "(949) 223-9058"),
("300", "Warner Bros", "Burbank", "CA", "91501", "(949) 501-9998"),
("400", "Netflix", "Los Gatos", "CA", "95032", "(408) 589-1110"),
("500", "Paramount", "Hollywood", "CA", "90510", "(323) 956-8811")

-- Store
INSERT INTO STORE(StoreID, DistributorID, StoreName, StoreStreet, StoreCity, StoreState, StoreZIP, StorePhoneNumber)
VALUES
("01", "200", "Disney Express", "123 Main St.", "Columbia", "SC", "29072", "(803) 893-2341"),
("02", "100", "Magnolia Movies", "101 Main St.", "Columbia", "SC", "29072", "(803) 333-2099"),
("03", "300", "Watch Warner", "901 Read St.", "Columbia", "SC", "29072", "(803) 111-0987"),
("04", "400", "Netflix Movies", "652 Calhoun Dr.", "Columbia", "SC", "29072", "(803) 893-2341"),
("05", "500", "Everything Paramount", "202 Low St.", "Columbia", "SC", "29072", "(803) 987-2331")


-- STOREMOVIE
INSERT INTO STOREMOVIE(MovieID, StoreID)
VALUES
("1000", "01"),
("2000", "01"),
("3000", "01"),
("4000", "02"),
("5000", "02"),
("6000", "02"),
("1100", "04"),
("1200", "04"),
("1300", "04"),
("7000", "03"),
("8000", "03"),
("9000", "03"),
("1400", "05"),
("1500", "05"),
("1600", "05");




-- Media
INSERT INTO MEDIA(MediaID, MovieID, StoreID, MediaCondition)
VALUES
("GQL5Q", "1000", "01", "Good"),
("CQLSH", "1000", "01", "Perfect"),
("O8MXD", "2000", "01", "Good"),
("F0GRP", "2000", "01", "Bad"),
("FR451", "3000", "01", "Perfect"),
("GR67T", "3000", "01", "Good"),
("GT78E", "4000", "02", "Good"),
("TRG56", "4000", "02", "Perfect"),
("AW4GR", "5000", "02", "Bad"),
("Q45TZ", "5000", "02", "Good"),
("QZS56", "6000", "02", "Bad"),
("QS345", "6000", "02", "Perfect"),
("W567Q", "7000", "03", "Good"),
("W567D", "7000", "03", "Good"),
("W567T", "8000", "03", "Bad"),
("A567Q", "8000", "03", "Perfect"),
("Y567W", "9000", "03", "Good"),
("A567C", "9000", "03", "Bad"),
("W587Q", "1100", "04", "Perfect"),
("W560Q", "1100", "04", "Good"),
("W597Q", "1200", "04", "Good"),
("W097Q", "1200", "04", "Good"),
("W198Q", "1300", "04", "Good"),
("W597Z", "1300", "04", "Perfect"),
("W597X", "1400", "05", "Good"),
("W597M", "1400", "05", "Bad"),
("S597X", "1500", "05", "Perfect"),
("S597S", "1500", "05", "Good"),
("W390X", "1600", "05", "Perfect"),
("A999X", "1600", "05", "Bad");




-- Moive
INSERT INTO MOVIE(MovieID, MovieTitle, StartName, MovieDescriptor, MovieDirector, Rating, Genre)
VALUES
-- ("1000", "Snow White", "Adriana Caselotti", "Classic Disney Princess Movie", "David Hand", "G", "Fantasy");
("2000", "Star Wars: Episode IV", "Mark Hamill", "Classic Disney SciFi", "George Lucas", "PG-13", "SciFi"),
("3000", "Parent Trap", "Hayley Mills", "Classic Disney Comedy", "David Swift", "PG", "Comedy"),
("4000", "MAYDAY", "Mia Goth", "A classic thriller form Magnolia", "Karen Cinorre","R", "Thriller"),
("5000", "Yakuza Princess", "Mia Goth", "A classic action movie from Magnolia", "Vicente Amorim", "R", "Action"),
("6000", "Mandibles", "Masumi Rhys Meyers", "A classic adventure movie from Magnolia", "Vicente Amorim", "R", "Adeventure"),
("7000", "Harry Potter Sorcer's Stone", "Daniel Radcliffe", "The first Harry Potter installment", "Chris Columbus", "PG", "Fantasy"),
("8000", "Harry Potter Chamber of Secrets", "Daniel Radcliffe", "The second Harry Potter installment", "Chris Columbus", "PG", "Fantasy"),
("9000", "Harry Potter Prisoner of Azkaban", "Daniel Radcliffe", "The third Harry Potter installment", "Chris Columbus", "PG-13", "Fantasy"),
("1100", "Pee-wee's Big Holiday", "Paul Reubens", "A NETFLIX orginal comedy", "John Lee", "PG", "Comedy"),
("1200", "I Am the Pretty Thing That Lives in the House", "Ruth Wilson", "A NETFLIX original horror", "Osgood Perkins", "R", "Horror"),
("1300", "Spectral", "Jame Badge Dale", "A NETFLIX original SciFi", "Nick Matheui", "PG-13", "SciFi"),
("1400", "Pulp Fiction", "Samuel L. Jackson", "A classic crime drama", "Quentin Tarantino", "R", "Drama"),
("1500", "Django Unchained", "Samuel L. Jackson", "A classic westerner", "Quentin Tarantino", "R", "Action"),
("1600", "The Emperor's New Clothes", "Ian Holm", "A Paramount classic romance", "Alan Taylor", "PG", "Romance");

-- Insertion of rental status and rented movies
INSERT INTO RENTALSTATUS(StatusID, Description)
VALUES
("1000", "Rented out on time"),
("1200", "Rented out overdue"),
("1300", "Rented out on time"),
("1400", "Rented out overdue"),
("1500", "Rented out on time");

INSERT INTO MOVIERENTAL(MediaID, CustomerID, StatusID, MovieID, StoreID, EmployeeSIN, PaymentID, RentalDateTime, DueDate, OverdueCharge, RentalRate)
VALUES
("GQL5Q", "GWU83XXQ6SW", "1000", "1000", "01", "138 521 7718", "DRF12QYS5ZR", "2022-11-18", "2022-11-28", 0, 7),
("QS345", "SSR04PNZ6GD", "1200", "6000", "02", "881 638 2625", "RQH81RGN5GH", "2022-11-07", "2022-11-17", 5, 6),
("W567Q", "YNG17TGN1RV", "1300", "7000", "03", "659 586 9753", "LSF26GDF7SD", "2022-11-17", "2022-11-27", 0, 14),
("W597Z", "KID83LJJ8XY", "1400", "1300", "04", "585 524 4683", "NXK38QLD3NK", "2022-11-1", "2022-11-11", 5, 5),
("W597X", "ONO14IRL9JL", "1500", "1400", "05", "658 245 4144", "CGG23EJY8YH", "2022-11-12", "2022-11-22", 0, 4);