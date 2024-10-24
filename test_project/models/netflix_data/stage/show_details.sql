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
{{  source('netflix_data','titles')  }}