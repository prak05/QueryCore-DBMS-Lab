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

Table EMPLOYEE_FUNCTIONS created.

Name      Null?    Type         
--------- -------- ------------ 
EMPNO     NOT NULL NUMBER(38)   
FIRSTNAME          VARCHAR2(30) 
LASTNAME           VARCHAR2(30) 
HIREDATE           DATE         
SALARY             NUMBER(10,2) 

-- Sample Data Insertion for Single Row Functions
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) 
VALUES (1, 'John', 'Doe', TO_DATE('2020-05-15', 'YYYY-MM-DD'), 50000);
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) 
VALUES (2, 'Jane', 'Smith', TO_DATE('2021-08-20', 'YYYY-MM-DD'), 60000);
INSERT INTO Employee_Functions (empno, firstname, lastname, hiredate, salary) 
VALUES (3, 'Peter', 'Jones', TO_DATE('2022-01-10', 'YYYY-MM-DD'), 45000);

1 row inserted.
1 row inserted.
1 row inserted.

SELECT empno, firstname, lastname, hiredate, salary FROM Employee_Functions;

EMPNO FIRSTNAME  LASTNAME                       HIREDATE     SALARY
----- ---------- ------------------------------ -------- ----------
    1 John       Doe                            15-05-20      50000
    2 Jane       Smith                          20-08-21      60000
    3 Peter      Jones                          10-01-22      45000

-- Character Functions
SELECT empno, LOWER(firstname) AS firstname_lower FROM Employee_Functions;

     EMPNO FIRSTNAME_LOWER               
---------- ------------------------------
         1 john                          
         2 jane                          
         3 peter                         

SELECT INITCAP(firstname) AS firstname_initcap FROM Employee_Functions;

FIRSTNAME_INITCAP             
------------------------------
John
Jane
Peter

SELECT firstname, LENGTH(firstname) AS name_length FROM Employee_Functions;

FIRSTNAME                      NAME_LENGTH
------------------------------ -----------
John                                     4
Jane                                     4
Peter                                    5

SELECT CONCAT(firstname, lastname) AS full_name FROM Employee_Functions;

FULL_NAME                                                   
------------------------------------------------------------
JohnDoe
JaneSmith
PeterJones

SELECT empno, '$' || TO_CHAR(salary, '999999.00') AS formatted_salary 
FROM Employee_Functions;

     EMPNO FORMATTED_S
---------- -----------
         1 $  50000.00
         2 $  60000.00
         3 $  45000.00

-- A more logical use of RPAD would be to pad a string with a character
SELECT firstname, RPAD(firstname, 20, '*') AS padded_name 
FROM Employee_Functions;

FIRSTNAME                      PADDED_NAME         
------------------------------ --------------------
John                           John****************
Jane                           Jane****************
Peter                          Peter***************

SELECT firstname, SUBSTR(firstname, 1, 3) AS first_three_chars 
FROM Employee_Functions;

FIRSTNAME                      FIR
------------------------------ ---
John                           Joh
Jane                           Jan
Peter                          Pet

-- Date and Numeric Functions
SELECT SYSDATE FROM DUAL;

SYSDATE 
--------
28-08-25

SELECT empno, hiredate, LAST_DAY(hiredate) AS last_day_of_month 
FROM Employee_Functions;

     EMPNO HIREDATE LAST_DAY
---------- -------- --------
         1 15-05-20 31-05-20
         2 20-08-21 31-08-21
         3 10-01-22 31-01-22

SELECT empno, MONTHS_BETWEEN(SYSDATE, hiredate) AS months_worked
FROM Employee_Functions;

     EMPNO MONTHS_WORKED
---------- -------------
         1    63.4294971
         2    48.2682068
         3    43.5907874

SELECT firstname, ROUND(MONTHS_BETWEEN(SYSDATE, hiredate) / 4) 
AS no_of_weeks_worked FROM Employee_Functions;

FIRSTNAME                      NO_OF_WEEKS_WORKED
------------------------------ ------------------
John                                           16
Jane                                           12
Peter                                          11

-- Step 1: Switch to the correct pluggable database
ALTER SESSION SET CONTAINER = XEPDB1;

Session altered.

-- Step 2: Create the user
CREATE USER sysadmin IDENTIFIED BY YourSecurePassword;

User SYSADMIN created.

-- Step 3: Grant the DBA privilege
GRANT dba TO sysadmin;

Grant succeeded.

-- Step 4: Revoke the DBA privilege
REVOKE dba FROM sysadmin;

Revoke succeeded.

-- Step 5: Drop the user for cleanup
DROP USER sysadmin;

User SYSADMIN dropped.