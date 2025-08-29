

DCL(Data Control Language)

-- use to control permission/acess to database objects

____________________________________
1)grant
2)revoke 
(sql)-->

👉👉 first need to create Role

--> create role rahul login password 'abc'

--> grant select,update on table_name to user;
(give permission to update and select to user)

--> revoke insert, update on table_name from user;
(delete permission)

