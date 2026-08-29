Employees

+-------------+----------+--------+
| employee_id | name     | salary |
+-------------+----------+--------+
| 1           | Alice    | 45000  |
| 2           | Bob      | 70000  |
| 3           | Charlie  | 55000  |
| 4           | David    | 80000  |
| 5           | Emma     | 60000  |
+-------------+----------+--------+


Return name and salary, with the highest salary shown first.
Expected order:
David     80000
Bob       70000
Emma      60000
Charlie   55000
Alice     45000

SELECT NAME, SALARY 
FROM EMPLOYEES
ORDER BY SALARY DESC;


SELECT NAME, SALARY
FROM EMPLOYEES
ORDER BY SALARY ASC;

SELECT NAME, SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC
LIMIT 3;


SELECT NAME, SALARY
FROM EMPLOYEES
ORDER BY SALARY ASC
LIMTI 2;


SELECT NAME, SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC
LIMIT 2
OFFSET 1;



# Problem 6 — Day 3 Interview Challenge


Orders

+----------+-------------+------------+
| order_id | customer_id | order_date |
+----------+-------------+------------+
| 101      | 1           | 2026-08-01 |
| 102      | 2           | 2026-08-10 |
| 103      | 3           | 2026-08-05 |
| 104      | 4           | 2026-08-20 |
| 105      | 5           | 2026-08-15 |
+----------+-------------+------------+

Return the 2 most recent orders.

Expected:
104   2026-08-20
105   2026-08-15

SELECT ORDER_ID, ORDER_DATE
FROM ORDERS
ORDER BY ORDER_DATE DESC
LIMIT 2;




