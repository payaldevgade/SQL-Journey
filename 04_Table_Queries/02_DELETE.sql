
-- SQL LEARNING
-- TOPIC: DELETE COMMAND
-- FILE: 02_DELETE.sql

-- STEP 1: CREATE DATABASE
CREATE DATABASE deletee_practice;

-- STEP 2: SELECT DATABASE
USE deletee_practice;

-- STEP 3: CREATE TABLE
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30),
    marks INT
);

-- STEP 4: INSERT SAMPLE DATA
INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE', 85),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI', 90),
(3, 'AMAN', 19, 'BBA', 'DELHI', 75),
(4, 'SNEHA', 22, 'BCA', 'PUNE', 95),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE', 80);

-- STEP 5: DISPLAY ALL STUDENTS
SELECT * FROM student;


-- Q1: Delete RAHUL's record
DELETE FROM student
WHERE id = 1;

SELECT * FROM student;


-- Q2: Delete students whose marks are below 80
DELETE FROM student
WHERE marks < 80;

SELECT * FROM student;


-- Q3: Delete PRIYA's record
DELETE FROM student
WHERE id = 2;

SELECT * FROM student;


-- Q4: Delete students who belong to BBA
DELETE FROM student
WHERE course = 'BBA';

SELECT * FROM student;


-- Q5: Delete KARAN's record
DELETE FROM student
WHERE id = 5;

SELECT * FROM student;