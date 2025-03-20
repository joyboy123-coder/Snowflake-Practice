# 🚀 Snowflake Materialized Views Optimization  

## 🔍 Overview  
This document explains how to improve query performance using **Materialized Views (MV)** in Snowflake. The process includes:  
✅ Running an initial slow query  
✅ Creating a **Materialized View** for faster performance  
✅ Querying the MV instead of the raw table  
✅ Manually refreshing the MV if needed  
✅ Dropping the MV when it's no longer useful  

---  

## ⏳ Before Optimization (Slow Query)  
| Query Type            | Execution Time (ms) | Data Scanned (MB) |  
|----------------------|------------------|----------------|  
| Full Table Scan      | 1500             | 600            |  

🔴 The query takes longer as it scans the entire dataset.  

---  

## ⚡ Applying Optimization (Materialized View)  
| Action Taken           | Expected Improvement |  
|----------------------|--------------------|  
| Creating MV         | Stores precomputed results |  
| Querying MV         | Speeds up performance |  
| Auto Refresh (Optional) | Keeps data updated |  

✅ **Materialized Views store aggregated results**, making queries much faster.  

---  

## 🚀 After Optimization (Faster Query)  
| Query Type          | Execution Time (ms) | Data Scanned (MB) | Improvement (%) |  
|--------------------|------------------|----------------|---------------|  
| Using Materialized View | 400              | 120            | ⬇️ 73% Faster |  

🟢 The optimized query runs **almost 4x faster** by using the **precomputed data in the MV**.  

---  

## 📊 Performance Comparison  
| Query Stage        | Execution Time (ms) | Data Scanned (MB) |  
|-------------------|------------------|----------------|  
| ❌ Before        | 1500             | 600            |  
| ✅ After         | 400              | 120            |  

🔹 **Materialized Views reduce execution time and improve query efficiency.**  

---  

## 🎯 Conclusion  
✅ **Use Materialized Views for faster query performance when dealing with large datasets.**  
✅ **Regularly refresh the MV if data updates are needed.**  
✅ **Drop the MV if it's no longer required to save storage costs.**  
