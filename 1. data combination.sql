-- Data Combination

-- Combining all the 12 months data tables into a single table containing data from Jan 2022 to Dec 2022.

SELECT * 
INTO   trips_combined 
FROM   (SELECT * 
        FROM   trip_202201 
        UNION ALL 
        SELECT *
        FROM   trip_202202 
        UNION ALL 
        SELECT *
        FROM   trip_202203
		UNION ALL 
        SELECT *
        FROM   trip_202204
		UNION ALL 
        SELECT *
        FROM   trip_202205
		UNION ALL 
        SELECT *
        FROM   trip_202206
		UNION ALL 
        SELECT *
        FROM   trip_202207
		UNION ALL 
        SELECT *
        FROM   trip_202208
		UNION ALL 
        SELECT *
        FROM   trip_202209
		UNION ALL 
        SELECT *
        FROM   trip_202210
		UNION ALL 
        SELECT *
        FROM   trip_202211
		UNION ALL 
        SELECT *
        FROM   trip_202212) n