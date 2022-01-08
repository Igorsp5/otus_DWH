select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

select
    S_SUPPKEY as unique_field,
    count(*) as n_records

from db.supplier
where S_SUPPKEY is not null
group by S_SUPPKEY
having count(*) > 1



      
    ) dbt_internal_test