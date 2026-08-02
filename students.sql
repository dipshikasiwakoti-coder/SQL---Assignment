--STUDENTS
-- students(student_id, full_name, grade, marks, district, gender, enrolled_year)
-- Questions
-- Fetch all students and all their details.
-- Show student names and their marks. Alias marks as "obtained_marks".
-- Find students from Grade 8, 9, or 10 who scored 80 or above.
-- Find all students whose full name contains "Sharma".
-- Show students who enrolled between 2020 and 2023 but are NOT from Kathmandu. Show full_name, district, and enrolled_year.
DROP TABLE IF EXISTS students;
CREATE TABLE students
(
    student_id    INT PRIMARY KEY,
    full_name     VARCHAR(100),
    grade         INT,
    marks         FLOAT,
    district      VARCHAR(50),
    gender        VARCHAR(10),
    enrolled_year INT
);

INSERT INTO students (student_id, full_name, grade, marks, district, gender, enrolled_year)
VALUES
(1,  'Aarav Sharma',   10, 85.0, 'Kathmandu', 'Male',   2024),
(2,  'Sita Sharma',    9,  78.5, 'Pokhara',   'Female', 2021),
(3,  'Bikash Thapa',   8,  92.0, 'Jhapa',     'Male',   2022),
(4,  'Anita Gurung',   10, 55.0, 'Kathmandu', 'Female', 2019),
(5,  'Rohan Sharma',   9,  88.0, 'Chitwan',   'Male',   2023),
(6,  'Puja Karki',     7,  73.0, 'Butwal',    'Female', 2021),
(7,  'Dipesh Rai',     8,  81.5, 'Dharan',    'Male',   2022),
(8,  'Manisha Sharma', 10, 91.0, 'Pokhara',   'Female', 2020),
(9,  'Kiran Basnet',   6,  60.0, 'Kathmandu', 'Male',   2023),
(10, 'Priya Shrestha', 9,  83.0, 'Lalitpur',  'Female', 2021);

select * from students;
select full_name, marks as obtained_marks from students;
select * from students where (grade =8 or grade=9 or grade=10) and marks>=80;
select*from students where full_name like '%Sharma%';
select full_name, district, enrolled_year from students where (enrolled_year between 2020 and 2023) and district != 'Kathmandu';
