with castss(mid, pid, counts) as
(select mid, pid, count(*) as counts
from cinema.dbo.casts
group by mid, pid)
select fname, lname, name as movie_name, counts
from cinema.dbo.actor, cinema.dbo.movie, castss
where cinema.dbo.actor.id = pid 
and cinema.dbo.movie.id = mid and counts >= 2