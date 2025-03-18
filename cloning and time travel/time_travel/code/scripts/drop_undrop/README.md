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

---

## 🧑‍💻 Example Output

### **Before Drop:**

```sql
-- Count the rows before dropping the table
SELECT COUNT(*) AS row_count_before_drop FROM SPORTS_TABLE;

Expected Output:

sql
Copy code
row_count_before_drop
1000
After Drop (Error):
sql
Copy code
-- Attempt to count rows after drop (this will fail because the table is dropped)
SELECT COUNT(*) AS row_count_after_drop FROM SPORTS_TABLE;
Expected Output:

sql
Copy code
ERROR: Table 'SPORTS_TABLE' does not exist.
After Restoration:
sql
Copy code
-- Count the rows after restoring the table
SELECT COUNT(*) AS row_count_after_undrop FROM SPORTS_TABLE;
Expected Output:

sql
Copy code
row_count_after_undrop
1000