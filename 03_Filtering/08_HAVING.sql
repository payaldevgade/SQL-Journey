-- SQL LEARNING
-- Topic: HAVING CLAUSE

-- STEP 1: CREATE DATABASE
CREATE DATABASE having_practice;
USE having_practice;

-- STEP 2: CREATE TABLE
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30),
    marks INT
);

-- STEP 3: INSERT DATA
INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE', 85),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI', 90),
(3, 'AMAN', 19, 'BBA', 'DELHI', 75),
(4, 'SNEHA', 22, 'BCA', 'PUNE', 95),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE', 80);

-- STEP 4: CHECK THE TABLE
SELECT * FROM student;

-- Q1: Display each city and its student count
-- Show only cities having more than 1 student
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 1;

-- Q2: Display each course and its total marks.
-- Show only courses whose total marks are greater than 150.
SELECT course, SUM(marks) AS total_marks
FROM student
GROUP BY course
HAVING SUM(marks) > 150;

-- Q3: Display each city and its average marks.
-- Show only cities whose average marks are greater than 80.
SELECT city, AVG(marks) AS average_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 80;

-- Q4: Display each course and its student count
-- Show only courses having at least 2 students
SELECT course, COUNT(*) AS total_students
FROM student
GROUP BY course
HAVING COUNT(*) >= 2;

-- Q5: Display each course and its highest marks
-- Show only courses whose highest marks are greater than 85
SELECT course, MAX(marks) AS highest_marks
FROM student
GROUP BY course
HAVING MAX(marks) > 85;
