SELECT 
EXTRACT(TIME FROM start_time AT TIME ZONE "GMT") as time_slot, 
EXTRACT(DATE FROM start_time AT TIME ZONE "GMT") as service_date,
EXTRACT(TIME FROM created_at AT TIME ZONE "GMT") as time_entered
from hogc_datawarehouse.time_slots


 