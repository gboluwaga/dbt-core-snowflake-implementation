{{ config(
    materialized = 'table'
    
    )}}


select *
from dbt_database.dbt_raw.credits
where role in ('ACTOR', 'DIRECTOR')