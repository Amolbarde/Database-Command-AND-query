SELECT s.student_name, d.dept_name
FROM student s
RIGHT JOIN department d
ON s.dpet_id = d.dpet_id;
