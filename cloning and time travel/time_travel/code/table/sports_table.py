import pandas as pd
import snowflake.connector
from snowflake.connector.pandas_tools import write_pandas

# Read CSV file (Make sure it's in the same folder)
df = pd.read_csv("sports_table.csv")

# Connect to Snowflake
conn = snowflake.connector.connect(
    user="your_user",
    password="your_password",
    account="your_account",
    warehouse="your_warehouse",
    database="your_database",
    schema="your_schema"
)

# Write data to Snowflake (Auto-create table)
success, _, _ = write_pandas(conn, df, "SPORTS_TABLE", auto_create_table=True)  

if success:
    print("✅ Table created (if not exists) & data inserted into Snowflake!")
else:
    print("❌ Failed to insert data.")

# Close connection
conn.close()
