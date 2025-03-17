# Cloning in Snowflake  

This project demonstrates how to **create an Employees table**, insert **500 records**, and then **clone the table** using Snowflake’s cloning feature.  

---

## **1. Prerequisites**  
To run this, you need:
- A **Snowflake account**  
- Either **Snowflake Web UI** or **SnowSQL (Command Line Tool)**  
- The SQL scripts included in this repository  

---

## **2. Steps to Run**  

### **Step 1: Set Up the Original Table**  
1. Open **Snowflake Web UI** or **SnowSQL**.  
2. Run the `employee_table.sql` script to create the **Employees table** and insert data.  

### **Step 2: Clone the Table**  
1. Run the `cloning_scripts.sql` script to **clone the database, schema, and table**.  

### **Step 3: Verify the Cloned Table**  
After running the script, execute the following query in Snowflake:  
```sql
SELECT * FROM EMPLOYEES_CLONED;
```
This will return the cloned data.

---

## **3. How to Run the SQL Scripts**  

There are **two ways** to run the scripts:

### **Option 1: Using Snowflake Web UI**  
1. Log in to Snowflake.  
2. Open a new **Worksheet**.  
3. Copy & Paste the SQL scripts (`employee_table.sql` and `cloning_scripts.sql`).  
4. Execute them in order.  

### **Option 2: Using SnowSQL (Command Line Tool)**  
1. Open your terminal or command prompt.  
2. Log in to SnowSQL using:  
   ```sh
   snowsql -u <your_username> -a <your_account_url>
   ```
3. Run the scripts one by one:  
   ```sh
   !source path/to/employee_table.sql
   !source path/to/cloning_scripts.sql
   ```
4. Verify the cloned table using:  
   ```sql
   SELECT * FROM EMPLOYEES_CLONED;
   ```

---

## **4. Folder Structure**  

```
cloning_and_time_travel/
│── code/
│   ├── table/
│   │   ├── employee_table.sql    # Creates employees table & inserts 500 rows
│   ├── script/
│   │   ├── cloning_scripts.sql   # Clones the database, schema, and table
│   ├── README.md                 # Instructions to run scripts (Includes SnowSQL)


---

## **5. Expected Output**  
After running the cloning script, you should see the **EMPLOYEES_CLONED** table containing the same **500 employee records** as the original **EMPLOYEES** table.

Now you are ready to explore cloning  in Snowflake! 🚀

 
