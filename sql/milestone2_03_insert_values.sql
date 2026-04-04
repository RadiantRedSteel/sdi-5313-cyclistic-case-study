-- The following SQL code will all 12 months of divvy-tripdata into cyclistic_2022.rides.
-- Values will become null if they are an empty string
-- Don't try to do all of these in one query. You'll most likely time out before it completes.
-- Make sure you correct the file paths, if need be.
-- Also check the database and table name.

-- 1ST .CSV (103770 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202201-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 2ND .CSV (115609 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202202-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 3RD .CSV (284042 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202203-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 4TH .CSV (371249 rows inserted.)
LOAD DATA INFILE 'C:/xampp/tmp/202204-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 5TH .CSV (634858 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202205-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 6TH .CSV (769204 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202206-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 7TH .CSV (823488 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202207-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 8TH .CSV (785932 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202208-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 9TH .CSV (701339 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202209-divvy-publictripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 10TH .CSV (558685 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202210-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 11TH .CSV (337735 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202211-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');


-- 12TH .CSV (181806 rows inserted)
LOAD DATA INFILE 'C:/xampp/tmp/202212-divvy-tripdata.csv'
INTO TABLE cyclistic_2022.rides
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ride_id,@rideable_type,@started_at,@ended_at,@start_station_name,@start_station_id,@end_station_name,@end_station_id,@start_lat,@start_lng,@end_lat,@end_lng,@member_casual)
SET
  ride_id = NULLIF(@ride_id,''),
  rideable_type = NULLIF(@rideable_type,''),
  started_at = NULLIF(@started_at,''),
  ended_at = NULLIF(@ended_at,''),
  start_station_name = NULLIF(@start_station_name,''),
  start_station_id = NULLIF(@start_station_id,''),
  end_station_name = NULLIF(@end_station_name,''),
  end_station_id = NULLIF(@end_station_id,''),
  start_lat = NULLIF(@start_lat,''),
  start_lng = NULLIF(@start_lng,''),
  end_lat = NULLIF(@end_lat,''),
  end_lng = NULLIF(@end_lng,''),
  member_casual = NULLIF(@member_casual,'');
