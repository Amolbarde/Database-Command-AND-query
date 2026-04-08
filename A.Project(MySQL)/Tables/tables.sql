-- 1. SCHOOL
CREATE TABLE school (
    school_no    VARCHAR(10) PRIMARY KEY,
    school_name  VARCHAR(100),
    location     VARCHAR(50),
    director_id  VARCHAR(10)
);

-- 2. DEPARTMENT
CREATE TABLE department (
    d_id         VARCHAR(10) PRIMARY KEY,
    d_name       VARCHAR(50),
    dept_budget  VARCHAR(10),
    school_no    VARCHAR(10),
    FOREIGN KEY (school_no) REFERENCES school(school_no)
);

-- 3. PROFESSOR
CREATE TABLE professor (
    prof_id    VARCHAR(10) PRIMARY KEY,
    prof_name  VARCHAR(100),
    prof_dob   YEAR,
    doj        YEAR,
    d_id       VARCHAR(10),
    FOREIGN KEY (d_id) REFERENCES department(d_id)
);

-- 4. COURSE
CREATE TABLE course (
    c_id      VARCHAR(10) PRIMARY KEY,
    c_name    VARCHAR(100),
    credits   INT,
    d_id      VARCHAR(10),
    FOREIGN KEY (d_id) REFERENCES department(d_id)
);

-- 5. DEPUTE
CREATE TABLE depute (
    prof_id     VARCHAR(10),
    d_id        VARCHAR(10),
    start_date  DATE,
    end_date    DATE,
    PRIMARY KEY (prof_id, d_id, start_date),
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id),
    FOREIGN KEY (d_id) REFERENCES department(d_id)
);

-- 6. TAUGHTBY
CREATE TABLE taughtby (
    prof_id        VARCHAR(10),
    c_id           VARCHAR(10),
    tb_year        YEAR,
    tb_trimester   INT,
    PRIMARY KEY (prof_id, c_id, tb_year, tb_trimester),
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id),
    FOREIGN KEY (c_id) REFERENCES course(c_id)
);

-- 7. FULLTIME
CREATE TABLE fulltime (
    prof_id VARCHAR(10) PRIMARY KEY,
    salary  INT,
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
);

-- 8. PARTTIME
CREATE TABLE parttime (
    prof_id     VARCHAR(10) PRIMARY KEY,
    hourly_rate INT,
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
);

-- 9. ADJUNCT
CREATE TABLE adjunct (
    prof_id    VARCHAR(10) PRIMARY KEY,
    year_hired YEAR,
    FOREIGN KEY (prof_id) REFERENCES professor(prof_id)
);

-- 10. PREREQUISITE
CREATE TABLE prerequisite (
    c_id       VARCHAR(10),
    prereq_id  VARCHAR(10),
    PRIMARY KEY (c_id, prereq_id),
    FOREIGN KEY (c_id) REFERENCES course(c_id),
    FOREIGN KEY (prereq_id) REFERENCES course(c_id)
);
