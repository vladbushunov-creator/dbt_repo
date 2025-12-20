with correlation as
(
    select tf.*, dw.*
    from {{ ref('trip_fact') }} as tf
    left join {{ ref('daily_weather') }} as dw
    on tf.trip_date = dw.daily_weather

)
select * 
from correlation