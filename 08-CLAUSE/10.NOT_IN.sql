

🧿NOT IN( chack if value not exist in list)

-->SELECT * FROM Student
  WHERE city NOT IN ('Pune',   'Delhi');

👉 Output: Amit (Mumbai), Rani (Nagpur)

🧿 IN with Subquery

SELECT * FROM Student
WHERE city IN (
  SELECT city FROM Student WHERE id <= 3
);

👉 Output: Students from Pune, Mumbai, Delhi