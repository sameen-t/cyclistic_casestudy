--bike type used 

SELECT member_casual, rideable_type, 
COUNT (*) AS total_rides
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;

-- number of trips per month, grouped by ride type and member type

SELECT month,member_casual, 
COUNT (*) AS total_rides_per_month
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
GROUP BY member_casual, month
ORDER BY member_casual, total_rides_per_month DESC
  
--number of trips in a week 
SELECT member_casual, day_of_the_week,
COUNT (*) AS trips_per_week
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
GROUP BY member_casual, day_of_the_week
ORDER BY member_casual, trips_per_week DESC

-- hour of day with the most number of trips 
SELECT member_casual,
EXTRACT (HOUR FROM started_at) AS hour_of_day,
COUNT (*) AS total_trips_per_hour
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
GROUP BY member_casual, hour_of_day
ORDER BY member_casual, total_trips_per_hour DESC

-- avg ride length for each day of the week.

SELECT member_casual,day_of_the_week,
AVG (ride_length_in_minutes) AS avg_ride_length
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
GROUP BY member_casual, day_of_the_week
ORDER BY member_casual, avg_ride_length DESC

  
-- avg starting location for member 

SELECT member_casual, start_station_name, 
AVG (start_lat) AS start_lat,
AVG(start_lng) AS start_lng,
COUNT (*) AS total_rides 
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
WHERE member_casual = 'member'
GROUP BY member_casual, start_station_name
ORDER BY member_casual, total_rides DESC

-- avg starting location for casual

SELECT member_casual, start_station_name, 
AVG (start_lat) AS start_lat,
AVG(start_lng) AS start_lng,
COUNT (*) AS total_rides 
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name
ORDER BY member_casual, total_rides DESC

-- avg end location for member 

SELECT member_casual, end_station_name, 
AVG (end_lat) AS end_lat,
AVG(end_lng) AS end_lng,
COUNT (*) AS total_rides 
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name
ORDER BY member_casual, total_rides DESC

-- avg end location for casual

SELECT member_casual, end_station_name, 
AVG (end_lat) AS end_lat,
AVG(end_lng) AS end_lng,
COUNT (*) AS total_rides 
FROM `case-study-412103.cyclistic_data_2022.cyclistic_cleaned_data_2022`
WHERE member_casual = 'casual'
GROUP BY member_casual, end_station_name
ORDER BY member_casual, total_rides DESC



