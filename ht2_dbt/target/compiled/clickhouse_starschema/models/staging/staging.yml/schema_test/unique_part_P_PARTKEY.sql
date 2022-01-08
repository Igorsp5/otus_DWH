
    
    

select
    P_PARTKEY as unique_field,
    count(*) as n_records

from db.part
where P_PARTKEY is not null
group by P_PARTKEY
having count(*) > 1


