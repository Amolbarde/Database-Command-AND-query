#What is NATURAL JOINS ?
- it automatically joins tables based on columns with same name

-> it no need to write ON Condition

* Example Tables

-Both tables must have a common column name (like dpet_id)

student
student_name	| dpet_id

department
| dpet_id | dept_name |

@ Basic NATURAL JOIN Query

SELECT * 
FROM student
NATURAL JOIN department;
