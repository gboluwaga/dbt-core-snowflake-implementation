select *
from {{var('credit')}}
where role in ('ACTOR', 'DIRECTOR')