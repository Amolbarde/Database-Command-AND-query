-- 1) Find Employee whose salary is above avarage
select name,sal from emp WHERE sal > (select AVG(sal) from emp);

-- 2) Find Employee in department where salary > 50000
select name, department from emp where department IN (select department from emp WHERE sal>50000);
  
--3) find employee with highest salary
select name,sal from emp where sal = (select MAX(sal) from emp);

--4)  
