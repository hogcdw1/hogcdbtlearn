SELECT FLOOR(date_part('minute', ts.created_at - ts.start_time)) as minute, count(*), (created_at at time zone 'utc' at time zone 'sgt') as date
FROM hogc_datawarehouse.time_slots ts 
WHERE (ts.created_at < ts.start_time + 61 * '1 minute'::interval and 
       ts.created_at > ts.start_time - 31 * '1 minute'::interval and
       extract('dow' from created_at at time zone 'utc' at time zone 'sgt') not in (2,3,4,5))
GROUP BY FLOOR(date_part('minute', ts.created_at - ts.start_time)),date
ORDER BY minute;
