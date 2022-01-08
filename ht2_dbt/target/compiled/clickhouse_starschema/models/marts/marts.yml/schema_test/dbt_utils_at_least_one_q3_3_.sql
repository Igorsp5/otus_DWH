

select *
from (
    select
        
        
      count() as filler_column

    from db.q3_3

    having count() = 0

) validation_errors

