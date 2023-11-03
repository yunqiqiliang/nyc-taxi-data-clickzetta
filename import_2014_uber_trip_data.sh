#!/bin/bash

# load 2014 Uber data into `fhv_trips` table
for filename in data/uber-raw-data*14.csv; do
  echo "`date`: beginning load for $filename"
  sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "set copy.csv.with.header=false;set copy.csv.skip.header=true; copy uber_trips_2014 from '${filename}';"
  echo "`date`: finished raw load for $filename"
done;

# psql nyc-taxi-data -f setup_files/populate_2014_uber_trips.sql
