# What are  view
-> view are Virtual Relational (or virtual table) , through which a selective portion of the data from one or more relation (or tables) can be seen 

-> view do not contain data of their own 
-> view do not exist physically

# Sytax

CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

# Type
1) Upadte view = can update
2) read only view = only read not upadate

# stored
-> its stored in the data dictonary in the tables called USER_VIEWS

# Example

-- Create View
CREATE VIEW student_dept_view AS
SELECT s.student_name, d.dept_name
FROM student s
JOIN department d
ON s.dpet_id = d.dpet_id;
