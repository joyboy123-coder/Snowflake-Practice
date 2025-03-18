# ✨ Sports Table Restoration Process

## 📌 Overview  
This step demonstrates how to drop a table in Snowflake and restore it using **Time Travel**, ensuring that the data is safely recovered even after accidental deletion.

---

### ✅ Drop and Restore Steps
✔️ Selected the database and schema for the operations  
✔️ Checked the row count before dropping the table  
✔️ Dropped the `SPORTS_TABLE` from the database  
✔️ Attempted to query the table after it was dropped (this will fail)  
✔️ Restored the dropped table using **Time Travel** (`UNDROP`)  
✔️ Checked the row count after restoring the table

