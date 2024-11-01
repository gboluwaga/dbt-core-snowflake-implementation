with directors as (
    select 
    person_id,
    id,
    name,
    character,
    role
    from {{source('netflix_data_transform','credits_dim')}}
    where role = 'DIRECTOR'
)

select character,name, count(*) character_count
from directors
group by character,name