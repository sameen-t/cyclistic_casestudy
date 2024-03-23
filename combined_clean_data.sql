CREATE TABLE `cyclistic_data_2022.cyclistic_cleaned_data_2022` AS (
  SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  ride_length_in_minutes,
  CASE
  EXTRACT (MONTH FROM started_at)
    WHEN 1 THEN 'JANUARY'
    WHEN 2 THEN 'FEBUARY'
    WHEN 3 THEN 'MARCH'
    WHEN 4 THEN 'APRIL'
    WHEN 5 THEN 'MAY'
    WHEN 6 THEN 'JUNE'
    WHEN 7 THEN 'JULY'
    WHEN 8 THEN 'AUGUST'
    WHEN 9 THEN 'SEPTEMBER'
    WHEN 10 THEN 'OCTOBER'
    WHEN 11 THEN 'NOVEMBER'
    WHEN 12 THEN 'DECEMBER'
  End AS month,
  CASE
  EXTRACT (DAYOFWEEK FROM started_at)
    WHEN 1 THEN 'SUNDAY'
    WHEN 2 THEN 'MONDAY'
    WHEN 3 THEN 'TUESDAY'
    WHEN 4 THEN 'WEDNESDAY'
    WHEN 5 THEN 'THURSDAY'
    WHEN 6 THEN 'FRIDAY' 
    WHEN 7 THEN 'SATURDAY'
  End as day_of_the_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual
  FROM `case-study-412103.cyclistic_data_2022.combined_v1` AS t1
  JOIN 
    (SELECT ride_id,
    TIMESTAMP_DIFF (ended_at, started_at,MINUTE) AS ride_length_in_minutes
    FROM `case-study-412103.cyclistic_data_2022.combined_v1`) AS t2 
    USING (ride_id)
  WHERE 
  ride_length_in_minutes >1 AND ride_length_in_minutes <1440 AND
  start_station_name IS NOT NULL AND 
  start_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND 
  start_lat IS NOT NULL AND
  start_lng IS NOT NULL AND 
  end_lat IS NOT NULL AND
  end_lng IS NOT NULL )
