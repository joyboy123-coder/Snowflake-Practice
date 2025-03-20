-- Run this Query and check the query duration 

select year(sale_date) , count(*) from sales
group by year(sale_date);


--  Create a Materialized View (MV) on the Sales table

CREATE MATERIALIZED VIEW sales_mv AS 
select year(sale_date) , count(*) from sales
group by year(sale_date)

--  Query the Materialized View (Faster than querying raw data) and check the query duration 
SELECT * FROM sales_mv;

--  Refresh the Materialized View Manually (If Needed)
ALTER MATERIALIZED VIEW sales_mv REBUILD;

--  Drop the Materialized View (If No Longer Needed)
DROP MATERIALIZED VIEW sales_mv;
