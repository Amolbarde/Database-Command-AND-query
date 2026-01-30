----Purpose----
--Uniquely identifies each row
--No NULL values
--No duplicate values

-----Example-----

--college=# 
create table student (id serial primary key,name varchar(100));
CREATE TABLE

select * from student;
-- id | name 
----+------
(0 rows)

insert into student values(1,'amol');
INSERT 0 1

insert into student values(2,'amol');
INSERT 0 1
select * from student;
 id | name 
----+------
  1 | amol
  2 | amol
(2 rows)

