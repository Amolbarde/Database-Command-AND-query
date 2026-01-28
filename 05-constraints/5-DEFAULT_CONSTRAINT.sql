--default Constraint

-- A DEFAULT value is automatically inserted when no value is provided for a column.
-- If you explicitly insert NULL, DEFAULT is not used (unless combined with NOT NULL).

--------------------------------------------------------------------------------------

->amol1=# create table orders1 (id int, status varchar(20) DEFAULT 'PENDING');
--CREATE TABLE

amol1=# insert into orders1 values(1);
--INSERT 0 1
amol1=# insert into orders1 values(2);
--INSERT 0 1

amol1=# select * from orders1;

 id | status  
----+---------
  1 | PENDING
  2 | PENDING
  
---------------------------------------------------------------------------------

--2) whith number

->amol1=# CREATE TABLE cart (product_id INT, quantity INT DEFAULT 1);
--CREATE TABLE

--------------------------------------------------------------------------------

--3) whit date

->amol1=# create table logs ( id INT, created_date DATE DEFAULT CURRENT_DATE);
--CREATE TABLE

->amol1=# insert into logs values(1);
--INSERT 0 1
->amol1=# insert into logs values(2);
--INSERT 0 1
->amol1=# insert into logs values(3);
--INSERT 0 1

amol1=# select * from logs;
 id | created_date 
----+--------------
  1 | 2026-01-28
  2 | 2026-01-28
  3 | 2026-01-28
(3 rows)



