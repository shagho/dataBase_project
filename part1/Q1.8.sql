with count_moivies_cast(mid, all_count) as
(select mid, count(*) as all_count
from cinema.dbo.casts 
group by mid),
count_female_movies_cast(mid, female_count) AS
(select mid, count(*) as all_count
from cinema.dbo.actor, cinema.dbo.casts 
where id = pid and gender='female'
group by mid),
all_female_movies(mid, year) as
(select count_moivies_cast.mid, year
from count_female_movies_cast, count_moivies_cast, cinema.dbo.movie
where count_moivies_cast.mid = count_female_movies_cast.mid and 
cinema.dbo.movie.id = count_female_movies_cast.mid and all_count = female_count),
final(year, counts) as
(select cinema.dbo.movie.year,
(
    select count(*)
    from all_female_movies
    where cinema.dbo.movie.id = all_female_movies.mid
) as counts
from cinema.dbo.movie)
select [year], sum(counts) as movies_count
from final
GROUP by [year]
ORDER by [year]
