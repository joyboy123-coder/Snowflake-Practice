# 📌 README - Uploading SPORTS_TABLE to Snowflake ⚡

## 📂 Overview
This project uploads the SPORTS_TABLE dataset to Snowflake using a Python script. 🚀

## 📁 Files in This Folder
- 🏆 SPORTS_TABLE.CSV → The dataset containing sports-related data.
- 📝 SPORTS_TABLE.PY → The Python script to upload the dataset to Snowflake.

## 🔄 How It Works
1. 📥 The script reads the SPORTS_TABLE.CSV file.
2. 🔗 It establishes a connection to Snowflake using the provided credentials.
3. ⬆️ It uploads the data into a Snowflake table named SPORTS_TABLE.
4. 🏗️ If the table does not exist, it is automatically created.
5. ✅ The script prints a success message if the upload is completed.

## 🛠️ Requirements
- 🐍 Python 3.x
- ❄️ Snowflake Connector (`snowflake-connector-python`)
- 🐼 Pandas

## ▶️ How to Run the Script
1. 📦 Install the required dependencies:
   ```
   pip install pandas snowflake-connector-python
   ```
2. ✏️ Update `SPORTS_TABLE.PY` with your Snowflake credentials.
3. ▶️ Run the script:
   ```
   python SPORTS_TABLE.PY
   ```
4. 🎯 The data will be uploaded to the SPORTS_TABLE in Snowflake.

## ⚠️ Notes
- 🚨 Ensure your Snowflake warehouse is active before running the script.
- 🔑 Replace placeholder credentials in `SPORTS_TABLE.PY` with actual Snowflake details.
- 🏗️ The script will auto-create the table if it does not exist.

🎉🚀 Enjoy your Snowflake-powered data journey!