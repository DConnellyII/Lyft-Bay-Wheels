/*DELETE FROM bay_wheels
WHERE start_lat IS NULL;

DELETE FROM bay_wheels
WHERE end_lat IS NULL;

SELECT DISTINCT start_station_id, start_station_name, start_station_city, start_lat, start_long
FROM bay_wheels
--WHERE start_station_city IN ('San Jose')
ORDER BY start_station_city, start_station_id;*/



/*UPDATE bay_wheels
SET start_lat = 37.799262, start_long = -122.434014
WHERE start_station_id = 282 AND start_station_city IN ('San Francisco');*/

/*UPDATE bay_wheels
SET end_lat = 37.804025, end_long = -122.262412
WHERE end_station_id = 316 AND end_station_name IN ('1st St at San Carlos Ave');*/

SELECT DISTINCT end_station_id, end_station_name, end_station_city, end_lat, end_long
FROM bay_wheels
--WHERE end_station_city IN ('San Jose')
ORDER BY end_station_city, end_station_id;