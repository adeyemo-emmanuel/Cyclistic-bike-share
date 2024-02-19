-- bikes types used by riders

SELECT member_casual, rideable_type, COUNT(*) AS total_trips
FROM cleaned_trips
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips;

-- no. of trips per month

SELECT member_casual, month_ride_started, COUNT(ride_id) AS total_trips
FROM cleaned_trips
GROUP BY month_ride_started, member_casual
ORDER BY member_casual;

-- no. of trips per day of week

SELECT member_casual, day_ride_started, COUNT(ride_id) AS total_trips
FROM cleaned_trips
GROUP BY day_ride_started, member_casual
ORDER BY member_casual;

-- no. of trips per hour

SELECT member_casual, hour_ride_started, COUNT(ride_id) AS total_trips
FROM cleaned_trips
GROUP BY hour_ride_started, member_casual
ORDER BY member_casual, hour_ride_started;

-- average ride duration per month

SELECT member_casual, month_ride_started, AVG(ride_length_min) AS avg_ride_duration
FROM cleaned_trips
GROUP BY month_ride_started, member_casual
ORDER BY member_casual;

-- average ride duration per day of week

SELECT member_casual, day_ride_started, AVG(ride_length_min) AS avg_ride_duration
FROM cleaned_trips
GROUP BY day_ride_started, member_casual
ORDER BY member_casual, day_ride_started;


-- starting station locations

SELECT start_station_name, member_casual, AVG(start_lat) AS start_lat, AVG(start_lng) AS start_lng, COUNT(ride_id) AS total_trips
FROM cleaned_trips
GROUP BY start_station_name, member_casual;

-- ending station locations

SELECT end_station_name, member_casual, AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng, COUNT(ride_id) AS total_trips
FROM cleaned_trips
GROUP BY end_station_name, member_casual;
