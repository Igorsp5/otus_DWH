
    
    

with all_values as (

    select
        C_MKTSEGMENT as value_field,
        count(*) as n_records

    from db.customer
    group by C_MKTSEGMENT

)

select *
from all_values
where value_field not in (
    'AUTOMOBILE','BUILDING','FURNITURE','HOUSEHOLD','MACHINERY'
)


