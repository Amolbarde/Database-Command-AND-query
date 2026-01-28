--A FOREIGN KEY (FK) enforces a relationship between two tables.
--👉 The value in the child table must exist in the parent table.

--------------------------------------------------------------------

-> amol1=# create table department(dept_id int primary key, dept_name varchar(11));
--CREATE TABLE

->amol1=# create table emp(emp_id int primary key, emp_name varchar(50), dept_id int, FOREIGN KEY(dept_id) REFERENCES department(dept_id));
--CREATE TABLE

amol1=# select * from department;
 dept_id | dept_name 
---------+-----------
(0 rows)

amol1=# select * from emp;
 emp_id | emp_name | dept_id 
--------+----------+---------
(0 rows)

-> amol1=# insert into department (dept_id,dept_name) values (1, 'HR'),(2, 'IT'),(3, 'Finance');
--INSERT 0 3

amol1=# select * from department;

 dept_id | dept_name 
---------+-----------
       1 | HR
       2 | IT
       3 | Finance
(3 rows)

->amol1=# insert into emp(emp_id,emp_name,dept_id) values (101, 'ravi', 1),(102, 'om', 2),(103, 'ram', 3);
--INSERT 0 3

amol1=# select * from emp;

 emp_id | emp_name | dept_id 
--------+----------+---------
    101 | ravi     |       1
    102 | om       |       2
    103 | ram      |       3
(3 rows)


