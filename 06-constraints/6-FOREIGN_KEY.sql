--A FOREIGN KEY (FK) enforces a relationship between two tables.
--👉 The value in the child table must exist in the parent table.                    

--amol=# 
create table student(student_id INT PRIMARY KEY, name varchar(10));
CREATE TABLE

amol=# create table marks(marks_id INT PRIMARY KEY,student_id INT, score INT, FOREIGN KEY(student_id) REFERENCES student(student_id));
CREATE TABLE

 insert into student values(1, 'A');
INSERT 0 1

insert into student values(2, 'B');
INSERT 0 1


--ERROR
insert into student values(2, 'C');
--ERROR:  duplicate key value violates unique constraint "student_pkey"
--DETAIL:  Key (student_id)=(2) already exists.

insert into student values(3, 'C');
INSERT 0 1

insert into marks values(101,1, 90);
INSERT 0 1

