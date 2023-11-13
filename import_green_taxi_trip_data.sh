#!/bin/bash

green_schema="(vendor_id, lpep_pickup_datetime, lpep_dropoff_datetime, store_and_fwd_flag, rate_code_id, pickup_location_id, dropoff_location_id, passenger_count, trip_distance, fare_amount, extra, mta_tax, tip_amount, tolls_amount, ehail_fee, improvement_surcharge, total_amount, payment_type, trip_type, congestion_surcharge)"

for parquet_filename in data/green_tripdata*.parquet; do
  echo "`date`: converting ${parquet_filename} to csv"
  ./setup_files/convert_parquet_to_csv.R ${parquet_filename}

  csv_filename=${parquet_filename/.parquet/.csv}
  sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "set copy.csv.with.header=false;set copy.csv.skip.header=true; copy green_tripdata_staging from '${csv_filename}';"
  echo "`date`: finished raw load for ${csv_filename}"

  rm -f $csv_filename
  echo "`date`: deleted ${csv_filename}"
done;
