
---Purpose-----
--Prevents duplicate values
--NULL values are allowed (PostgreSQL allows multiple NULLs)



--college=# 
insert into department values('amolb4055@gmail.com');
INSERT 0 1

insert into department values('amolb4055@gmail.com');
--ERROR:  duplicate key value violates unique constraint "department_email_key"
--DETAIL:  Key (email)=(amolb4055@gmail.com) already exists.

--college=#                         
select * from department;
--        email        
---------------------
-- amolb4055@gmail.com
(1 row)

