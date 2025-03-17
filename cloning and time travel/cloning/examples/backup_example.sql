 
-- Step 1: Update the Original Employees Table

UPDATE employees_cloned 
SET salary = salary * 1.10 
WHERE department = 'IT';

-- Step 2: Compare the Cloned Table with the Updated Table

SELECT * FROM employees_cloned;
SELECT * FROM employees;

-- Step 3: Verify Differences Between Cloned and Updated Table

SELECT emp_id, emp_name, salary FROM employees_cloned
EXCEPT
SELECT emp_id, emp_name, salary FROM employees;
