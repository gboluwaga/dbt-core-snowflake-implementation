with top_rated (
    select *
    from {{source('netflix_data_transform','popularity_dim')}}
)

select 
    type,
    release_year,
    count(*) cnt_per_year
    from top_rated
    where type = 'MOVIE'
    and release_year between 2000 and 2020
    group by 1,2,3
