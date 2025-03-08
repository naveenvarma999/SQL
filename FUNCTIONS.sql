-- FUNCTIONS --> A group of statements which performs a specific task
-- 1. BASIC FUNCTIONS
	-- (a) AGGREGATE --> WHICH IS PERFORMED ON GROUPS --> MAX, MIN, AVG, SUM, COUNT
            SELECT SUM(SALARY), MAX(SALARY), MIN(SALARY) FROM EMPLOYEE;
    -- (b) SCALAR  --> WHICH IS PERFORMED ON EACH ROW
          -- (1) STRING FUNCTIONS --> UPPER(), LOWER(), LEFT(), RIGHT(), LENGTH()
                 SELECT LOWER(DEPARTMENT) AS DEPT FROM EMPLOYEE;  -- > CONVERTS INTO UPPER CASE
                 SELECT LEFT(DEPARTMENT,2) AS DEPT FROM EMPLOYEE; -- > EXTRACT THE NO.OF CHARACTERS
				 SELECT LENGTH(DEPARTMENT) AS DEPT FROM EMPLOYEE;  -- > COUNT THE NO.OF CHARACTERS

          -- (2) NUMERIC FUNCTIONS -- ABS(), ROUND(), FLOOR(), CEIL()
                 -- ABS() --> CONVERT ANY VALUE TO POSITIVE
                           SELECT ABS(-22);
                 -- ROUND() --> IT ROUND UP TO THE WHOLE NO OR A SPECIFIC values
                           SELECT ROUND(24.456,2);
                           SELECT ROUND(SALARY) FROM EMPLOYEE; 
				 -- FLOOR() --> ROUND UP TO THE LOWER VALUE 
						   SELECT FLOOR(24.556);
                 -- CEIL() --> ROUND UP TO THE HIGH VALUE 
						   SELECT CEIL(24.556);
                           
          -- (3) DATETIME FUNCTIONS 
                -- (a) NOW()  --> IT GIVES CURRENT DATE AND TIME
                    SELECT NOW();
				        -- CURDATE()
						      SELECT CURTIME();
				        -- CURDATE()
                              SELECT CURDATE();
				-- (b) DATE()
                     SELECT HIRE_DATE,YEAR(HIRE_DATE),MONTH(HIRE_DATE),MONTHNAME(HIREDATE),DAYNAME(HIRE_DATE) FROM EMPLOYEE;
                     
                -- (c) TIME()
                     SELECT DATE(NOW());
                     
		        -- (d) DATEDIFF  -- > DIFFERENCE BETWEEN TWO DAYS
                     SELECT DATEDIFF(HIREDATE,CURDATE()) FROM EMPLOYEE;
                     
				
-- (2). WINDOW FUNCTIONS  --> IT GIVES THE OUTPUT FOR EACH ROW  -- OVER() IS USED IN EVERY WINDOW FUNCTIONS
        -- (a) AGGREGATE --> OVER() -- 1. PARTITION BY  --> GROUP BY
                                          SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM EMPLOYEE GROUP BY DEPARTMENT;
                                          SELECT *,DEPARTMENT,COUNT(DEPARTMENT) OVER(PARTITION BY DEPARTMENT) FROM EMPLOYEE;
									-- 2. ORDER BY
                                          SELECT *, SUM(SALARY) OVER(ORDER BY SALARY) FROM EMPLOYEE;
               SELECT *, SUM(SALARY) OVER() FROM EMPLOYEE;
			   
        -- (B) RANKING  --> IT SKIKS RANKS AFTER SAME RANK (DOES NOT GET CONSECUTIVE NO)
                INSERT INTO EMPLOYEE VALUES(6, "NAVEEN", "IT", 80000);
               -- RANK()
                   SELECT *, RANK() OVER(ORDER BY SALARY DESC) FROM EMPLOYEE;
                   SELECT *, RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) FROM EMPLOYEE;
               -- DENSE RANK()
                        SELECT *, DENSE_RANK() OVER(ORDER BY SALARY DESC) FROM EMPLOYEE;
               --
               
        --
               

		