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