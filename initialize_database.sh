#!/bin/bash

sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "create schema if not exists nyc_taxi_data;"
sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -e "use schema nyc_taxi_data;"

sh ../sqlline_cz/sqlline properties ../sqlline_cz/clickzetta.properties -f setup_files/create_nyc_taxi_schema.sql
