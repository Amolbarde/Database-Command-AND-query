--amol=#
create table bank(brance varchar(10), bal int);
CREATE TABLE

alter table bank rename column brance to branch;
ALTER TABLE

insert into bank (branch,bal) values('delhi',3000);
INSERT 0 1

insert into bank (branch,bal) values('mumbai',4000);
INSERT 0 1

select branch, SUM(bal) AS TOTAL_BAL from bank GROUP BY branch;
-- branch | total_bal 
--------+-----------
-- mumbai |      7000
-- delhi  |      6000
(2 rows)

