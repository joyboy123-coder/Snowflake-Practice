 
USE DATABASE SPORTS_TABLE;
USE SCHEMA SPORTS_SCHEMA;


SELECT COUNT(*) AS row_count_before_drop FROM SPORTS_TABLE;

-- 🚨 Step 4: Drop the table

DROP TABLE SPORTS_TABLE;

-- 🔍 Step 5: Try checking the count after DROP (This will fail because the table is deleted)

SELECT COUNT(*) AS row_count_after_drop FROM SPORTS_TABLE; -- ❌ Will give an error

-- ⏳ Step 6: Restore the dropped table using Time Travel

UNDROP TABLE SPORTS_TABLE;

-- ✅ Step 7: Check the count after restoring
SELECT COUNT(*) AS row_count_after_undrop FROM SPORTS_TABLE;