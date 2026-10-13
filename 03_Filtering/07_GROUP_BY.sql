-- SQL Practice: GROUP BY Clause
-- Database: sql_practice
-- Table: student
-- Topics: GROUP BY, COUNT, AVG, SUM, MAX, MIN, ORDER BY

-- 1. Create and select the database

CREATE DATABASE sql_practice;
USE sql_practice;

-- 2. Create the student table

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    marks INT
);

-- 3. Insert sample student records

INSERT INTO student (id, name, city, marks)
VALUES
(1, 'Asha', 'Delhi', 80),
(2, 'Ravi', 'Mumbai', 70),
(3, 'Priya', 'Delhi', 90),
(4, 'Kiran', 'Mumbai', 60),
(5, 'Neha', 'Pune', 85),
(6, 'Arjun', 'Delhi', 75);

-- 4. Display all students
SELECT *
FROM student;


-- 5. Display unique cities using GROUP BY
SELECT city
FROM student
GROUP BY city;


-- 6. Count students in each city
SELECT city, COUNT(*) AS student_count
FROM student
GROUP BY city;


-- 7. Calculate average marks in each city
SELECT city, AVG(marks) AS average_marks
FROM student
GROUP BY city;


-- 8. Calculate total marks in each city
SELECT city, SUM(marks) AS total_marks
FROM student
GROUP BY city;


-- 9. Find the highest marks in each city
SELECT city, MAX(marks) AS highest_marks
FROM student
GROUP BY city;


-- 10. Find the lowest marks in each city
SELECT city, MIN(marks) AS lowest_marks
FROM student
GROUP BY city;


-- 11. Count students in each city, highest count first
SELECT city, COUNT(*) AS student_count
FROM student
GROUP BY city
ORDER BY student_count DESC;

