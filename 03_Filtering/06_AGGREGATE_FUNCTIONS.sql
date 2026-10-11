-- SQL LEARNING
-- Topic: AGGREGATE FUNCTIONS

CREATE DATABASE aggregate_practice;
USE aggregate_practice;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30),
    marks INT
);

INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE', 85),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI', 90),
(3, 'AMAN', 19, 'BBA', 'DELHI', 75),
(4, 'SNEHA', 22, 'BCA', 'PUNE', 95),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE', 80);

-- Display all students
SELECT *
FROM student;

-- Q1: Count students
SELECT COUNT(*)
FROM student;

-- Q2: Total marks
SELECT SUM(marks)
FROM student;

-- Q3: Average marks
SELECT AVG(marks)
FROM student;

-- Q4: Lowest marks
SELECT MIN(marks)
FROM student;

-- Q5: Highest marks
SELECT MAX(marks)
FROM student;
