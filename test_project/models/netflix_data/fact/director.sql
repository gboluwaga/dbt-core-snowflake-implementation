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
where character is not null or ''
group by character,name