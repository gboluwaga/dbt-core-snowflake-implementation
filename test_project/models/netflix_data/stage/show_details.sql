
{{ config(
    materialized = 'table'
    
    )}}


select 
id,
title,
type,
description,
release_year,
age_certification,
runtime,
genres,
production_countries,
seasons
from
dbt_database.dbt_raw.titles