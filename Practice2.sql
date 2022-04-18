-- Import practice
-- General syntaxis

COPY TABLE_NAME
FROM '/tmp/us_counties_export.csv'
WITH (FORMAT CSV, HEADER);

-- 1.- Importing data.
-- 1) Create a table.
-- 2) Make the data (file) available for the postgres user (Copy into /tmp folder).
-- 3) Copy the files.
-- 4) It is possible to indicate the columns to import.
-- 5) It is possible to import only some records using where.
-- 6) It is possible to import to a temporary table and do an insert from there.

COPY us_counties_pop_est_2019
TO '/tmp/us_counties_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

-- 2.- Export data to a txt file.
-- 1) Export an entire table.
-- 2) Export selected columns from a table.
-- 3) Export query results.