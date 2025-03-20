
-- Create Database and use it
CREATE OR REPLACE DATABASE SALES_DB;
USE DATABASE SALES_DB;

-- Create Schema and use it 
CREATE OR REPLACE SCHEMA SALES_SCHEMA;
USE SCHEMA SALES_SCHEMA;


-- Create Table
CREATE OR REPLACE TABLE SALES (
    id INT AUTOINCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    price DECIMAL(10,2),
    total_amount DECIMAL(10,2)
);

-- Insert 20K Random Rows
INSERT INTO SALES (customer_id, product_id, sale_date, quantity, price, total_amount)
SELECT 
    UNIFORM(1, 1000, RANDOM()) AS customer_id,
    UNIFORM(1, 500, RANDOM()) AS product_id,
    DATEADD(DAY, UNIFORM(-365, 0, RANDOM()), CURRENT_DATE) AS sale_date,
    UNIFORM(1, 10, RANDOM()) AS quantity,
    ROUND(UNIFORM(5, 500, RANDOM()), 2) AS price,
    quantity * price AS total_amount
FROM TABLE(GENERATOR(ROWCOUNT => 20000));


SELECT * FROM SALES;
