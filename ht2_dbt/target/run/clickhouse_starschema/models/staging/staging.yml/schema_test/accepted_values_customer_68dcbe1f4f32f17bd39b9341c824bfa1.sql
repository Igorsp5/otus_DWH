select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

with all_values as (

    select
        C_REGION as value_field,
        count(*) as n_records

    from db.customer
    group by C_REGION

)

select *
from all_values
where value_field not in (
    'AFRICA','MIDDLE EAST','AMERICA','ASIA','EUROPE'
)



      
    ) dbt_internal_test