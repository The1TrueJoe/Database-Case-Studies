/*
Display the number of movies rented out based on the movie genre, sort by genre
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Selects Genre from movie and creates a new column called Total_Rented as the count of each genre */
select MOVIE.Genre, count(genre) as Total_Rented from MOVIERENTAL

/* Joins MOVIE with MOVIERENTAL where the MovieID's are equal */
join MOVIE on MOVIERENTAL.MovieID = MOVIE.MovieID

/* Groups by genre and orders by genrea */
group by MOVIE.Genre
order by MOVIE.Genre;