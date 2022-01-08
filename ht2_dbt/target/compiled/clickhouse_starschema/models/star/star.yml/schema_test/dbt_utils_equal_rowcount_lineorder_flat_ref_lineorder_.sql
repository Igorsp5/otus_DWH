

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

