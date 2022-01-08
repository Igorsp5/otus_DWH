
    
    

    

with child as (
    select LO_CUSTKEY as from_field
    from db.lineorder
    where LO_CUSTKEY is not null
),

parent as (
    select C_CUSTKEY as to_field
    from db.customer
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


    settings join_use_nulls = 1


