#!/bin/bash
# Helper script to download Bike share data
# https://www.citibikenyc.com/system-data

# List of files to Download
DATA_LIST=(202010-citibike-tripdata.csv.zip \
           202101-citibike-tripdata.csv.zip)

# Name of the bucket where data is stored
BUCKET_NAME=https://s3.amazonaws.com/tripdata/

for data_set in "${DATA_LIST[@]}"
do
  wget "${BUCKET_NAME}${data_set}"
  unzip "$data_set"
  rm "$data_set"
done
