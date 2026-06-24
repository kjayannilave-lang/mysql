INSERT INTO `student data` (id, name, age, department, grade)
VALUES
(1, 'Aarav Sharma', 19, 'Computer Science', 85),
(2, 'Priya Nair', 21, 'Physics', 90),
(3, 'Rahul Menon', 22, 'Mathematics', 75),
(4, 'Anjali Das', 20, 'Computer Science', 88);
SELECT *
FROM `student data`
WHERE age > 20;
SELECT *
FROM `student data`
WHERE department = 'Computer Science'
   OR department = 'Physics';
   SELECT *
FROM `student data`
WHERE grade = 90;
SELECT *
FROM `student data`
WHERE grade BETWEEN 70 AND 90;