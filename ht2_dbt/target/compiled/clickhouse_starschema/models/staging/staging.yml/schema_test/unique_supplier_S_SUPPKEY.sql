
    
    

select
    S_SUPPKEY as unique_field,
    count(*) as n_records

from db.supplier
where S_SUPPKEY is not null
group by S_SUPPKEY
having count(*) > 1


