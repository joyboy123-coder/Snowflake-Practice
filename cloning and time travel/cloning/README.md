
## 📂 Code Folder  
This folder contains the SQL scripts necessary to create tables, insert data, and perform cloning in Snowflake.  

### 📜 Scripts Folder  
📌 Contains scripts that execute cloning operations and other essential processes.  
- `cloning_scripts.sql` → Script to clone the employees table.  

### 📜 Table Folder  
📌 Contains scripts to create and populate tables before cloning.  
- `employee_table.sql` → Creates the employees table and inserts sample data.  

### 📜 README (Inside `code/`)  
📌 Explains the purpose of each script and how to use them.  

## 📂 Examples Folder  
This folder provides **practical examples** to demonstrate the impact of cloning and how data remains unchanged after modifications to the original table.  

### 📜 Example File  
- `backup_example.sql` → Demonstrates what happens when the original `employees` table is updated after cloning. It includes queries to compare the cloned and original table.  

### 📜 README (Inside `examples/`)  
📌 Explains what this example demonstrates and the expected outcome.  

## 🚀 How to Use This Repository  
1️⃣ **Set up the `employees` table**  
   - Run `employee_table.sql` (inside `code/table/`) to create and populate the `employees` table.  

2️⃣ **Clone the `employees` table**  
   - Run `cloning_scripts.sql` (inside `code/scripts/`) to create a clone (`employees_cloned`).  

3️⃣ **Modify the original table and compare**  
   - Run `backup_example.sql` (inside `examples/`) to modify the `employees` table and compare it with its clone.  

## 🎯 Key Takeaways  
✅ **Cloning in Snowflake captures the table at a specific point in time.**  
✅ **Changes in the original table do NOT affect the cloned table.**  
✅ **Useful for backups, testing, and data auditing.**  

## 📝 Final Notes  
This repository provides a hands-on approach to understanding **cloning in Snowflake**. The examples and scripts included here will help users experiment with cloning and compare how data changes over time. 🚀  
