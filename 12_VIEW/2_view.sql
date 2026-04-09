select * from emp;
/*+-----+------+---------+------------+
| eid | name | dept_id | manager_id |
+-----+------+---------+------------+
|   1 | A    |     101 |       NULL |
|   2 | B    |     102 |          1 |
|   3 | C    |     103 |          2 |
|   4 | D    |     104 |          2 |
+-----+------+---------+------------+
*/

create view stud_view AS select eid,name from emp;
select * from stud_view;
/*+-----+------+
| eid | name |
+-----+------+
|   1 | A    |
|   2 | B    |
|   3 | C    |
|   4 | D    |
*/

-- WHERE CONDITION

create view emp_details AS select manager_id,name from emp WHERE eid = (select max(eid) from emp);

select * from emp_details;
/*+------------+------+
| manager_id | name |
+------------+------+
|          2 | D    |
+------------+------+
*/
