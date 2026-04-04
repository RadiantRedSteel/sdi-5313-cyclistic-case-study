-- Find duplicate ride_id values (any duplicates across the whole table)
-- No results
SELECT ride_id, COUNT(*) AS cnt
FROM rides
GROUP BY ride_id
HAVING cnt > 1;

-- Count rows with duration = 0 seconds (started_at = ended_at)
-- 431 results
SELECT COUNT(*) AS zero_durations
FROM rides
WHERE TIMESTAMPDIFF(SECOND, started_at, ended_at) = 0;

-- Let's delete those zero_durations
DELETE FROM rides
WHERE TIMESTAMPDIFF(SECOND, started_at, ended_at) = 0;

-- List rows with negative duration (ended_at < started_at)
-- 100 results
SELECT *
FROM rides
WHERE ended_at < started_at
ORDER BY started_at
LIMIT 200;

-- Get rid of 100 time travelers
DELETE FROM rides
WHERE ended_at < started_at

-- Show distribution of durations (useful to spot outliers)
-- bucket	cnt	avg_sec	min_sec	max_sec	
-- 0-59s	120556	24.8	1	59	
-- 1-4min	991147	207.7	60	299	
-- 5-14min	2683130	555.4	300	899	
-- 15-29min	1234001	1249.1	900	1799	
-- 30-59min	467617	2397.8	1800	3599	
-- >=60min	164877	7192.8	3600	2061244	
SELECT
  CASE
    WHEN secs < 60 THEN '0-59s'
    WHEN secs BETWEEN 60 AND 299 THEN '1-4min'
    WHEN secs BETWEEN 300 AND 899 THEN '5-14min'
    WHEN secs BETWEEN 900 AND 1799 THEN '15-29min'
    WHEN secs BETWEEN 1800 AND 3599 THEN '30-59min'
    ELSE '>=60min' END AS bucket,
  COUNT(*) AS cnt,
  ROUND(AVG(secs),1) AS avg_sec,
  ROUND(MIN(secs),1) AS min_sec,
  ROUND(MAX(secs),1) AS max_sec
FROM (
  SELECT id, TIMESTAMPDIFF(SECOND, started_at, ended_at) AS secs
  FROM rides
) x
GROUP BY bucket
ORDER BY FIELD(bucket,'0-59s','1-4min','5-14min','15-29min','30-59min','>=60min');

-- 2061244 seconds is 572.5678 hours!
-- Worth taking a note on, but perhaps real enough to leave it in
SELECT id, ride_id, started_at, ended_at,
       TIMESTAMPDIFF(SECOND, started_at, ended_at) AS secs
FROM rides
ORDER BY secs DESC
LIMIT 20;

-- Find suspicious coordinates (out-of-range lat/lng)
-- No results
SELECT *
FROM rides
WHERE start_lat NOT BETWEEN -90 AND 90
   OR end_lat NOT BETWEEN -90 AND 90
   OR start_lng NOT BETWEEN -180 AND 180
   OR end_lng NOT BETWEEN -180 AND 180
LIMIT 200;

-- Quick per-partition row counts and sizes
SELECT PARTITION_NAME, TABLE_ROWS, DATA_LENGTH, INDEX_LENGTH
FROM information_schema.PARTITIONS
WHERE TABLE_SCHEMA = 'cyclistic_2022' AND TABLE_NAME = 'rides';
