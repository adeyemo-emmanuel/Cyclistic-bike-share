-- Data Exploration

-- checking for number of null values in all columns = 1,298,365 rows

SELECT COUNT(*) AS TotalNullRows
FROM trips_combined
WHERE ride_id IS NULL
	OR rideable_type IS NULL
	OR started_at IS NULL
	OR ended_at IS NULL
	OR start_station_name IS NULL
	OR start_station_id IS NULL
	OR end_station_name IS NULL
	OR end_station_id IS NULL
	OR start_lat IS NULL
	OR start_lng IS NULL
	OR end_lat IS NULL
	OR end_lng IS NULL
	OR member_casual IS NULL;

-- checking for duplicate rows - no duplicate rows

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM trips_combined;

-- ride_id - all have length of 16

SELECT LEN (ride_id) AS length_ride_id, 
COUNT(ride_id) AS no_of_rows
FROM trips_combined
GROUP BY LEN(ride_id);

-- rideable_type - 3 unique types of bikes

SELECT DISTINCT rideable_type, 
COUNT(rideable_type) AS no_of_trips
FROM trips_combined
GROUP BY rideable_type;

-- started_at, ended_at - TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC

SELECT TOP 9 started_at, ended_at
FROM trips_combined

-- longer than a day - total rows = 5316

SELECT COUNT(*) AS longer_than_a_day
FROM trips_combined
WHERE (
  DATEDIFF(HOUR, started_at, ended_at) > 24
  );

  -- less than a minute - total rows = 122283

SELECT COUNT(*) AS less_than_a_minute
FROM trips_combined
WHERE (
  DATEDIFF(SECOND, started_at, ended_at) <= 60
  );

-- time started greater than time ended = 100 rows
SELECT COUNT(*) AS time_started_greater_than_time_ended
FROM trips_combined
WHERE (
  started_at > ended_at);


-- start_station_name, start_station_id - total 833064 rows with both start station name and id missing

SELECT DISTINCT start_station_name, start_station_id
FROM trips_combined
ORDER BY start_station_name;

SELECT COUNT(ride_id) AS null_start_station          -- return 833064 rows
FROM trips_combined
WHERE start_station_name IS NULL OR start_station_id IS NULL;


-- end_station_name, end_station_id - total 892742 rows with both end station name and id missing

SELECT DISTINCT end_station_name
FROM trips_combined
ORDER BY end_station_name;

SELECT COUNT(ride_id) AS null_end_station          -- return 892742 rows
FROM trips_combined
WHERE end_station_name IS NULL OR end_station_id IS NULL;

-- end_lat, end_lng - total 5858 rows with both missing

SELECT COUNT(ride_id) AS rows_with_null_end_loc
FROM trips_combined
WHERE end_lat IS NULL OR end_lng IS NULL;

-- member_casual - 2 unique values - member and casual riders

SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_trips
FROM trips_combined
GROUP BY member_casual;
