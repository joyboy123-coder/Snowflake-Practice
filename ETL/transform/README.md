# ✨ Transform Process  

## 📌 Overview  
This step cleans and processes extracted data to make it ready for loading into Snowflake.
  
✅ Converted column names to uppercase**
✅ Formatted customer names properly**
✅ Fixed and standardized order dates**
✅ Removed special characters from prices & converted to numeric**
✅ Filled missing values with appropriate defaults**
✅ Dropped unnecessary columns (e.g., address)**
✅ Standardized email formats**  
✅ **Formatted data saved as `cleaned_data.csv`**  

## 📂 Files in this Folder  
📜 `clean_data.py` → Cleans the extracted data using pandas 🧹  
📜 `cleaned_data.csv` → The transformed, cleaned table 📊  

## ⚙️ How to Run Transformation  
```bash
python clean_data.py
