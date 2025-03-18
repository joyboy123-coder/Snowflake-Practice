-- Use the SPORTS_DB database and schema
USE DATABASE SPORTS_DB;
USE SCHEMA SPORTS_SCHEMA;

-- Add an updated_at column if it doesn't exist
ALTER TABLE SPORTS_TABLE ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP;

-- Update the table at 12:12 PM on March 18, 2025
UPDATE SPORTS_TABLE
SET RUNS_SCORED = 100, updated_at = '2025-03-18 12:12:00'
WHERE PLAYER_NAME = 'Virat Kohli' AND OPPONENT_TEAM IN ('Australia', 'Pakistan');

-- Time travel query using AT (retrieves the state of the table at exactly 12:12 PM)
SELECT * FROM SPORTS_TABLE AT (TIMESTAMP => '2025-03-18 12:12:00');

-- Time travel query using BEFORE (retrieves the state of the table just before 12:12 PM)
SELECT * FROM SPORTS_TABLE BEFORE (TIMESTAMP => '2025-03-18 12:12:00');
