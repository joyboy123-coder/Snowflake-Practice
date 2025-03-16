from snowflake.snowpark import Session 

import pandas as pd 

connection_parameters = {
    "user": "joyboy",
    "account": "sqohvej-tt08915",
    "password": "VamsiDiya12345",
    "warehouse": "COMPUTE_WH",
    "database": "PEOPLE_DB",
    "schema": "PEOPLE_SCHEMA"
}


session = Session.builder.configs(connection_parameters).create()

df = pd.read_csv(r"C:\Users\yamin\Snowflake-Practice\ETL\transform\cleaned_data.csv")

df.columns = df.columns.str.upper()

session.write_pandas(df,'PEOPLE',auto_create_table=True)

print("✅ Snowflake connection successful!")
