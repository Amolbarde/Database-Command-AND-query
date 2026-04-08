CREATE TABLE department (
    dpet_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    dept_budget INT,
    school_no INT
);

CREATE TABLE professor (
    professor_id INT PRIMARY KEY,
    professor_name VARCHAR(50),
    dpet_id INT
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dpet_id INT,
    professor_id INT
);
