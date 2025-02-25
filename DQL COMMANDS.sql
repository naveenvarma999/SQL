-- DQL COMMAND

CREATE DATABASE NAVEEN_VARMA;
USE NAVEEN_VARMA;
CREATE TABLE EMP(ID INT PRIMARY KEY, AGE INT, DEPT VARCHAR(50), EMAIL VARCHAR(50),SALARY FLOAT);
INSERT INTO EMP VALUES(1, 23, 'DATA SCIENTIST', 'naveennallaP@gmail.com',100000),
                      (2, 24, 'DATA ANALYST', 'naveennalla12@gmail.com',500000),
                      (3, 22, 'DATA ENGINEER', 'naveennalla78@gmail.com',400000),
					  (4, 25, 'DATA MINING', 'naveennalla8@gmail.com',200000),                    
                       (5, 26, 'DATA SCIENTIST', 'naveennalla12@gmail.com',600000),               
					    (6, 29, 'DEVELOPER', 'naveennalla123@gmail.com',700000),
                        (7, 21, 'SQL DEVELOPER', 'naveennalla980@gmail.com',400000),                    
                        (8, 23, 'ANALYST', 'naveennalla87@gmail.com',70000),                    
                        (9, 24, 'CYBER SECURITY', 'naveennalla112@gmail.com',50000),                    
                        (11, 19, 'DATA SCIENTIST', 'naveennalla456@gmail.com',100000),                     
						(10, 28, 'DATA SCIENTIST', 'naveennalla865@gmail.com',500000);             
                        
                        
-- PROJECTION - Process of rectreiving only the specific columns

SELECT * FROM EMP

-- SPECIFIC COLUMN 
SELECT ID, DEPT FROM EMP;

-- DISTINCT - It gives unique values AND It works only on one single column and worked with the first specified cloumn
SELECT DISTINCT DEPT FROM EMP;

-- Expression -- calculations which gives a results 
CREATE TABLE DRINKS(NAME VARCHAR(10), RATE FLOAT);
INSERT INTO DRINKS VALUES('TEA' , 10),
						('COFFEE' , 20),
						('COKE' , 20),
						('PEPSI' , 50);
                        
SELECT *, RATE*0.05 AS GST, RATE+(RATE*(0.05)) AS TOTAL_PRICE FROM DRINKS;
SELECT *,SALARY*0.05 AS HIKE , SALARY+(SALARY*(0.05)) AS TOTAL_SALARY FROM EMP;


-- SELECTION  - The process of retreiving rows and columns
SELECT * FROM EMP WHERE DEPT='DATA SCIENTIST';
SELECT AGE,EMAIL FROM EMP WHERE SALARY = 100000 AND DEPT ='DATA SCIENTIST';