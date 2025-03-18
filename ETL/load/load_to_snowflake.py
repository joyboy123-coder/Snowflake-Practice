import os
from snowflake.snowpark import Session
import pandas as pd
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Snowflake connection parameters
connection_parameters = {
    "user": os.getenv("SNOWFLAKE_USER"),
    "account": os.getenv("SNOWFLAKE_ACCOUNT"),
    "password": os.getenv("SNOWFLAKE_PASSWORD"),
    "warehouse": os.getenv("SNOWFLAKE_WAREHOUSE"),
    "database": os.getenv("SNOWFLAKE_DATABASE"),
    "schema": os.getenv("SNOWFLAKE_SCHEMA")
}

# Create Snowflake session
session = Session.builder.configs(connection_parameters).create()

# Read cleaned data
df = pd.read_csv("ETL/transform/cleaned_data.csv")
df.columns = df.columns.str.upper()

# Load data into Snowflake
session.write_pandas(df, 'PEOPLE', auto_create_table=True)

print("✅ Snowflake connection successful!")
