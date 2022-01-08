select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

select
    P_PARTKEY as unique_field,
    count(*) as n_records

from db.part
where P_PARTKEY is not null
group by P_PARTKEY
having count(*) > 1



      
    ) dbt_internal_test