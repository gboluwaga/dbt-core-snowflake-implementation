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

select role,name, person_id, count(*)
from actors
group by 1,2,3