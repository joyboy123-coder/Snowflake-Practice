# 🏏 Snowflake Time Travel in SPORTS_DB

This project demonstrates the **Time Travel feature** in Snowflake using the `SPORTS_DB` database. It covers updating records, retrieving past states, cloning tables before deletion, and restoring dropped tables. 🚀  

---

## 📌 Prerequisites
Before executing the steps, ensure:  
- You have access to a **Snowflake account**  
- The **SPORTS_DB database** and **SPORTS_SCHEMA schema** exist  
- A **SPORTS_TABLE table** is created, containing cricket match data  

---

## 🏗️ Step 1: Using the Database and Schema
To begin, you need to **select the correct database and schema** to work within.  

---

## 🕒 Step 2: Adding a Timestamp Column  
To track updates, an `updated_at` column is added to the table. This ensures that every change has a timestamp for reference.  

---

## ✏️ Step 3: Updating Data with Timestamps  
We update **Virat Kohli's runs scored** for matches against **Australia and Pakistan**. A timestamp is recorded to track when the update was made.  

---

## 🔄 Step 4: Retrieving Historical Data (Time Travel)
Snowflake's **Time Travel** lets us retrieve past versions of a table.  

- **AT TIMESTAMP**: Fetches the table’s state at an exact point in time.  
- **BEFORE TIMESTAMP**: Retrieves the table’s state just before a given time.  

These queries help in auditing changes or recovering data.  

---

## 🚨 Step 5: Deleting Data and Recovering Using Time Travel
1️⃣ First, we check the data before making any changes.  
2️⃣ A row where the match outcome is "Loss" is **deleted at 3:30 PM**.  
3️⃣ We confirm the deletion by checking the table again.  
4️⃣ Using **Time Travel**, we clone the table as it was **before deletion (3:00 PM)**.  
5️⃣ Finally, we verify that the deleted row has been successfully recovered.  

---

## 🗑️ Step 6: Dropping & Restoring Table
1️⃣ We first check the total number of rows before dropping the table.  
2️⃣ The table is **dropped**, making it unavailable.  
3️⃣ Any attempt to query the table after dropping results in an **error**.  
4️⃣ Using **UNDROP TABLE**, we restore the table from Snowflake’s Time Travel history.  
5️⃣ A final check confirms that the table has been successfully restored.  

---

## 📌 Conclusion
- **Time Travel** is a powerful feature that allows recovering modified or deleted data.  
- **Cloning tables at a specific timestamp** helps preserve data integrity.  
- **UNDROP TABLE** enables restoring accidentally dropped tables.  
- Avoid using `DROP TABLE ... PURGE`, as it **permanently deletes the table**, making recovery impossible.  

🔹 **Happy Querying!** 🚀  
 
