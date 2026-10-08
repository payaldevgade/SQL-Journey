-- SQL LEARNING
-- Topic: DISTINCT


USE students;


-- Q1: Display all unique courses

SELECT DISTINCT course
FROM students;


-- Q2: Display all unique cities

SELECT DISTINCT city
FROM students;


-- Q3: Display unique combinations of city and course

SELECT DISTINCT city, course
FROM students;


-- Q4: Display all unique ages

SELECT DISTINCT age
FROM students;


-- Q5: Display unique combinations of age and city

SELECT DISTINCT age, city
FROM students;
