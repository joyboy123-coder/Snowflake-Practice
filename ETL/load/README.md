# 🚀 Load Process

## 📌 Overview  
This step loads the **transformed and cleaned data** into Snowflake for further analysis and reporting.  

### ✅ Loading Steps  
✔️ Connects to **Snowflake** using credentials 🔑  
✔️ Creates or replaces the target table 📂  
✔️ Loads **cleaned data** into Snowflake  
✔️ Commits the transaction and closes the connection  

---

## 📂 Files in this Folder  
📜 **`load_to_snowflake.py`** → Script to load cleaned data into Snowflake 🏗️  

---

## ⚙️ How to Run the Load Script  
Run the following command to execute the script:  
```bash
python load_to_snowflake.py 
