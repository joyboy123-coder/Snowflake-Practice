 
CREATE OR REPLACE DATABASE EMPLOYEES_CLONED_DB CLONE EMPLOYEES_DB;


CREATE OR REPLACE SCHEMA EMPLOYEES_CLONED_SCHEMA CLONE EMPLOYEES_SCHEMA;


CREATE OR REPLACE TABLE EMPLOYEES_CLONED CLONE EMPLOYEES;


USE DATABASE EMPLOYEES_CLONED_DB;
USE SCHEMA EMPLOYEES_CLONED_SCHEMA;

SELECT * FROM EMPLOYEES_CLONED;