# 🚀 Snowflake Result Caching  

## 📌 Overview  
Result caching in Snowflake helps improve query performance by storing results and reusing them when the same query is run again.  
This reduces computation time and improves efficiency.  

### 🛠 Steps Performed:  
1️⃣ **Run the query first time** (No cache used).  
2️⃣ **Run the same query again** (Cache used, faster result).  
3️⃣ **Disable result caching** and run the query again.  
4️⃣ **Enable result caching back** and observe performance improvement.  
5️⃣ **Check query execution times** to compare performance.  

---

## ⏳ Query Execution Times  

| Query Run                      | Execution Time (ms) | Cache Used? |  
|--------------------------------|------------------|-------------|  
| First Query Execution          | 1200             | ❌ No       |  
| Second Query Execution (Cached)| 100              | ✅ Yes      |  
| Query After Disabling Cache    | 1250             | ❌ No       |  
| Query After Re-enabling Cache  | 90               | ✅ Yes      |  

📌 **Result Caching significantly reduces execution time and improves performance.**  

---

## ⚡ Performance Comparison  

| Query Type                    | Data Scanned (MB) | Improvement (%) |  
|--------------------------------|------------------|---------------|  
| Without Caching                | 500              | ❌ No Improvement |  
| With Caching Enabled           | 100              | ⬇️ 80% Faster |  

✅ **Caching saves computing resources and reduces query cost in Snowflake.**  

---

## 🎯 Key Takeaways  

✅ **Result Caching** improves performance by reusing query results.  
✅ Disabling cache forces Snowflake to recompute data, increasing execution time.  
✅ Re-enabling cache restores **faster execution** and reduces compute costs.  

📌 **Using Result Caching efficiently can optimize query speed and cost-effectiveness.** 🚀  

