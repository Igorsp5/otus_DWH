select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      

select *
from (
    select
        
        
      count() as filler_column

    from db.q3_3

    having count() = 0

) validation_errors


      
    ) dbt_internal_test