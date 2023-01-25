UPDATE bay_area_bike_sharing_trips
SET start_city_state = 'San Francisco, CA'
WHERE start_station_id = 16;

UPDATE bay_area_bike_sharing_trips
SET end_city_state = 'San Francisco, CA'
WHERE end_station_id = 16;

UPDATE bay_area_bike_sharing_trips
SET start_station_name = 'Market St at Steuart St'
WHERE start_station_name = 'Steuart St at Market St';

UPDATE bay_area_bike_sharing_trips
SET end_station_name = 'Market St at Steuart St'
WHERE end_station_name = 'Steuart St at Market St';