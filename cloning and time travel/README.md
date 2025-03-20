# ⏳ Snowflake Cloning & Time Travel Project  

## 📌 Overview  
This project explores **Snowflake's Cloning and Time Travel** features, which allow users to:  
- **Clone Databases, Schemas, and Tables** without duplicating storage.  
- **Recover Dropped Tables and Data** using **Time Travel**.  
- **Compare Cloned vs. Original Data** to track changes.  
- **Restore Data from a Specific Timestamp** for audit and rollback purposes.  

Snowflake’s Time Travel and Cloning features are essential for **backup, data auditing, and quick recovery** without additional storage costs.  

---

## 📂 Folder Structure  

### 🗂 `cloning/`  
Contains SQL scripts for:  
- **Cloning a Database, Schema, and Table** to create a backup.  
- **Using Cloned Data for Testing Without Affecting Production**.  
- **Comparing Cloned vs. Original Data** after modifications.  

### 🗂 `time_travel/`  
Includes scripts for:  
- **Recovering Deleted Tables (`DROP & UNDROP`)**.  
- **Restoring a Table or Schema at a Specific Time (`AT TIMESTAMP`, `BEFORE TIMESTAMP`)**.  
- **Verifying Changes Between Current and Past Data States**.  

### 🗂 `code/`  
Contains Snowflake SQL scripts for:  
- **Advanced Cloning Scenarios** – Cloning multiple objects at once.  
- **Rollback Strategies** – Restoring data after accidental updates/deletes.  

### 🗂 `examples/`  
Practical examples including:  
- **Backup Verification Scripts** – Ensuring cloned data is accurate.  
- **Time Travel Queries** – Checking data history.  

---

## 🚀 Key Features  

### 🔹 **Cloning**  
- **Creates a new database, schema, or table instantly** without extra storage.  
- **Maintains an exact snapshot of the source at the time of cloning**.  
- **Allows safe modifications without affecting the original data**.  

### 🔹 **Time Travel**  
- **Tracks historical changes** for a specified retention period.  
- **Restores data to a past state** using `AT TIMESTAMP` or `BEFORE`.  
- **Prevents accidental data loss** with the `UNDROP` command.  

### 🔹 **Data Comparison**  
- **Verifies differences between cloned and original tables**.  
- **Checks for unintended modifications before applying changes to production**.  

---

## 📖 Use Cases  

### 🔄 **Disaster Recovery**  
- Quickly restore a deleted table or schema.  
- Revert accidental updates by restoring a past state.  

### 🧪 **Testing & Development**  
- Clone production data for safe testing.  
- Run experiments without affecting live data.  

### 🔍 **Auditing & Compliance**  
- Analyze data as it existed at a specific time.  
- Verify data integrity before and after changes.  

---

## ✅ Features Implemented  
✔ **Database, Schema, and Table Cloning**  
✔ **Time Travel for Recovery & Rollback**  
✔ **Comparing Cloned vs. Updated Data**  
✔ **Backup Verification & Validation**  
✔ **Data Auditing with Time Travel**  

---
