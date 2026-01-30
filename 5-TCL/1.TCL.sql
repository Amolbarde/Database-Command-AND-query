--amol=# 
create table account (id serial primary key, name varchar(50) not null, balance decimal(10,2) default 0.00);
CREATE TABLE
-- decimal(10,2) means (100000000(lenght 10), 00(length 2))

-- STEP
-- 1) start tranasaction
BEGIN

-- 2) operation

UPDATE account set balance = balance - 100 where id=2;
UPDATE 1

--3) add savepoint
SAVEPOINT s1;

--4) COMMIT

COMMIT

--5) if we want not update balance then

ROLLBACK to s1;
