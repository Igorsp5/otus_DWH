
    
    

select
    C_CUSTKEY as unique_field,
    count(*) as n_records

from db.customer
where C_CUSTKEY is not null
group by C_CUSTKEY
having count(*) > 1


