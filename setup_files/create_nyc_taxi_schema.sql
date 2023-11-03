
CREATE TABLE if not exists green_tripdata_staging (
  id BIGINT,
  vendor_id INT,
  lpep_pickup_datetime STRING,
  lpep_dropoff_datetime STRING,
  store_and_fwd_flag STRING,
  rate_code_id INT,
  dropoff_location_id INT,
  congestion_surcharge DECIMAL,
  passenger_count INT,
  trip_distance DECIMAL,
  fare_amount DECIMAL,
  extra DECIMAL,
  mta_tax DECIMAL,
  tip_amount DECIMAL,
  tolls_amount DECIMAL,
  ehail_fee DECIMAL,
  improvement_surcharge DECIMAL,
  total_amount DECIMAL,
  payment_type INT,
  trip_type INT,
  pickup_location_id INT
);

CREATE TABLE  if not exists yellow_tripdata_staging (
  id BIGINT,
  vendor_id STRING,
  tpep_pickup_datetime STRING,
  tpep_dropoff_datetime STRING,
  passenger_count INT,
  trip_distance DECIMAL,
  pickup_longitude DECIMAL,
  pickup_latitude DECIMAL,
  rate_code_id STRING,
  store_and_fwd_flag STRING,
  dropoff_longitude DECIMAL,
  dropoff_latitude DECIMAL,
  pickup_location_id INT,
  dropoff_location_id INT,
  payment_type STRING,
  fare_amount DECIMAL,
  extra DECIMAL,
  mta_tax DECIMAL,
  tip_amount DECIMAL,
  tolls_amount DECIMAL,
  improvement_surcharge DECIMAL,
  total_amount DECIMAL,
  congestion_surcharge DECIMAL,
  airport_fee DECIMAL
);

CREATE TABLE if not exists  uber_trips_2014 (
  id INT ,
  pickup_datetime STRING,
  pickup_latitude DECIMAL,
  pickup_longitude DECIMAL,
  base_code STRING
);

CREATE TABLE if not exists fhv_trips_staging (
  hvfhs_license_num STRING,
  dispatching_base_num STRING,
  originating_base_num STRING,
  request_datetime STRING,
  on_scene_datetime STRING,
  pickup_datetime STRING,
  dropoff_datetime STRING,
  pickup_location_id INT,
  dropoff_location_id INT,
  trip_miles DECIMAL,
  trip_time DECIMAL,
  base_passenger_fare DECIMAL,
  tolls DECIMAL,
  black_car_fund DECIMAL,
  sales_tax DECIMAL,
  congestion_surcharge DECIMAL,
  airport_fee DECIMAL,
  tips DECIMAL,
  driver_pay DECIMAL,
  shared_request_flag STRING,
  shared_match_flag STRING,
  access_a_ride_flag STRING,
  wav_request_flag STRING,
  wav_match_flag STRING,
  shared_ride_flag STRING,
  affiliated_base_num STRING,
  legacy_shared_ride_flag STRING
);

CREATE TABLE  if not exists fhv_trips (
  id BIGINT,
  hvfhs_license_num STRING,
  dispatching_base_num STRING,
  originating_base_num STRING,
  request_datetime STRING,
  on_scene_datetime STRING,
  pickup_datetime STRING,
  dropoff_datetime STRING,
  pickup_location_id INT,
  dropoff_location_id INT,
  trip_miles DECIMAL,
  trip_time DECIMAL,
  base_passenger_fare DECIMAL,
  tolls DECIMAL,
  black_car_fund DECIMAL,
  sales_tax DECIMAL,
  congestion_surcharge DECIMAL,
  airport_fee DECIMAL,
  tips DECIMAL,
  driver_pay DECIMAL,
  shared_request BOOLEAN,
  shared_match BOOLEAN,
  access_a_ride BOOLEAN,
  wav_request BOOLEAN,
  wav_match BOOLEAN,
  legacy_shared_ride INT,
  affiliated_base_num STRING
);

CREATE TABLE  if not exists fhv_bases (
  base_number STRING PRIMARY KEY,
  base_name STRING,
  dba STRING,
  dba_category STRING
);


CREATE TABLE  if not exists hvfhs_licenses (
  license_number STRING,
  company_name STRING
);

INSERT INTO hvfhs_licenses
VALUES ('HV0002', 'juno'),
       ('HV0003', 'uber'),
       ('HV0004', 'via'),
       ('HV0005', 'lyft');

CREATE TABLE if not exists cab_types (
  id INT,
  type string
);

INSERT INTO cab_types (type) VALUES ('yellow'), ('green');

CREATE TABLE if not exists trips (
  id BIGINT ,
  cab_type_id INT,
  vendor_id INT,
  pickup_datetime STRING,
  dropoff_datetime STRING,
  store_and_fwd_flag BOOLEAN,
  rate_code_id INT,
  pickup_longitude DECIMAL,
  pickup_latitude DECIMAL,
  dropoff_longitude DECIMAL,
  dropoff_latitude DECIMAL,
  passenger_count INT,
  trip_distance DECIMAL,
  fare_amount DECIMAL,
  extra DECIMAL,
  mta_tax DECIMAL,
  tip_amount DECIMAL,
  tolls_amount DECIMAL,
  ehail_fee DECIMAL,
  improvement_surcharge DECIMAL,
  congestion_surcharge DECIMAL,
  airport_fee DECIMAL,
  total_amount DECIMAL,
  payment_type INT,
  trip_type INT,
  pickup_nyct2010_gid INT,
  dropoff_nyct2010_gid INT,
  pickup_location_id INT,
  dropoff_location_id INT
);

CREATE TABLE if not exists central_park_weather_observations (
  station_id STRING,
  station_name STRING,
  date DATE,
  precipitation DECIMAL,
  snow_depth DECIMAL,
  snowfall DECIMAL,
  max_temperature DECIMAL,
  min_temperature DECIMAL,
  average_wind_speed DECIMAL
);
