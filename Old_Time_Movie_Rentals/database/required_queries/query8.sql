/*
Display the number of movies rented out based on the movie genre, sort by genre
*/

/* Specify the schema to user */
use CASE03_OTMR;

select MOVIE.Genre, count(genre) as Total_Rented from MOVIERENTAL
join MOVIE on MOVIERENTAL.MovieID = MOVIE.MovieID
group by MOVIE.Genre
order by MOVIE.Genre;

