-- SQL LEARNING
-- TOPIC: INNER JOIN
-- FILE: 01_INNER_JOIN.sql

-- STEP 1: Create and select database

CREATE DATABASE inner_join_practice;

USE inner_join_practice;


-- STEP 2: Create Students table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- STEP 3: Create Courses table

CREATE TABLE courses (
    student_id INT,
    course VARCHAR(30)
);


-- STEP 4: Insert student records

INSERT INTO students VALUES
(1, 'Priya'),
(2, 'Rahul'),
(3, 'Amit'),
(4, 'Sneha');


-- STEP 5: Insert course records

INSERT INTO courses VALUES
(1, 'BCA'),
(2, 'BBA'),
(4, 'BCom'),
(5, 'BSc');


-- STEP 6: Display both tables

SELECT * FROM students;
SELECT * FROM courses;

-- Q1: Display student names and their course

SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id;


-- Q2: Display student ID, name and course

-- Sort the result by student ID in ascending order

SELECT students.student_id, students.name, courses.course
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id
ORDER BY students.student_id ASC;


-- Q3: Display students enrolled in BCA

SELECT students.name
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id
WHERE courses.course = 'BCA';


-- Q4: Display students who are not enrolled in BCA

SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id
WHERE courses.course != 'BCA';


-- Q5: Display student name and course

-- Where student ID is greater than 1

SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id
WHERE students.student_id > 1;

