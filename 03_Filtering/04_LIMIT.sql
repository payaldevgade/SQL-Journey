-- SQL LEARNING
-- Topic: LIMIT

-- Create Database
CREATE DATABASE student;

-- Use Database
USE student;


-- Create Table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30)
);


-- Insert Data
INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE'),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI'),
(3, 'AMAN', 19, 'BBA', 'DELHI'),
(4, 'SNEHA', 22, 'BCA', 'PUNE'),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE');


-- Check the table
SELECT * FROM student;

-- LIMIT PRACTICE

-- Q1: Display the first 2 students

SELECT * 
FROM student
LIMIT 2;

-- Q2: Display the first 3 students' names and cities

SELECT name , city
FROM student
LIMIT 3;


-- Q3: Display the first 4 BCA students

SELECT *
FROM student
WHERE course = 'BCA'
LIMIT 4;

-- Q4: Display the first 4 students' names

SELECT name 
FROM student
LIMIT 4;