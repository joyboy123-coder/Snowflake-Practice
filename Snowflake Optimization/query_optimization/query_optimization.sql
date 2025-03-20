--  Identify Slow Query (Without Clustering)
SELECT * 
FROM sales 
WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

--  Enable Clustering with Linear Order on sale_date
ALTER TABLE sales CLUSTER BY (LINEAR(sale_date));

--  Run the Query Again (Now Optimized)
SELECT * 
FROM sales 
WHERE sale_date BETWEEN '2024-01-01' AND '2025-01-01';

--  Check Clustering Information
SHOW TABLES LIKE 'SALES';
SELECT SYSTEM$CLUSTERING_INFORMATION('SALES');

--  Compare Query Performance Before vs. After Optimization
SELECT query_id, query_text, execution_time 
FROM TABLE(INFORMATION_SCHEMA.QUERY_HISTORY())
WHERE query_text LIKE '%sales%'
ORDER BY execution_time DESC;