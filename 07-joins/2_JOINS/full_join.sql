-- IN SQL Full join not implement directly it implement using join

-- MySQL workaround using UNION
SELECT s.student_name, d.dept_name
FROM student s
LEFT JOIN department d ON s.dpet_id = d.dpet_id

UNION

SELECT s.student_name, d.dept_name
FROM student s
RIGHT JOIN department d ON s.dpet_id = d.dpet_id;
