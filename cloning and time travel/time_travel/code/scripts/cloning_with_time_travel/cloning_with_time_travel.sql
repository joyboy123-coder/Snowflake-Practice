USE DATABASE SPORTS_DB;
USE SCHEMA SPORTS_SCHEMA;


-- 1️⃣ Check initial data in sports_table
SELECT * FROM sports_table;

-- 2️⃣ Assume a row is deleted (AT 3:30 PM )
DELETE FROM sports_table WHERE MATCH_OUTCOME = 'Loss'

-- 3️⃣ Check data after deletion
SELECT * FROM sports_table;

-- 4️⃣ Clone the table as it was **before deletion** using AT TIMESTAMP (CHECK DATA HOW IT IS AT 3 PM)

CREATE TABLE sports_table_clone CLONE sports_table
AT (TIMESTAMP => '2025-03-18 15:00:00');  -- Replace with timestamp before deletion

-- 5️⃣ Verify the recovered table (should contain deleted row)
SELECT * FROM sports_table_clone WHERE MATCH_OUTCOME = 'Loss';
