----Check---
--What is a CHECK constraint?
--A CHECK constraint enforces a condition that must be true for every row in a table.
--If the condition fails → the insert/update is rejected 

----------------------------------------------------------------------

-> amol1=# create table users(id int, age int check (age>=18));
--CREATE TABLE

->amol1=# insert into users values(1,18);
--INSERT 0 1

->amol1=# insert into users values(1,19);
--INSERT 0 1

->amol1=# insert into users values(1,17);
--ERROR:  new row for relation "users" violates check constraint "users_age_check"
--DETAIL:  Failing row contains (1, 17).

amol1=# select * from users;
 id | age 
----+-----
  1 |  18
  1 |  19
(2 rows)

------------------------------------------------------------------
--2)2. Range constraint (BETWEEN)

-> amol1=# CREATE TABLE employees (id INT,salary DECIMAL(10,2) CHECK (salary BETWEEN 30000 AND 150000));
--CREATE TABLE   

------------------------------------------------------------------

--3)CHECK with IN (enum-like behavior) Status must be one of fixed values   
                                                 
->amol1=# CREATE TABLE orders (  id INT,status VARCHAR(20) CHECK (status IN ('PENDING', 'SHIPPED', 'DELIVERED', 'CANCELLED')));
--CREATE TABLE

-------------------------------------------------------------------

--4)String length constraint Username length must be at least 5
                                           
->amol1=# CREATE TABLE accounts (username VARCHAR(50)CHECK
(LENGTH(username) >= 5));

