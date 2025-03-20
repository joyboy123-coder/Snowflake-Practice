# 🚀 Snowflake Performance Testing  

## 📌 Overview  
This project focuses on **query optimization, materialized views, and result caching** in Snowflake using a **20K row dataset**.  

## 🏗️ Database & Schema  
- **Database:** `SALES_DB` 🗄️  
- **Schema:** `SALES_SCHEMA` 📂  

## 📊 Table: `SALES`  
The table contains **20,000 rows** of randomly generated sales data with the following columns:  

| Column Name    | Description |
|---------------|-------------|
| 🆔 `id`          | Unique identifier for each sale (Primary Key) |
| 👤 `customer_id` | Customer ID (random values **1 - 1000**) |
| 📦 `product_id`  | Product ID (random values **1 - 500**) |
| 📅 `sale_date`   | Date of sale (random within the last year) |
| 🔢 `quantity`    | Number of items sold (**1 - 10**) |
| 💰 `price`       | Price per item (**₹5 - ₹500**) |
| 🏷️ `total_amount`| Total price (`quantity * price`) |

## 🔥 Key Focus Areas  
✅ **Query Optimization** – Improving query speed and efficiency.  
✅ **Result Caching** – Leveraging Snowflake’s caching for faster queries.  
✅ **Materialized Views** – Storing precomputed query results for quick access.  

## 📂 Project Structure  
- 📁 `query_optimization/` – Techniques to improve query performance.  
- 📁 `result_caching/` – Understanding and implementing caching in Snowflake.  
- 📁 `materialized_views/` – Creating and testing materialized views.  
- 📁 `performance_testing/` – Performance benchmarking and analysis.  

🚀 **Goal:** Optimize queries and enhance Snowflake performance!  
