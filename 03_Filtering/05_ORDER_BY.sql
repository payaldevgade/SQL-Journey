-- SQL LEARNING
-- Topic: ORDER BY

CREATE DATABASE order_practice;
USE order_practice;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO student VALUES
(1, 'RAHUL', 20, 'BCA', 'BANGALORE'),
(2, 'PRIYA', 21, 'BCA', 'MUMBAI'),
(3, 'AMAN', 19, 'BBA', 'DELHI'),
(4, 'SNEHA', 22, 'BCA', 'PUNE'),
(5, 'KARAN', 20, 'BCOM', 'BANGALORE');

-- Q1: Sort by age ascending
SELECT *
FROM student
ORDER BY age ASC;

-- Q2: Sort by age descending
SELECT *
FROM student
ORDER BY age DESC;

-- Q3: Sort names alphabetically
SELECT name, age
FROM student
ORDER BY name ASC;

-- Q4: Sort cities in descending order
SELECT name, city
FROM student
ORDER BY city DESC;

-- Q5: Sort by age, then name alphabetically
SELECT *
FROM student
ORDER BY age ASC, name ASC;
