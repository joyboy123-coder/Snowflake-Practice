# 🚀 AT vs BEFORE Time Travel in Snowflake  

## 📌 Overview  
This repository demonstrates **Time Travel in Snowflake** using `AT` and `BEFORE`.  

---

## 📖 Concept  
🔹 **AT** → Retrieves data **as it was** at the given timestamp (**includes updates**).  
🔹 **BEFORE** → Retrieves data **just before** the given timestamp (**excludes updates**).  

---

## 🎯 Example Scenario  

| PLAYER_NAME   | OPPONENT_TEAM  | RUNS_SCORED | ⏳ BEFORE 12:12 PM | ⏳ AT 12:17 PM |
|--------------|--------------|------------|------------------|--------------|
| Virat Kohli  | Australia    | 85         | ✅ Shows 85       | ❌ (Updated) |
| Virat Kohli  | Pakistan     | 90         | ✅ Shows 90       | ❌ (Updated) |
| Rohit Sharma | England      | 70         | ✅ Shows 70       | ✅ Shows 70  |

---

## ⏳ Time Travel Results  

| ⏱️ Query Type          | 📊 Data Retrieved        |
|----------------------|----------------------|
| BEFORE '12:17 PM'   | Shows **old values** (85, 90) |
| AT '12:17 PM'       | Shows **updated values** (100, 100) |

---

## ⚙️ How to Use in Snowflake  
🔹 Use `AT TIMESTAMP` to see **data at an exact point in time**.  
🔹 Use `BEFORE TIMESTAMP` to retrieve **data before any changes**.  

📜 **Files in this Folder:**  
📂 **`time_travel_examples.sql`** → Contains SQL queries for time travel ⏳  
📂 **`README.md`** → Explains the concept and example  

 
