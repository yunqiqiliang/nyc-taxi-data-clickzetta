#!/bin/bash

fhv_schema="(dispatching_base_num, pickup_datetime, dropoff_datetime, pickup_location_id, dropoff_location_id, legacy_shared_ride_flag, affiliated_base_num)"

for parquet_filename in data/fhv_tripdata*.parquet; do
  echo "`date`: converting ${parquet_filename} to csv"
  ./setup_files/convert_parquet_to_csv.R ${parquet_filename}

  csv_filename=${parquet_filename/.parquet/.csv}
  
  sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "set copy.csv.with.header=false;set copy.csv.skip.header=true; copy fhv_trips_staging from '${csv_filename}';"

  echo "`date`: finished raw load for ${csv_filename}"

  rm -f $csv_filename
  echo "`date`: deleted ${csv_filename}"
done;
