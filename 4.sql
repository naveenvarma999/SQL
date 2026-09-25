create database datascience;
create table employees (id int auto_increment primary key, name varchar(50), age int not null, salary decimal(10,4) not null);
alter table employees add column email varchar(100) unique;
rename table employees to worker;
alter table worker drop column age;
