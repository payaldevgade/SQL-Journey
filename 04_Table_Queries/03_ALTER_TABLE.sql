-- SQL LEARNING
-- TOPIC: ALTER TABLE COMMAND

CREATE DATABASE  alter_practice;

USE alter_practice;

-- Create student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30),
    marks INT
);

-- Insert 5 student records
INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE', 85),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI', 90),
(3, 'AMAN', 19, 'BBA', 'DELHI', 75),
(4, 'SNEHA', 22, 'BCA', 'PUNE', 95),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE', 80);

SELECT * FROM student;

-- Q1: Add a grade column with VARCHAR(5)
ALTER TABLE student
ADD COLUMN grade VARCHAR(5);

-- Q2: Add an email column with VARCHAR(100)
ALTER TABLE student
ADD COLUMN email VARCHAR(100);

-- Q3: Modify the name column to VARCHAR(100)
ALTER TABLE student
MODIFY COLUMN name VARCHAR(100);

-- Q4: Rename the city column to location
ALTER TABLE student
CHANGE COLUMN city location VARCHAR(30);

-- Q5: Drop the email column
ALTER TABLE student
DROP COLUMN email;

DESCRIBE student;

SELECT * FROM student;