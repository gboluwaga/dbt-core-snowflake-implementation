select *
from {{sources('netflix_data','credits')}}
where role in ('ACTOR', 'DIRECTOR')