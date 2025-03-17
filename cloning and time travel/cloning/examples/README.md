📁 Examples - Cloning in Snowflake
📌 Overview
This folder contains examples demonstrating how cloning works in Snowflake. It shows what happens when changes are made to the original table after cloning.

📜 What This Example Demonstrates
1️⃣ The employees table is created and populated with sample data.
2️⃣ A cloned table (employees_cloned) is created.
3️⃣ The original employees table is modified (e.g., increasing IT department salaries).
4️⃣ We compare the cloned table (employees_cloned) with the updated employees table.

📊 Expected Outcome
🔹 Before Updating the employees Table
Both employees and employees_cloned have identical data:

emp_id	emp_name	department	salary
1	Employee_1	IT	50,000
2	Employee_2	HR	45,000
3	Employee_3	Finance	55,000
4	Employee_4	IT	60,000
🔹 After Updating the employees Table
The IT department salaries have increased by 10% in the employees table, but the cloned table remains unchanged.

emp_id	emp_name	department	salary
1	Employee_1	IT	55,000
2	Employee_2	HR	45,000
3	Employee_3	Finance	55,000
4	Employee_4	IT	66,000
🔍 Comparing the Cloned & Updated Table
Only changed records appear in the difference:

emp_id	emp_name	salary
1	Employee_1	55,000
4	Employee_4	66,000
🚀 How to Use This Example
1️⃣ Run employee_table.sql (from code/) to create and populate the table.
2️⃣ Run cloning_scripts.sql (from code/) to create a clone.
3️⃣ Run backup_example.sql (from examples/) to update and compare tables.

🎯 Key Takeaways
✅ Cloning in Snowflake captures the table at a point in time.
✅ Changes in the original table do NOT affect the cloned table.
✅ Useful for backups, audits, and debugging historical data.

