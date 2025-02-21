create database library;
use library;
create table books (book_id int primary key auto_increment, 
   title varchar(255) not null,
   author varchar(100) not null,
   published_year int,
   price decimal(10,2) check(price>0),
   created_at timestamp default CURRENT_TIMESTAMP);
   
   # Alter
   
   alter table books add column stock_quantity int default 0;
  alter table books modify column author varchar(150) not null;   
-- Step 1: Drop the existing CHECK constraint
ALTER TABLE books DROP CHECK books_chk_1;

-- Step 2: Rename the column
ALTER TABLE books RENAME COLUMN price TO book_price;

-- Step 3: Re-add the CHECK constraint
ALTER TABLE books ADD CHECK (book_price > 0);
