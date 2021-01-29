use cinema
GO

DELETE from actor;
delete from casts;
delete from director;
delete from movie_director;
delete from Genre;
delete from movie;

bulk insert cinema.dbo.actor
from '/home/navid/my_program/movie_data/actor.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert cinema.dbo.movie
from '/home/navid/my_program/movie_data/movie.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert cinema.dbo.director
from '/home/navid/my_program/movie_data/director.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert cinema.dbo.movie_director
from '/home/navid/my_program/movie_data/movie_directors.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert cinema.dbo.casts
from '/home/navid/my_program/movie_data/casts.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

bulk insert cinema.dbo.Genre
from '/home/navid/my_program/movie_data/genre.csv'
with 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR='\n'
);

