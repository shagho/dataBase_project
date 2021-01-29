with all_cast_genre(id, fname, lname, yob) as
(
    select  distinct id, fname, lname, yob
    from cinema.dbo.casts, cinema.dbo.Genre, cinema.dbo.actor
    where cinema.dbo.casts.mid = cinema.dbo.Genre.mid and 
    cinema.dbo.casts.pid = cinema.dbo.actor.id and genre = 'Family'
)
select id, fname, lname
from all_cast_genre
where (2021-yob) > (select avg(2021-cinema.dbo.actor.yob)
            from cinema.dbo.actor
            where gender = 'male')