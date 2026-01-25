use naveen;
create table employees(id int primary key, salary int, name varchar(20));
insert into employees values(1, 10000, "Naveen"), 
                            (2, 20000, "Var"), 
                            (3, 3000, "Nallapu"),
                            (4, 400000, "ven");
insert into employees values(5, 10000, "Naveen"); 

select * from employees;

DELIMITER $$
create function getNthHigestSalary(n int) returns int
DETERMINISTIC
begin
DeclARE off int;
set off = n-1;
return (select distinct(salary) from employees order by salary desc
limit 1 offset off);
end $$

DELIMITER ;

SELECT getNthHigestSalary(3);