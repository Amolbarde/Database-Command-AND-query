

-->Create Students table

CREATE TABLE Students (StudentID INT PRIMARY KEY,Name VARCHAR(50));

-->Create Marks table

CREATE TABLE Marks(StudentID INT,Marks INT);


------------------------------------

-- Insert into Students table
INSERT INTO Students (StudentID, Name) VALUES
(1, 'Amit'),
(2, 'Rahul'),
(3, 'Priya');

-- Insert into Marks table
INSERT INTO Marks (StudentID, Marks) VALUES
(1, 85),
(2, 90),
(4, 70);

------------------------------------

SELECT Students.StudentID, Students.Name, Marks.Marks
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID;



--Student 1 (Amit) → match found in Marks → 85
--Student 2 (Rahul) → match found in Marks → 90
--Student 3 (Priya) → no match in Marks → NULL
--StudentID 4 (Marks=70) → not in Students → excluded
