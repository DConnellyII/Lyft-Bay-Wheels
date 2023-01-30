UPDATE bay_wheels
SET start_lat = 37.783795, start_long = -122.408486
WHERE start_station_id = 5;

UPDATE bay_wheels
SET end_lat = 37.783795, end_long = -122.408486
WHERE end_station_id = 5;

SELECT DISTINCT start_station_id, start_station_name, start_station_city, start_lat, start_long
FROM bay_wheels
WHERE start_station_city IN ('San Francisco')
ORDER BY start_station_city, start_station_id;

/*SELECT DISTINCT end_station_id, end_station_name, end_station_city, end_lat, end_long
FROM bay_wheels
WHERE end_station_city IN ('San Francisco')
ORDER BY end_station_city, end_station_id;*/