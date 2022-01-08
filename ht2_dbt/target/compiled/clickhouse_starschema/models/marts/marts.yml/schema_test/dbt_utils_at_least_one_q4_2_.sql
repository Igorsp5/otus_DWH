

select *
from (
    select
        
        
      count() as filler_column

    from db.q4_2

    having count() = 0

) validation_errors

