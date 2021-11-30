-- Distributors
-- INSERT INTO DISTRIBUTOR(DistributorID, DistributorName, DistributorCity, DistributorState, DistributorZIP, DistributorPhoneNumber)
-- VALUES 
-- ("100", "Magnolia Pictures", "Florence", "SC", "29501", "(843) 543-3481"),
-- ("200","Walt Disney", "Burbank", "CA", "91501", "(949) 223-9058"),
-- ("300", "Warner Bros", "Burbank", "CA", "91501", "(949) 501-9998"),
-- ("400", "Netflix", "Los Gatos", "CA", "95032", "(408) 589-1110"),
-- ("500", "Paramount", "Hollywood", "CA", "90510", "(323) 956-8811")

-- Store
-- INSERT INTO STORE(StoreID, DistributorID, StoreName, StoreStreet, StoreCity, StoreState, StoreZIP, StorePhoneNumber)
-- VALUES 
-- ("01", "200", "Disney Express", "123 Main St.", "Columbia", "SC", "29072", "(803) 893-2341"),
-- ("02", "100", "Magnolia Movies", "101 Main St.", "Columbia", "SC", "29072", "(803) 333-2099"),
-- ("03", "300", "Watch Warner", "901 Read St.", "Columbia", "SC", "29072", "(803) 111-0987"),
-- ("04", "400", "Netflix Movies", "652 Calhoun Dr.", "Columbia", "SC", "29072", "(803) 893-2341"),
-- ("05", "500", "Everything Paramount", "202 Low St.", "Columbia", "SC", "29072", "(803) 987-2331")

/*
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
*/


/*
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
*/


/*
-- Moive
INSERT INTO MOVIE(MovieID, MovieTitle, StartName, MovieDescriptor, MovieDirector, Rating, Genre)
VALUES
-- ("1000", "Snow White", "Adriana Caselotti", "Classic Disney Princess Movie", "David Hand", "G", "Fantasy");
-- ("2000", "Star Wars: Episode IV", "Mark Hamill", "Classic Disney SciFi", "George Lucas", "PG-13", "SciFi"),
-- ("3000", "Parent Trap", "Hayley Mills", "Classic Disney Comedy", "David Swift", "PG", "Comedy"),
-- ("4000", "MAYDAY", "Mia Goth", "A classic thriller form Magnolia", "Karen Cinorre","R", "Thriller"),
-- ("5000", "Yakuza Princess", "Mia Goth", "A classic action movie from Magnolia", "Vicente Amorim", "R", "Action"),
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
*/



