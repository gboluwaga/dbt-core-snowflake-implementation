with actors as (
    select 
    person_id,
    id,
    name,
    character,
    role
    from {{source('netflix_data_transform','credits_dim')}}
    where name in ('Sylvester Stallone','Stephen Bishop')
)

select role,name, person_id, count(*) role_count
from actors
group by role,name, person_id