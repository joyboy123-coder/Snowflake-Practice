# 🏆 Cloning with Time Travel in Snowflake  

## 📌 Overview  
This project demonstrates how to recover deleted data using **Time Travel** in Snowflake by cloning a table at a specific timestamp.  

---

## ⚡ Steps Performed  

1️⃣ **Check initial data** in the table.  
2️⃣ **Delete a row** from the table at **3:30 PM**.  
3️⃣ **Verify** that the row is removed.  
4️⃣ **Clone the table** using **AT TIMESTAMP** to restore data from **3:00 PM**.  
5️⃣ **Verify the cloned table** to confirm that the deleted row is recovered.  

---

## 🔥 Summary  

| **Table Name**         | **Rows with `MATCH_OUTCOME = 'Loss'`** |
|-----------------------|--------------------------------|
| `sports_table`        | ❌ **Not Present** (Deleted at 3:30 PM) |
| `sports_table_clone`  | ✅ **Present** (Restored from 3:00 PM snapshot) |

To fully restore the data, the recovered rows can be inserted back into the original table.  

---

### 🎯 Key Takeaways  
✔ **Time Travel in Snowflake** helps recover deleted data.  
✔ The `CLONE` feature allows restoring tables from a specific timestamp.  
✔ Deleted rows remain unavailable in the original table unless manually restored.  

 
