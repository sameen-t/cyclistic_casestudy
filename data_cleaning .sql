-- check distinct 'ride_id' and ensure there are no duplicates. 
SELECT DISTINCT ride_id,
FROM `case-study-412103.cyclistic_data_2022.combined_v1`

--verifying that 'rideable_type' has only three distinct values 
SELECT
  DISTINCT(rideable_type),
  COUNT (rideable_type) AS number_of_trips
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
GROUP BY rideable_type

--checking for null values 

SELECT COUNT (ride_id) AS ride_id_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE ride_id IS NULL; # null = 0

SELECT COUNT (ride_id) AS rideable_type_null 
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE rideable_type IS NULL; #null =0

SELECT COUNT (ride_id) AS started_at_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE started_at IS NULL; #null = 0 

SELECT COUNT (ride_id) AS ended_at_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1` 
WHERE ended_at IS NULL;  #null = 0 

SELECT COUNT(ride_id) AS start_station_name_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE start_station_name IS NULL; #null = 833064

SELECT COUNT (ride_id) AS start_station_id_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE start_station_id IS NULL; #null= 833064

SELECT COUNT (ride_id) AS end_station_name_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE end_station_name IS NULL; #null =892742

SELECT COUNT (ride_id) AS end_station_id_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE end_station_id IS NULL; #null=892742

SELECT COUNT (ride_id) AS start_lat_null 
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE start_lat IS NULL; #null= 0 

SELECT COUNT (ride_id) AS start_lng_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE start_lng IS NULL; #null = 0 

SELECT COUNT (ride_id) AS end_lat_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE end_lat is NULL; #null=5858

SELECT COUNT (ride_id) AS end_lng_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE end_lng IS NULL; #null=5858

SELECT COUNT (ride_id) AS member_casual_null
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE member_casual IS NULL  #null = 0

--check if started_at and ended_at is within one day, chronological, and in a consistent data format 

SELECT ride_id,started_at,ended_at
FROM `case-study-412103.cyclistic_data_2022.combined_v1`
WHERE
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 1 OR
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1440

-- There are 227604 values where the ride is less than a minute or longer than 1 day.

--checking to see that the only rider types are member and casual. We are returned with two distinct values ( member and casual). This tells us there are no other values or errors in the rider type. 
SELECT 
  DISTINCT (member_casual)
 FROM `case-study-412103.cyclistic_data_2022.combined_v1` 

