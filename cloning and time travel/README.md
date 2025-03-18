# ⏳ Snowflake Time Travel & Cloning Project  

## 📌 Overview  
This project explores **Snowflake's Time Travel** and **Cloning** features, allowing recovery, rollback, and historical cloning of tables.  

---

## 📂 Folder Structure  

### 🗂 `cloning/`  
Contains SQL scripts and examples for:  
- **Cloning with Time Travel** – Creating snapshots of tables at different points in time.  
- **Using `AT TIMESTAMP`** – Cloning a table as it existed at an exact time.  
- **Using `BEFORE TIMESTAMP`** – Cloning a table just before a specific action (e.g., deletion).  

### 🗂 `time_travel/`  
Contains SQL scripts and explanations related to Snowflake Time Travel, including:  
- **`AT BEFORE`** – Restoring tables before a specific timestamp.  
- **`DROP & UNDROP`** – Recovering deleted tables using Time Travel.  
- **`QUERY_ID` (Planned but not included)** – Query-based time travel (optional).  

### 🗂 `scripts/`  
SQL scripts demonstrating:  
- **Restoring dropped tables** using Time Travel.  
- **Historical data retrieval** with `AT TIMESTAMP` & `BEFORE TIMESTAMP`.  
- **Cloning tables at different timestamps** to analyze historical snapshots.  

### 🗂 `table/`  
Contains table definitions and sample data for:  
- **Testing Time Travel operations** on structured data.  
- **Storing versioned table snapshots** for comparison.  

---

## 🚀 Features Implemented  
✅ **Time Travel Concepts**  
✅ **Cloning with Time Travel (`AT` & `BEFORE` TIMESTAMP)**  
✅ **Restoring Dropped Tables (`DROP` & `UNDROP`)**  
✅ **Folder Structure with Organized Scripts**  

---

## 📅 Project Timeline  
- **Started with Cloning Concepts** 🏁  
- **Added Time Travel (`AT TIMESTAMP`, `BEFORE TIMESTAMP`)**  
- **Implemented Drop/Undrop Table Recovery**  
- **Structured Scripts & Explanations in Folders**  

---

## 📌 Next Steps  
🔹 **(Optional)** Explore `QUERY_ID` for precise point-in-time query retrieval.  
🔹 **Optimize SQL scripts** for readability and best practices.  

---
