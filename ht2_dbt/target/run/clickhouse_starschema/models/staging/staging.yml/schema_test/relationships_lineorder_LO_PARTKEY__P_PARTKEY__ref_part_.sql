select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

    

with child as (
    select LO_PARTKEY as from_field
    from db.lineorder
    where LO_PARTKEY is not null
),

parent as (
    select P_PARTKEY as to_field
    from db.part
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


    settings join_use_nulls = 1



      
    ) dbt_internal_test