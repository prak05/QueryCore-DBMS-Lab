SP2-0158: unknown SET option beginning "buffersize..."

Table PRODUCT created.

Name             Null? Type         
---------------- ----- ------------ 
PRODUCT_ID             VARCHAR2(5)  
NAME                   VARCHAR2(15) 
QUANTITY               NUMBER(38)   
DATE_OF_PURCHASE       DATE         

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


PRODU NAME              QUANTITY DATE_OF_
----- --------------- ---------- --------
P_123 Samsung TV              50 15-02-18
P_124 Apple iPhone           120 18-03-18
P_132 Philips Audio          100 13-05-18
P_143 Pigeon Grinder         170 19-10-18


Table PRODUCT altered.


1 row updated.


1 row updated.


1 row updated.


1 row updated.


NAME           
---------------
Pigeon Grinder


1 row updated.


1 row deleted.


Table PRODUCT dropped.


Table EMPLOYEE created.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


FNAME           MINIT LNAME                SSN        BDATE        ADDRESS                                  GENDER    SALARY SUPERVISOR_SSN  DNO
--------------- ----- -------------------- ---------- ------------ ---------------------------------------- ------ --------- --------------- ---
John            B     Smith                123456789  09-01-65     731 Fondren, Houston, TX                 M       30000.00 333445555         5
Franklin        T     Wong                 333445555  08-12-55     638 Voss, Houston, TX                    M       40000.00 888665555         5
Alicia          J     Zelaya               999887777  19-01-68     3321 Castle Spring, TX                   F       25000.00 987654321         4
Jennifer        S     Wallace              987654321  20-09-41     291 Berry Bellaire, TX                   F       43000.00 888665555         4
Ramesh          K     Narayan              666884444  15-09-62     975 Pine Oak, Humble, TX                 M       38000.00 333445555         5
Joyce           A     English              453453453  31-07-72     5631 Rice, Houston, TX                   F       25000.00 333445555         6
Ahmad           V     Jabbar               987987987  29-03-69     980 Dallas, Houston, TX                  M       25000.00 987654321         4
James           E     Borg                 888665555  10-11-37     450 Stone, Houston, TX                   M       55000.00                   1

8 rows selected. 


Table DEPARTMENT created.

Name           Null?    Type         
-------------- -------- ------------ 
DNAME          NOT NULL VARCHAR2(15) 
DNUMBER        NOT NULL NUMBER(38)   
MGR_SSN        NOT NULL CHAR(9)      
MGR_START_DATE          DATE         

1 row inserted.


1 row inserted.


1 row inserted.


DNAME              DNUMBER MGR_SSN   MGR_STAR
--------------- ---------- --------- --------
Research                 5 333445555 22-05-88
Administration           4 987654321 01-01-95
Headquarters             1 888665555 19-06-81


Table DEPT_LOCATIONS created.

Name      Null?    Type         
--------- -------- ------------ 
DNUMBER   NOT NULL NUMBER(38)   
DLOCATION NOT NULL VARCHAR2(15) 

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


   DNUMBER DLOCATION      
---------- ---------------
         5 Houston        
         4 Stafford       
         5 Bellaire       
         1 Sugarland      
         5 Houston        


Table PROJECT created.

Name      Null?    Type         
--------- -------- ------------ 
PNAME     NOT NULL VARCHAR2(15) 
PNUMBER   NOT NULL NUMBER(38)   
PLOCATION          VARCHAR2(15) 
DNUM      NOT NULL NUMBER(38)   

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


PNAME              PNUMBER PLOCATION             DNUM
--------------- ---------- --------------- ----------
ProductX                 1 Bellaire                 5
ProductY                 2 Sugarland                5
ProductZ                 3 Houston                  5
Computerization         10 Stafford                 4
Reorganization          20 Houston                  1
Newbenefits             30 Stafford                 4

6 rows selected. 


Table WORKS_ON created.

Name  Null?    Type        
----- -------- ----------- 
ESSN  NOT NULL CHAR(9)     
PNO   NOT NULL NUMBER(38)  
HOURS NOT NULL NUMBER(3,1) 

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


ESSN             PNO      HOURS
--------- ---------- ----------
123456789          1       32.5
123456789          2        7.5
666884444          3         40
453453453          1         20
453453453          2         20
333445555          2         10
333445555          3         10
333445555         10         10
333445555         20         10
999887777         30         30
999887777         10         10
987987987         10         35
987987987         30          5
987654321         30         20
987654321         20         15
888665555         20          0

16 rows selected. 


Table DEPENDENT created.

Name           Null?    Type         
-------------- -------- ------------ 
ESSN           NOT NULL CHAR(9)      
DEPENDENT_NAME NOT NULL VARCHAR2(30) 
GENDER                  CHAR(1)      
BDATE          NOT NULL DATE         
RELATIONSHIP            VARCHAR2(15) 

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


ESSN      DEPENDENT_NAME                 GENDER BDATE        RELATIONSHIP   
--------- ------------------------------ ------ ------------ ---------------
333445555 Alice                          F      05-04-86     Daughter       
333445555 Theodore                       M      25-10-83     Son            
333445555 Joy                            F      03-05-58     Spouse         
987654321 Abner                          M      28-02-42     Spouse         
123456789 Michael                        M      01-01-88     Son            
123456789 Alice                          F      30-12-88     Daughter       
123456789 Elizabeth                      F      05-05-67     Spouse         

7 rows selected. 


Commit complete.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Grant succeeded.


Commit complete.


TOTAL_SALARY_DEPT_5
-------------------
             108000


TOTAL_EMPLOYEES
---------------
              8


EMPLOYEES_IN_DEPT_4
-------------------
                  3


TOTAL_PROJECTS
--------------
             6


LOWEST_SALARY_DEPT_5
--------------------
               30000


LOWEST_SALARY HIGHEST_SALARY
------------- --------------
        25000          55000


MINIMUM_HOURS MAXIMUM_HOURS
------------- -------------
          7.5            20


AVERAGE_HOURS_PROJECT_10
------------------------
              18.3333333


DNO NUMBER_OF_EMPLOYEES AVERAGE_SALARY
--- ------------------- --------------
  5                   3          36000
  4                   3          31000
  6                   1          25000
  1                   1          55000


FNAME           LNAME               
--------------- --------------------
Alicia          Zelaya              
Ahmad           Jabbar              
Joyce           English             
John            Smith               
Ramesh          Narayan             
Franklin        Wong                
Jennifer        Wallace             
James           Borg                

8 rows selected. 


      DNUM NUMBER_OF_PROJECTS
---------- ------------------
         5                  3
         4                  2
         1                  1


       PNO NUMBER_OF_EMPLOYEES
---------- -------------------
         2                   3
        10                   3
        20                   3
        30                   3


PLOCATIO NUMBER_OF_PROJECTS
-------- ------------------
Stafford                  2


SSN        FNAME          
---------- ---------------
333445555  Franklin       
999887777  Alicia         
987987987  Ahmad          


FNAME           LNAME               
--------------- --------------------
Alicia          Zelaya              
Joyce           English             
Ahmad           Jabbar              


FNAME           LNAME               
--------------- --------------------
Jennifer        Wallace             
James           Borg                


SSN        FNAME          
---------- ---------------
333445555  Franklin       
888665555  James          
987654321  Jennifer       


SSN        FNAME          
---------- ---------------
999887777  Alicia         
987987987  Ahmad          
123456789  John           
453453453  Joyce          
666884444  Ramesh         


PNAME          
---------------
Computerization
Newbenefits


FNAME           LNAME               
--------------- --------------------
John            Smith               
Franklin        Wong                
Ramesh          Narayan             


FNAME           LNAME               
--------------- --------------------
Franklin        Wong                
John            Smith               


FNAME           LNAME               
--------------- --------------------
Franklin        Wong                


FNAME           LNAME               
--------------- --------------------
Franklin        Wong                
James           Borg                
Jennifer        Wallace             


FNAME           LNAME               
--------------- --------------------
Franklin        Wong                


FNAME           LNAME               
--------------- --------------------
John            Smith               
John            Smith               
Franklin        Wong                
Franklin        Wong                
Ramesh          Narayan             
Ramesh          Narayan             

6 rows selected. 


FNAME           LNAME                   SALARY
--------------- -------------------- ---------
Franklin        Wong                  40000.00
Jennifer        Wallace               43000.00
James           Borg                  55000.00


DEPENDENT_NAME                 RELATIONSHIP   
------------------------------ ---------------
Abner                          Spouse         


FNAME           LNAME               
--------------- --------------------
John            Smith               
Franklin        Wong                
Ramesh          Narayan             


Table STUDENT created.

Name    Null?    Type          
------- -------- ------------- 
NAME             VARCHAR2(50)  
ROLLNO  NOT NULL NUMBER(38)    
ADDRESS          VARCHAR2(100) 

1 row inserted.


1 row inserted.


NAME                                                   ROLLNO ADDRESS                                 
-------------------------------------------------- ---------- ----------------------------------------
Arun                                                      101 Kochi                                   
Meera                                                     102 Thrissur                                


Savepoint created.


2 rows deleted.

no rows selected

Rollback complete.


NAME                                                   ROLLNO ADDRESS                                 
-------------------------------------------------- ---------- ----------------------------------------
Arun                                                      101 Kochi                                   
Meera                                                     102 Thrissur                                


1 row inserted.


1 row inserted.


1 row inserted.


NAME                                                   ROLLNO ADDRESS                                 
-------------------------------------------------- ---------- ----------------------------------------
Arun                                                      101 Kochi                                   
Meera                                                     102 Thrissur                                
Jayan                                                     103 Alleppey                                
Sneha                                                     104 Kannur                                  
Rahul                                                     105 Kollam                                  


Savepoint created.


5 rows deleted.

no rows selected

Rollback complete.


NAME                                                   ROLLNO ADDRESS                                 
-------------------------------------------------- ---------- ----------------------------------------
Arun                                                      101 Kochi                                   
Meera                                                     102 Thrissur                                
Jayan                                                     103 Alleppey                                
Sneha                                                     104 Kannur                                  
Rahul                                                     105 Kollam                                  


1 row inserted.


1 row inserted.


Commit complete.


NAME                                                   ROLLNO ADDRESS                                 
-------------------------------------------------- ---------- ----------------------------------------
Arun                                                      101 Kochi                                   
Meera                                                     102 Thrissur                                
Jayan                                                     103 Alleppey                                
Sneha                                                     104 Kannur                                  
Rahul                                                     105 Kollam                                  
Anju                                                      106 Ernakulam                               
Vishnu                                                    107 Palakkad                                

7 rows selected. 


View EMP_RESEARCH created.


FNAME              SALARY
--------------- ---------
John             30000.00
Franklin         40000.00
Ramesh           38000.00


View EMP_COMPUTERIZATION created.


FNAME          
---------------
Franklin
Alicia
Ahmad


View EMP_WITH_SUPERVISOR created.


FNAME              SALARY ADDRESS                                 
--------------- --------- ----------------------------------------
Franklin         40000.00 638 Voss, Houston, TX                   
James            55000.00 450 Stone, Houston, TX                  
Jennifer         43000.00 291 Berry Bellaire, TX                  


View EMP_WITH_SON created.


FNAME              SALARY
--------------- ---------
Franklin         40000.00
John             30000.00


View EMP_RESEARCH dropped.


View EMP_COMPUTERIZATION dropped.


View EMP_WITH_SUPERVISOR dropped.


View EMP_WITH_SON dropped.


Table EMPLOYEE_FUNCTIONS created.

Name      Null?    Type         
--------- -------- ------------ 
EMPNO     NOT NULL NUMBER(38)   
FIRSTNAME          VARCHAR2(30) 
LASTNAME           VARCHAR2(30) 
HIREDATE           DATE         
SALARY             NUMBER(10,2) 

1 row inserted.


1 row inserted.


1 row inserted.


     EMPNO FIRSTNAME                      LASTNAME                       HIREDATE    SALARY
---------- ------------------------------ ------------------------------ -------- ---------
         1 John                           Doe                            15-05-20  50000.00
         2 Jane                           Smith                          20-08-21  60000.00
         3 Peter                          Jones                          10-01-22  45000.00


     EMPNO FIRSTNAME_LOWER               
---------- ------------------------------
         1 john                          
         2 jane                          
         3 peter                         


FIRSTNAME_INITCAP             
------------------------------
John
Jane
Peter


FIRSTNAME                      NAME_LENGTH
------------------------------ -----------
John                                     4
Jane                                     4
Peter                                    5


FULL_NAME                                                   
------------------------------------------------------------
JohnDoe
JaneSmith
PeterJones


     EMPNO FORMATTED_S
---------- -----------
         1 $  50000.00
         2 $  60000.00
         3 $  45000.00


FIRSTNAME                      PADDED_NAME         
------------------------------ --------------------
John                           John****************
Jane                           Jane****************
Peter                          Peter***************


FIRSTNAME                      FIR
------------------------------ ---
John                           Joh
Jane                           Jan
Peter                          Pet


SYSDATE 
--------
28-08-25


     EMPNO HIREDATE LAST_DAY
---------- -------- --------
         1 15-05-20 31-05-20
         2 20-08-21 31-08-21
         3 10-01-22 31-01-22


     EMPNO MONTHS_WORKED
---------- -------------
         1     63.424394
         2    48.2631037
         3    43.5856844


FIRSTNAME                      NO_OF_WEEKS_WORKED
------------------------------ ------------------
John                                           16
Jane                                           12
Peter                                          11

