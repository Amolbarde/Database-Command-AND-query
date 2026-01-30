--amol=#

--Syntax
SELECT columns FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;

create table student(student_id INT PRIMARY KEY, name varchar(10));
CREATE TABLE

create table marks(marks_id INT PRIMARY KEY,student_id INT, score INT, FOREIGN KEY(student_id) REFERENCES student(student_id));
CREATE TABLE

SELECT s.name,m.score FROM student s RIGHT JOIN marks m ON s.student_id = m. student_id;
-- name | score 
------+-------
-- A    |    90
-- B    |    95
-- C    |    97
(3 rows)

