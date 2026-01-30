-- Alter
--ALTER modifies an existing database object without deleting it.
--Used for:

--1)Tables
--2)Columns
--3)Constraints
--4)Indexes
--5)Schemas
--6)Databases (limited)

------------------------------------------------------------------------------------

--india=#
create table state (state_id int primary key not null, state_name varchar(10), state_population int);
CREATE TABLE

insert into state(state_id, state_name, state_population) values (1,'Maharastra',1000);
INSERT 0 1

insert into state(state_id, state_name, state_population) values (3,'panjab',3000),(4,'delhi',5000);
INSERT 0 2

select * from state;
-- state_id | state_name | state_population 
----------+------------+------------------
--        1 | Maharastra |             1000
--        3 | panjab     |             3000
--        4 | delhi      |             5000
(3 rows)

------------------------------------------------------------------------------------
-- A) Add Column 
alter table state add column state_literacy_rate int;
ALTER TABLE

-- B) drop column
 alter table state drop column state_literacy_rate;
ALTER TABLE

-- C) rename column
alter table state rename column state_name to state_identity;
ALTER TABLE

-- D) rename column type
alter table state alter column state_population type varchar(10);
ALTER TABLE

-- E) REname table
alter table St rename to STATEs;
ALTER TABLE

