with votes as (
    select id,
    coalesce(imdb_id,'N/A') imdb_id,
    coalesce(imdb_score,0) imdb_score,
    coalesce(imdb_votes,0) imdb_votes,
    coalesce(tmdb_popularity,0) tmdb_popularity,
    coalesce(tmdb_score,0) tmdb_score
    from {{source('netflix_data_transform','score_votes')}}
)

select 
    title,
    type,
    description,
    release_year,
    v.*
    from {{source('netflix_data_transform','show_details')}} a 
    left join votes v 
    on a.id = v.id