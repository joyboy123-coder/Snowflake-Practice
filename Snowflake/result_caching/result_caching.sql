 -- Step 1: Run the Query for the First Time (No Cache Used)
SELECT COUNT(*) FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

-- Step 2: Run the Same Query Again (Uses Result Cache)
SELECT COUNT(*) FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

-- Step 3: Disable Result Caching
ALTER SESSION SET USE_CACHED_RESULT = FALSE;

-- Step 4: Run the Query Again (No Cache Used)
SELECT COUNT(*) FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

-- Step 5: Enable Result Caching Again
ALTER SESSION SET USE_CACHED_RESULT = TRUE;

-- Step 6: Run the Query Again (Cache Should Be Used)
SELECT COUNT(*) FROM sales WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

-- Step 7: Check Query Performance
SELECT query_id, query_text, execution_time
FROM TABLE(INFORMATION_SCHEMA.QUERY_HISTORY())
WHERE query_text LIKE '%sales%'
ORDER BY execution_time DESC;
