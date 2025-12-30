create database sqlselect;
use sqlselect;
create table customers(name varchar(20), city varchar(30));
insert into customers (name, city) values 
                   ("Naveen","Colchester"),
                   ("shakar","Hyderabad"),
                   ("Rakesh","Nalgonda"),
                   ("Srikanth","Karmanghat"),
                   ("Ganesh","Hasthinapuram");
insert into customers (name) values ("Shiva");
select * from customers;

create table new_customers(name varchar(20), city varchar(25));
insert into new_customers (name, city) select * from customers;
select * from customers;


update customers set city= "london" where name = "rakesh";
select * from customers;

-- ALTER TABLE:
-- ADDING A COLUMN 
ALTER TABLE CUSTOMERS
ADD AGE INT;
SELECT * FROM CUSTOMERS;

-- Rename a column
ALTER TABLE CUSTOMERS
RENAME COLUMN NAME TO NAMES;
SELECT * FROM CUSTOMERS;

-- . Delete (drop) a column 
ALTER TABLE CUSTOMERS
DROP COLUMN AGE;
SELECT * FROM CUSTOMERS;

-- Add a constraint
ALTER TABLE CUSTOMERS
ADD CONSTRAINT CUS_ID PRIMARY KEY (id);

-- Drop a constraint
ALTER TABLE CUSTOMERS
DROP PRIMARY KEY;

