-- SQL LEARNING
-- TOPIC: FOREIGN KEY

-- 1. Create and select the database
CREATE DATABASE IF NOT EXISTS foreign_key_practice;
USE foreign_key_practice;


-- 2. Create the parent table: dept
CREATE TABLE IF NOT EXISTS dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- 3. Create the child table: teacher
CREATE TABLE IF NOT EXISTS teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);


-- 4. Insert departments into the parent table
INSERT INTO dept VALUES
(101, 'Computer Science'),
(102, 'Commerce');


-- 5. Insert teachers into the child table
INSERT INTO teacher VALUES
(1, 'Priya', 101),
(2, 'Rahul', 102);


-- 6. Display all teachers
SELECT * FROM teacher;


-- 7. Test the Foreign Key with an invalid department ID
-- Expected: Error because department 999 does not exist.
-- Run separately to see the error.
-- INSERT INTO teacher VALUES (3, 'Amit', 999);


-- 8. Insert a teacher with a valid department ID
INSERT INTO teacher VALUES (3, 'Amit', 102);


-- 9. Test another invalid department ID
-- Expected: Error because department 500 does not exist.
-- Run separately to see the error.
-- INSERT INTO teacher VALUES (4, 'Amit', 500);


-- 10. Display the final teacher records
SELECT * FROM teacher;