
    
    

with all_values as (

    select
        S_REGION as value_field,
        count(*) as n_records

    from db.supplier
    group by S_REGION

)

select *
from all_values
where value_field not in (
    'AFRICA','MIDDLE EAST','AMERICA','ASIA','EUROPE'
)


