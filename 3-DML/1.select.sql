-- select -> (Read data)
-- 1)

--india=# 
select * from STATEs;

-- state_id | state_identity | state_population 
----------+----------------+------------------
--        1 | Maharastra     | 1000
--        3 | panjab         | 3000
--        4 | delhi          | 5000
(3 rows)

-------------------------------------------------------
 
 --2)
select * from STATEs where state_id<5;

