import pandas as pd 

df = pd.read_csv(r"C:\Users\yamin\Downloads\messy_orders.csv")

df.columns = df.columns.str.upper()

df['NAME'] = df['NAME'].str.title().str.strip().str.replace('_',' ')

df['ORDER_DATE'] = pd.to_datetime(df['ORDER_DATE'] , errors = 'coerce')

df['ORDER_DATE'] = df['ORDER_DATE'].fillna(pd.Timestamp('2022-02-24'))
df['ORDER_DATE'].unique()

df['PRICE'] = df['PRICE'].str.replace('$','').str.replace('USD','')
df['PRICE'] = df['PRICE'].str.replace(r'[!]','',regex=True)

df['PRICE'] = pd.to_numeric(df['PRICE'] , errors='coerce')
df['PRICE'] = df['PRICE'].fillna(df['PRICE'].mean())
df['PRICE'] = df['PRICE'].round(2)

df['QUANTITY'] = pd.to_numeric(df['QUANTITY'], errors = 'coerce')
df['QUANTITY'] = df['QUANTITY'].fillna(df['QUANTITY'].mean())

df.drop(columns='ADDRESS',inplace=True)
df['QUANTITY'] = df['QUANTITY'].astype(int)

df['EMAIL'] = df['EMAIL'].fillna('invalid_email@gmail.com')

df['EMAIL'].str.split('@').str[1].value_counts()


df['EMAIL'] = df['EMAIL'].apply(lambda x: x + '.com' if '.com' not in x else x)


df['EMAIL'] = df['EMAIL'].apply(lambda x: x.split('@')[0] + '@gmail.com' if '@' in x and x.split('@')[1] not in ['gmail.com', 'hotmail.com', 'yahoo.com'] else x)


df['EMAIL'] = df['EMAIL'].apply(lambda x: x.split('.')[0] + '@gmail.com' if '@' not in x else x)
df['EMAIL'] = df['EMAIL'].str.strip()
df['NAME'] = df['NAME'].str.strip()


df.to_csv('transform/cleaned_data.csv', index=False)
