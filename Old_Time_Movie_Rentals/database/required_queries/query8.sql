-- query 8: Display number of movies rented out by genre, sort by genre
select MOVIE.Genre, count(genre) as Total_Rented from MOVIERENTAL
join MOVIE on MOVIERENTAL.MovieID = MOVIE.MovieID
group by MOVIE.Genre
order by MOVIE.Genre;

