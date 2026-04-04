-- These are VIRTUAL generated columns (no extra storage, computed on SELECT).
-- Change VIRTUAL to STORED if you want physical storage and indexing.
-- ride_duration_sec uses TIMESTAMPDIFF seconds and can be used in WHERE/GROUP BY.
-- started_dow follows MySQL/MariaDB DAYOFWEEK(): 1=Sunday … 7=Saturday. Use DAYNAME(started_at) for string names.
-- started_month is 1–12. started_hour is 0–23.
-- time_of_day is a simple grouping.

ALTER TABLE rides
  ADD COLUMN ride_duration_sec INT GENERATED ALWAYS AS (TIMESTAMPDIFF(SECOND, started_at, ended_at)) VIRTUAL,
  ADD COLUMN started_date DATE GENERATED ALWAYS AS (DATE(started_at)) VIRTUAL,
  ADD COLUMN started_dow TINYINT GENERATED ALWAYS AS (DAYOFWEEK(started_at)) VIRTUAL,
  ADD COLUMN started_month TINYINT GENERATED ALWAYS AS (MONTH(started_at)) VIRTUAL,
  ADD COLUMN started_hour TINYINT GENERATED ALWAYS AS (HOUR(started_at)) VIRTUAL,
  ADD COLUMN time_of_day ENUM('early_morning','morning','midday','afternoon','evening','night') 
    GENERATED ALWAYS AS (
      CASE
        WHEN HOUR(started_at) BETWEEN 4  AND 6  THEN 'early_morning'
        WHEN HOUR(started_at) BETWEEN 7  AND 10 THEN 'morning'
        WHEN HOUR(started_at) BETWEEN 11 AND 13 THEN 'midday'
        WHEN HOUR(started_at) BETWEEN 14 AND 16 THEN 'afternoon'
        WHEN HOUR(started_at) BETWEEN 17 AND 20 THEN 'evening'
        ELSE 'night' END
    ) VIRTUAL;
