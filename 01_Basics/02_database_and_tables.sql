-- ============================================
-- SQL LEARNING
-- Topic: Database and Tables
-- ============================================

DROP DATABASE college;
 
CREATE DATABASE college;
USE college;

CREATE TABLE students (
id int PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age int ,
course VARCHAR(30),
city VARCHAR(30)
);

INSERT INTO students VALUES
(1 , 'RAHUL' , 20 , "BCA" , "BANGALORE"),
(2 , 'PRIYA' , 21 , "BCA" , "MUMBAI"),
(3 , 'AMAN' , 19 , "BBA" , "DELHI"),
(4 , 'SNEHA' , 22 , "BCA" , "PUNE"),
(5 , 'KARAN' , 20, "BCOM" , "BANGALORE");

SELECT * FROM students;

SELECT name, course  FROM students;

SELECT id, name,city  FROM students;

DESCRIBE students;