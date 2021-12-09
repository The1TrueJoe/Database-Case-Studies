# A file that contains all of the misc queries required used the assignment
# Retuns the query as a string to be run

# Connection statement
use_statement = ""

list_available_movies = use_statement + "SELECT * FROM MOVIE WHERE MOVIE.MovieID NOT IN (SELECT MovieID FROM MOVIERENTAL);"

get_all_rentals = use_statement + "SELECT * FROM RENTALS;"