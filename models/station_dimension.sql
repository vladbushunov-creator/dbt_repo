
with bike_station as
(
    select distinct
        start_statio_id as station_id
        , start_station_name as station_name
        , start_lat as station_lat
        , start_lng as start_station_lng
    from {{ ref('stg_bike') }}
    where ride_id != 'ride_id'

)

select *
from bike_station