CREATE OR REPLACE DATABASE EMPLOYEES_DB;
CREATE OR REPLACE SCHEMA EMPLOYEES_SCHEMA;
USE DATABASE EMPLOYEES_DB;
USE SCHEMA EMPLOYEES_SCHEMA;

CREATE OR REPLACE TABLE EMPLOYEES (
    emp_id INT PRIMARY KEY,
    emp_name STRING,
    department STRING,
    salary INT
);

INSERT INTO EMPLOYEES (emp_id, emp_name, department, salary)
SELECT 
    seq4() + 1 AS emp_id,
    'Employee_' || (seq4() + 1) AS emp_name,
    CASE WHEN uniform(1, 4, random()) = 1 THEN 'HR'
         WHEN uniform(1, 4, random()) = 2 THEN 'IT'
         WHEN uniform(1, 4, random()) = 3 THEN 'Finance'
         ELSE 'Marketing' END AS department,
    uniform(30000, 100000, random()) AS salary
FROM TABLE(GENERATOR(ROWCOUNT => 500));

SELECT * FROM EMPLOYEES;
