# 🚀 ETL Process  

## 📌 Overview  
This project follows a structured **ETL (Extract, Transform, Load)** workflow to process and load data into Snowflake.  

---

## 🏗️ ETL Stages  

### 1️⃣ Extract  
📜 Reads raw data from CSV files  
📜 Stores extracted data for processing  

**Files in `extract/` Folder:**  
📂 `extract_from_csv.py` → Extracts data from messy orders file  
📂 `extracted_orders.csv` → Raw extracted data  

---

### 2️⃣ Transform  
🧹 Cleans and formats data using **pandas**  
🧹 Fixes missing values, corrects formatting issues  

**Transformations Applied:**  
✔️ Converted column names to **uppercase**  
✔️ Formatted **customer names** properly  
✔️ Fixed and standardized **order dates**  
✔️ Removed special characters from **prices** & converted to numeric  
✔️ Filled missing values with **appropriate defaults**  
✔️ Dropped unnecessary columns _(e.g., address)_  
✔️ Standardized **email formats**  

**Files in `transform/` Folder:**  
📂 `clean_data.py` → Cleans the extracted data  
📂 `cleaned_data.csv` → Transformed, cleaned data  

---

### 3️⃣ Load  
🏗️ Loads the cleaned data into **Snowflake**  
🏗️ Creates or replaces the target table  

**Files in `load/` Folder:**  
📂 `load_to_snowflake.py` → Loads data into Snowflake  

**How to Run the Load Script:**  
```bash
python load_to_snowflake.py
