-- Data Cleaning
SELECT *
FROM [Cyclistic Bike share].[dbo].[trips_combined]

-- creating new table without the NULL values
SELECT *
INTO cleaned_trips
FROM trips_combined
WHERE ride_id IS NOT NULL
	AND rideable_type IS NOT NULL
	AND started_at IS NOT NULL
	AND ended_at IS NOT NULL
	AND start_station_name IS NOT NULL
	AND start_station_id IS NOT NULL
	AND end_station_name IS NOT NULL
	AND end_station_id IS NOT NULL
	AND start_lat IS NOT NULL
	AND start_lng IS NOT NULL
	AND end_lat IS NOT NULL
	AND end_lng IS NOT NULL
	AND member_casual IS NOT NULL;

-- seperated day, month, minutes for the trips
ALTER TABLE cleaned_trips
ADD
	day_ride_started AS FORMAT(started_at, 'ddd'),
	month_ride_started AS FORMAT(started_at, 'MMM'),
	ride_length_min AS DATEDIFF(MINUTE, started_at, ended_at),
	hour_ride_started AS FORMAT(started_at, 'HHH');


