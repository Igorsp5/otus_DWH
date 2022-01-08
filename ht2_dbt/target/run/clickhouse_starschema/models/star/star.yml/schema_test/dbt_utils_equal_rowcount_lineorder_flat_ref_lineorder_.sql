select
      coalesce(diff_count, 0) as failures,
      case when coalesce(diff_count, 0) != 0
        then 'true' else 'false' end as should_warn,
      case when coalesce(diff_count, 0) != 0
        then 'true' else 'false' end as should_error
    from (
      

with a as (

    select count(*) as count_a from db.lineorder_flat

),
b as (

    select count(*) as count_b from db.lineorder

),
final as (

    select
        count_a,
        count_b,
        abs(count_a - count_b) as diff_count
    from a
    cross join b

)

select * from final


      
    ) dbt_internal_test