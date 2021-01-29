with directors_count(did, counts) as
(select id, count(*)
from cinema.dbo.director, cinema.dbo.movie_director
where id = did
group by id)
select fname, lname, counts
from directors_count, cinema.dbo.director
where did = id and counts >= 3
order by counts desc