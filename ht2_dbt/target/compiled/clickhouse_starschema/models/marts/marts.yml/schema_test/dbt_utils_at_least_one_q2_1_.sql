

select *
from (
    select
        
        
      count() as filler_column

    from db.q2_1

    having count() = 0

) validation_errors

