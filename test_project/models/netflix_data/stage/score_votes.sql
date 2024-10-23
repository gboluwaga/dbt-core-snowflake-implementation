
{{ config(
    materialized = 'table'
    
    )}}

select 
id,
imdb_id,
imdb_score,
imdb_votes,
tmdbb_popularity,
tmdb_score
from dbt_database.dbt_raw.titles