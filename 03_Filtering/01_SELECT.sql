-- SQL LEARNING
-- Topic: SELECT


CREATE DATABASE students;
USE students;


-- Create Table

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30)
);


-- Insert Data

INSERT INTO students VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE'),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI'),
(3, 'AMAN', 19, 'BBA', 'DELHI'),
(4, 'SNEHA', 22, 'BCA', 'PUNE'),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE');


-- SELECT Practice


-- Q1: Display all columns and all rows

SELECT *
FROM students;


-- Q2: Display name and course

SELECT name, course
FROM students;


-- Q3: Display name, age and city

SELECT name, age, city
FROM students;


-- Q4: Display name and age increased by 5

SELECT name, age + 5 AS age_plus_5
FROM students;
