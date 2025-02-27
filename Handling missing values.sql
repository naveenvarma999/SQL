-- HANDLING NULL VALUES

CREATE TABLE EMP1(ID INT PRIMARY KEY,FIRST_NAME VARCHAR(50), MIDDLE_NAME VARCHAR(50), LAST_NAME VARCHAR(50),AGE INT, DEPT VARCHAR(50),PHONE_NO CHAR(10), EMAIL VARCHAR(50),SALARY FLOAT);
INSERT INTO EMP1 VALUES(1,"ROHIT", NULL,"SHARMA", 23, 'DATA SCIENTIST', '8094783373', 'naveennallaP@gmail.com',100000),
                      (2,"SUBHAM", NULL,"GILL",24, NULL, NULL,'naveennalla12@gmail.com',500000),
                      (3,"VIRAT", "KOHLI",NULL, NULL, 'DATA ENGINEER','8093356437',  'naveennalla78@gmail.com',NULL),
					  (4,"SHREYAS", NULL,"IYER", 25, 'DATA MINING',NULL, NULL,200000),                    
                       (5,"RISHABH","PANT",NULL, 26, NULL,'8888999900','naveennalla12@gmail.com',600000),               
					    (6,NULL, NULL,"HARDIK", 29, 'DEVELOPER',NULL,'naveennalla123@gmail.com',700000),
                        (7,NULL, NULL,NULL, 21, 'SQL DEVELOPER','8094745373',  'naveennalla980@gmail.com',400000),                    
                        (8,"JASPRIT", NULL,"BUMRAH", NULL, 'ANALYST',NULL, NULL,70000),                    
                        (9,"SIRAJ", NULL,NULL, 24, 'CYBER SECURITY',NULL, 'naveennalla112@gmail.com',NULL),                    
                        (11,"KULDEEP", NULL,"YADAV", 19, NULL, '8094773373', 'naveennalla456@gmail.com',100000),                     
						(10,"KL", NULL,NULL, 28, 'DATA SCIENTIST', '7899877891','naveennalla865@gmail.com',500000);             
                        
SELECT * FROM EMP1;


-- IFNULL ---> Replaces the null values with some other values
SELECT *, IFNULL(DEPT, "NA") FROM EMP1;


-- COALESCE
SELECT ID,COALESCE(FIRST_NAME,MIDDLE_NAME,LAST_NAME, "NA") AS NAME ,PHONE_NO FROM EMP1;

