select fname, lname
from cinema.dbo.actor, cinema.dbo.casts
where id = pid and (mid in (select id from cinema.dbo.movie where name = 'Love at 40'))