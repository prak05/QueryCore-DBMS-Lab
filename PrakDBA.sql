DROP TABLE Employee_Functions;

---
-- Experiment 11: Single Row Functions
---
-- Create a new employee table for this experiment
CREATE TABLE Employee_Functions (
    empno INT PRIMARY KEY,
    firstname VARCHAR(30),
    lastname VARCHAR(30),
    hiredate DATE,
    salary DECIMAL(10,2)
);
DESC Employee_Functions;

-- Sample Data Insertion for Single Row Functions
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) VALUES (1, 'John', 'Doe', TO_DATE('2020-05-15', 'YYYY-MM-DD'), 50000);
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) VALUES (2, 'Jane', 'Smith', TO_DATE('2021-08-20', 'YYYY-MM-DD'), 60000);
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) VALUES (3, 'Peter', 'Jones', TO_DATE('2022-01-10', 'YYYY-MM-DD'), 45000);
SELECT empno, firstname, lastname, hiredate, salary FROM Employee_Functions;

-- Character Functions
SELECT empno, LOWER(firstname) AS firstname_lower FROM Employee_Functions;
SELECT INITCAP(firstname) AS firstname_initcap FROM Employee_Functions;
SELECT firstname, LENGTH(firstname) AS name_length FROM Employee_Functions;
SELECT CONCAT(firstname, lastname) AS full_name FROM Employee_Functions;

-- To display a single '$' symbol, we can concatenate the string literal with the formatted number.
-- Note: LPAD is meant for padding, which is why it repeats the character.
SELECT empno, '$' || TO_CHAR(salary, '999999.00') AS formatted_salary FROM Employee_Functions;

-- A more logical use of RPAD would be to pad a string with a character
SELECT firstname, RPAD(firstname, 20, '*') AS padded_name FROM Employee_Functions;

SELECT firstname, SUBSTR(firstname, 1, 3) AS first_three_chars FROM Employee_Functions;

-- Date and Numeric Functions
SELECT SYSDATE FROM DUAL;
SELECT empno, hiredate, LAST_DAY(hiredate) AS last_day_of_month FROM Employee_Functions;
SELECT empno, MONTHS_BETWEEN(SYSDATE, hiredate) AS months_worked FROM Employee_Functions;
SELECT firstname, ROUND(MONTHS_BETWEEN(SYSDATE, hiredate) / 4) AS no_of_weeks_worked FROM Employee_Functions;

-- Step 1: Switch to the correct pluggable database
ALTER SESSION SET CONTAINER = XEPDB1;

-- Step 2: Create the user
CREATE USER sysadmin IDENTIFIED BY YourSecurePassword;

-- Step 3: Grant the DBA privilege
GRANT dba TO sysadmin;

-- Step 4: Revoke the DBA privilege
REVOKE dba FROM sysadmin;

-- Step 5: Drop the user for cleanup
DROP USER sysadmin;