{{ config(materialized='table') }}

SELECT 
(EXTRACT(MINUTE FROM created_at AT TIME ZONE "GMT") - EXTRACT(MINUTE FROM start_time AT TIME ZONE "GMT")) as the_minute, 
EXTRACT(DATE FROM created_at AT TIME ZONE "GMT") as service_date
FROM hogc_datawarehouse.time_slots
ORDER BY service_date


