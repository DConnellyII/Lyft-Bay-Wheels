CREATE TABLE bay_area_bike_sharing_trips
    (bike_id INT NOT NULL,
     month VARCHAR NOT NULL,
     trip_duration_sec INT NOT NULL,
     start_city VARCHAR,
     start_station_name VARCHAR NOT NULL,
     start_station_id INT NOT NULL,
     end_city VARCHAR,
     end_station_name VARCHAR NOT NULL,
     end_station_id INT NOT NULL,
     state VARCHAR(2),
     user_type VARCHAR NOT NULL,
     member_birth_year INT NOT NULL,
     member_gender VARCHAR NOT NULL);