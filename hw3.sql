--------------------------------------------------
-- 1. Insert 3 students into the table
--------------------------------------------------
INSERT INTO students (id, name, course, fees_paid, status)
VALUES
(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

--------------------------------------------------
-- Display all records
--------------------------------------------------
SELECT * FROM students;

--------------------------------------------------
-- 2. View students whose fees_paid is greater than 5000
--------------------------------------------------
SELECT *
FROM students
WHERE fees_paid > 5000;

--------------------------------------------------
-- 3. Update status to 'Active'
--    for students in 'Web Development'
--------------------------------------------------
UPDATE students
SET status = 'Active'
WHERE course = 'Web Development';

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM students;

--------------------------------------------------
-- 4. Increase fees_paid by 1000
--    for students in 'Data Science'
--------------------------------------------------
UPDATE students
SET fees_paid = fees_paid + 1000
WHERE course = 'Data Science';

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM students;

--------------------------------------------------
-- 5. Update both status to 'Inactive'
--    and reduce fees_paid by 500
--    for student whose id = 3
--------------------------------------------------
UPDATE students
SET
    status = 'Inactive',
    fees_paid = fees_paid - 500
WHERE id = 3;

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM students;

--------------------------------------------------
-- 6. Delete the student whose id = 2
--------------------------------------------------
DELETE FROM students
WHERE id = 2;

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM students;

--------------------------------------------------
-- 7. Delete all students who are 'Inactive'
--------------------------------------------------
DELETE FROM students
WHERE status = 'Inactive';

--------------------------------------------------
-- Display final table
--------------------------------------------------
SELECT * FROM students;