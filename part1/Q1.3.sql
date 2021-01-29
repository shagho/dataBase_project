with m_d(mid, did, fname, lname) as
(
select mid, did, fname, lname
from cinema.dbo.movie_director, cinema.dbo.director
where did = id)

select fname, lname, name as movie_name, year
from m_d, cinema.dbo.movie, cinema.dbo.Genre
where Genre.mid = id and m_d.mid = id and Genre.genre='Family' and (year % 4 = 0);
