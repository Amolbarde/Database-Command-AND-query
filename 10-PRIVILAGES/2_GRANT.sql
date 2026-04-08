-- step 1)
mysql -u root -p

-- step 2)
 create databse college;
 use college;
 
-- step 3)
 create table student(sid int, name varchar(10), marks int);


-- step 4) 
 create user 'amol'@'localhost' identified by 'abc';
-- username = amol
-- password = abc
-- localhost = user login only local system

-- step 5)
mysql -u amol -p


--step 6)
grant select , update, delete, insert on college.student to 'amol';
grant all PRIVILIGES on college.* to 'amol';
show grant for 'amol';

