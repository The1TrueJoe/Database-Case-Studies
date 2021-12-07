# A file that contains all of the queries required by the assignment
# Retuns the query as a string to be run

# Connection statement
schema = "OTMR"
use_statement = "USE " + schema + "; "

# List the last names of all customers who are now renting
def query1():
    return use_statement + "SELECT CUSTOMER.CustomerName FROM CUSTOMER, MOVIERENTAL WHERE MOVIERENTAL.CustomerID = CUSTOMER.CustomerID;"

# List all the customers who lie in UpTown. List their name and address sorted by name
def query2():
    return use_statement + "SELECT CustomerName, CustomerStreet, CustomerState, CustomerZIP FROM CUSTOMER WHERE CustomerCity LIKE 'UpTown' ORDER BY CustomerName;"

# List the total payment received by each employee, sorted by employee number
def query3():
    return use_statement + "SELECT EMPLOYEE.EmployeeName, EMPLOYEE.EmployeeSIN, TOTAL_PAYMENT.PaymentAmount FROM EMPLOYEE JOIN ( SELECT EmployeeSIN, SUM(PaymentAmount) AS PaymentAmount FROM PAYMENT GROUP BY EmployeeSIN AS TOTAL_PAYMENT ON TOTAL_PAYMENT.EmployeeSIN = EMPLOYEE.EmployeeSIN ORDER BY EmployeeSIN;"

# List the total number of movies rented out by each store, grouped and sorted by store ID
def query4():
    return use_statement + "SELECT MOVIERENTAL.StoreID, COUNT(MOVIERENTAL.StoreID) AS NumberOfRentedOutMovies, STORE.StoreName FROM MOVIERENTAL, STORE WHERE MOVIERENTAL.StoreID = STORE.StoreID GROUP BY StoreID;"

# List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID
def query5():
    return use_statement + "SELECT MEDIA.MovieID, MEDIA.StoreID, MOVIE.MovieTitle FROM MEDIA, MOVIE WHERE MEDIA.MovieID = MOVIE.MovieID AND MEDIA.MovieID NOT IN (SELECT MOVIERENTAL.MovieID FROM MOVIERENTAL) GROUP BY StoreID, MovieID;"

# List all the customers who did not rent any movie and sort by customer ID
def query6():
    return use_statement + "SELECT CustomerID, CustomerName FROM CUSTOMER WHERE CustomerID NOT IN (SELECT CustomerID FROM MOVIERENTAL) GROUP BY CustomerID;"

# List the total amount received by each payment type, sort by payment description
def query7():
    return use_statement + "select PAYMENTTYPE.Description, sum(PAYMENT.PaymentAmount) as Amount_Received from PAYMENT join PAYMENTTYPE on PAYMENT.PaymentID = PAYMENTTYPE.PaymentID group by PAYMENTTYPE.Description order by PAYMENTTYPE.Description"

# Display the number of movies rented out based on the movie genre, sort by genre
def query8():
    return use_statement + "select MOVIE.Genre, count(genre) as Total_Rented from MOVIERENTAL join MOVIE on MOVIERENTAL.MovieID = MOVIE.MovieID group by MOVIE.Genre order by MOVIE.Genre;"

# List the top 5 customers based on their total payment, and sort in descending order by total payment
def query9():
    return use_statement + "SELECT CUSTOMER.CustomerName, CUSTOMER.CustomerID, TOTAL_PAYMENT.PaymentAmount FROM CUSTOMER JOIN ( SELECT CustomerID, SUM(PaymentAmount) AS PaymentAmount FROM PAYMENT GROUP BY CustomerID ) AS TOTAL_PAYMENT ON TOTAL_PAYMENT.CustomerID = CUSTOMER.CustomerID ORDER BY TOTAL_PAYMENT.PaymentAmount DESC LIMIT 5 ;"

# List all the managers and the names of the employees they manage. Sort by manager ID then by employee ID
def query10():
    return use_statement + "select e.EmployeeName as Manager, e2.EmployeeName as Employee from EMPLOYEE e, EMPLOYEE e2 where e.ManagerSIN = e.EmployeeSIN order by e.ManagerSIN, e2.EmployeeSIN"