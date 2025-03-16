import pandas as pd  

# Load the dataset again
df = pd.read_csv(r"C:\Users\yamin\Downloads\messy_orders.csv")  

# Save the full dataset to extracted_orders.csv (CHECK THE FILE AFTER THIS)
df.to_csv(r"C:\Users\yamin\Snowflake-Practice\ETL\extracted_orders.csv", index=False)  

# Print first 10 rows to check if extraction worked
print(df.head(10))
