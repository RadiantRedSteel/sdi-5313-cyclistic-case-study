-- This will remove the rows that did not have an ending coordinate location.
-- 5858 rows affected
DELETE FROM rides
WHERE end_lat IS NULL OR end_lng IS NULL;