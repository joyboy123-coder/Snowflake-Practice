import pandas as pd  
df = pd.read_csv(r"C:\Users\yamin\Downloads\messy_orders.csv")  
df.to_csv(r"C:\Users\yamin\Downloads\extracted_orders.csv", index=False)  
