DROP TABLE IF EXISTS green_tripdata_staging;
DROP TABLE IF EXISTS yellow_tripdata_staging;
DROP TABLE IF EXISTS uber_trips_staging;
DROP TABLE IF EXISTS uber_trips_2015;
DROP TABLE IF EXISTS cab_types;
DROP TABLE IF EXISTS taxi_zone_lookups;
DROP TABLE IF EXISTS fhv_trips;
DROP TABLE IF EXISTS trips;

CREATE TABLE green_tripdata_staging (
  vendor_id varchar(100),
  lpep_pickup_datetime varchar(100),
  lpep_dropoff_datetime varchar(100),
  store_and_fwd_flag varchar(100),
  rate_code_id varchar(100),
  pickup_longitude numeric(10),
  pickup_latitude numeric(10),
  dropoff_longitude numeric(10),
  dropoff_latitude numeric(10),
  passenger_count varchar(100),
  trip_distance varchar(100),
  fare_amount varchar(100),
  extra varchar(100),
  mta_tax varchar(100),
  tip_amount varchar(100),
  tolls_amount varchar(100),
  ehail_fee varchar(100),
  improvement_surcharge varchar(100),
  total_amount varchar(100),
  payment_type varchar(100),
  trip_type varchar(100),
  pickup_location_id varchar(100),
  dropoff_location_id varchar(100),
  junk1 varchar(100),
  junk2 varchar(100)
);

CREATE TABLE yellow_tripdata_staging (
  vendor_id varchar(100),
  tpep_pickup_datetime varchar(100),
  tpep_dropoff_datetime varchar(100),
  passenger_count varchar(100),
  trip_distance varchar(100),
  pickup_longitude numeric(10),
  pickup_latitude numeric(10),
  rate_code_id varchar(100),
  store_and_fwd_flag varchar(100),
  dropoff_longitude numeric(10),
  dropoff_latitude numeric(10),
  payment_type varchar(100),
  fare_amount varchar(100),
  extra varchar(100),
  mta_tax varchar(100),
  tip_amount varchar(100),
  tolls_amount varchar(100),
  improvement_surcharge varchar(100),
  total_amount varchar(100),
  pickup_location_id varchar(100),
  dropoff_location_id varchar(100),
  junk1 varchar(100),
  junk2 varchar(100)
);

CREATE TABLE uber_trips_staging (
  pickup_datetime timestamp,
  pickup_latitude numeric(10),
  pickup_longitude numeric(10),
  base_code varchar(100)
);

CREATE TABLE uber_trips_2015 (
  dispatching_base_num varchar(100),
  pickup_datetime timestamp,
  affiliated_base_num varchar(100),
  location_id integer,
  nyct2010_ntacode varchar(100)
);

CREATE TABLE taxi_zone_lookups (
  location_id integer,
  borough varchar(100),
  zone varchar(100),
  service_zone varchar(100),
  nyct2010_ntacode varchar(100)
);

CREATE TABLE fhv_trips (
  dispatching_base_num varchar(100),
  pickup_datetime timestamp,
  dropoff_datetime timestamp,
  pickup_location_id integer,
  dropoff_location_id integer
);



CREATE TABLE cab_types (
  type varchar(100)
);

INSERT INTO cab_types (type) SELECT 'yellow';
INSERT INTO cab_types (type) SELECT 'green';
INSERT INTO cab_types (type) SELECT 'uber';

CREATE TABLE trips (
  cab_type_id integer,
  vendor_id varchar(100),
  pickup_datetime timestamp,
  dropoff_datetime timestamp,
  store_and_fwd_flag char(1),
  rate_code_id integer,
  pickup_longitude numeric(10),
  pickup_latitude numeric(10),
  dropoff_longitude numeric(10),
  dropoff_latitude numeric(10),
  passenger_count integer,
  trip_distance numeric(10),
  fare_amount numeric(10),
  extra numeric(10),
  mta_tax numeric(10),
  tip_amount numeric(10),
  tolls_amount numeric(10),
  ehail_fee numeric(10),
  improvement_surcharge numeric(10),
  total_amount numeric(10),
  payment_type varchar(100),
  trip_type integer,
  pickup_nyct2010_gid integer,
  dropoff_nyct2010_gid integer,
  pickup_location_id integer,
  dropoff_location_id integer
);
