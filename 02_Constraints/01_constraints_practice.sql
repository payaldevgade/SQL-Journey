-- SQL LEARNING 
-- Constraints

CREATE DATABASE company;
USE company;

CREATE TABLE employeee (
emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
age INT,
salary INT DEFAULT 25000
);


-- Q2: DEFAULT

INSERT INTO employeee VALUES
(101,"payal","payal@gmail.com",20,"25000"),
(102,"nikki","nikki@gmail.com",29,"90000"),
(103,"luck","luck@gmail.com",28,"55000"),
(104,"palk","palk@gmail.com",30,"75000"),
(105,"gopo","gopo@gmail.com", 29 ," 33000"),
(106,"riya","gopo@gmail.com", 23 ," 99000"),
(107,NULL,"riya@gmail.com", 24 ," 28000"),
(101,"asha","asha@gmail.com", 25 ," 30000");



SELECT * FROM employeee;

USE college;

CREATE TABLE Student (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT CHECK (age >=18),
marks INT
);
  
  
INSERT INTO Student VALUES
(2 , " PRIYA" , 20 , 85);

SELECT * FROM Student;


USE company;

CREATE TABLE department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

CREATE TABLE employee2 (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO department VALUES
(1 , "IT"),
(2 , "HR"),
(3, "FIANANCE");

INSERT INTO employee2 
VALUES(102 , "neha" , 99);