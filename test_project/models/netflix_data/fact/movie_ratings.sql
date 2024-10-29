with ratings as ( 
    select 
    imdb_score,
    release_year,
    type
from {{ source('netflix_data_transform','popularity_dim') }}
)

select 
    type,
    case when imdb_score between 0.0 and 2.5 then 'LOW_RATING'
         when imdb_score >=2.5 and imdb_score <= 3.5 then 'AVERAGE_RATING'
         when imdb_score >3.5 and imdb_score <= 4.5 then 'GOOD_RATING'
         ELSE 'EXCELLENT_RATING'
         END AS RATING,
    COUNT(*) RATING_COUNT
    from ratings
    where release_year between 1998 and 2002 
    and type <> 'SHOW'
    group by 1,2
