-- SQL LEARNING
-- TOPIC: UPDATE COMMAND

CREATE DATABASE update_practice;
USE update_practice;

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

SELECT * FROM student;

-- Q1: Change RAHUL's marks to 88
UPDATE student
SET marks = 88
WHERE id = 1;

-- Q2: Change PRIYA's city to CHENNAI
UPDATE student
SET city = 'CHENNAI'
WHERE id = 2;

-- Q3: Change AMAN's age to 20
UPDATE student
SET age = 20
WHERE id = 3;

-- Q4: Change SNEHA's course to BBA
UPDATE student
SET course = 'BBA'
WHERE id = 4;

-- Q5: Change KARAN's marks to 85
UPDATE student
SET marks = 85
WHERE id = 5;

SELECT * FROM student;