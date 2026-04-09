--Syntax
UPDATE view_name
SET column = value
WHERE condition;

--Example

CREATE VIEW student_view AS
SELECT student_id, student_name
FROM student;

--update view  UPDATE student_view

SET student_name = 'Rahul Sharma'
WHERE student_id = 1;


-- not update
CREATE VIEW full_view AS
SELECT s.student_name, d.dept_name
FROM student s
JOIN department d
ON s.dpet_id = d.dpet_id;
