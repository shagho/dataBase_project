select distinct fname,lname
from cinema.dbo.actor, cinema.dbo.casts, cinema.dbo.movie
where cinema.dbo.actor.id = cinema.dbo.casts.pid 
and cinema.dbo.casts.mid = cinema.dbo.movie.id
and ((year -621) < 1380 or (year - 621) > 1390 )