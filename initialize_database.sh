#!/bin/bash

sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "create schema if not exists nyc_taxi_data;"
sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "use schema nyc_taxi_data;"

# psql nyc-taxi-data -f setup_files/create_nyc_taxi_schema.sql
sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -f setup_files/create_nyc_taxi_schema.sql


# psql nyc-taxi-data -f setup_files/add_tract_to_zone_mapping.sql
# sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -f setup_files/add_tract_to_zone_mapping.sql

# cat data/fhv_bases.csv | psql nyc-taxi-data -c "COPY fhv_bases FROM stdin WITH CSV HEADER;"
# weather_schema="station_id, station_name, date, average_wind_speed, precipitation, snowfall, snow_depth, max_temperature, min_temperature"
# cat data/central_park_weather.csv | psql nyc-taxi-data -c "COPY central_park_weather_observations (${weather_schema}) FROM stdin WITH CSV HEADER;"
# psql nyc-taxi-data -c "UPDATE central_park_weather_observations SET average_wind_speed = NULL WHERE average_wind_speed = -9999;"
