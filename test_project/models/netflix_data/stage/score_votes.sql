
{{ config(
    materialized = 'table'
    
    )}}

select 
id,
idmb_id,
idmb_score,
idmb_votes,
tdmb_popularity,
tmdb_score
from dbt_database.dbt_raw.titles