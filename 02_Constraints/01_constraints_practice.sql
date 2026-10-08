-- SQL LEARNING
-- Topic: Constraints


CREATE DATABASE company;
USE company;


-- Q1: PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    salary INT DEFAULT 25000
);


-- Q2: DEFAULT

INSERT INTO employee (emp_id, name, email, age)
VALUES (101, 'Payal', 'payal@gmail.com', 20);

SELECT * FROM employee;


-- Q3: UNIQUE

INSERT INTO employee
VALUES (102, 'Nikki', 'nikki@gmail.com', 29, 90000);

INSERT INTO employee
VALUES (103, 'Luck', 'luck@gmail.com', 28, 55000);

INSERT INTO employee
VALUES (104, 'Palk', 'palk@gmail.com', 30, 75000);


-- Testing UNIQUE
-- This should give an error because the email already exists.

INSERT INTO employee
VALUES (105, 'Gopo', 'nikki@gmail.com', 29, 33000);


-- Q4: NOT NULL

-- This should give an error because name cannot be NULL.

INSERT INTO employee
VALUES (106, NULL, 'riya@gmail.com', 24, 28000);


-- Q5: PRIMARY KEY

-- This should give an error because emp_id 101 already exists.

INSERT INTO employee
VALUES (101, 'Asha', 'asha@gmail.com', 25, 30000);


-- Q6: CHECK

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    marks INT
);


-- Q7: Testing CHECK
-- This should give an error because age is less than 18.

INSERT INTO student
VALUES (1, 'Rahul', 17, 80);


-- Q8: Valid CHECK value

INSERT INTO student
VALUES (2, 'Priya', 20, 85);

SELECT * FROM student;


-- Q9: FOREIGN KEY

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


-- Q10: Valid FOREIGN KEY

INSERT INTO department
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO employee2
VALUES (101, 'Neha', 2);


-- Q11: Invalid FOREIGN KEY
-- This should give an error because department 99 does not exist.

INSERT INTO employee2
VALUES (102, 'Neha', 99);


-- Final checks

SELECT * FROM employee;
SELECT * FROM student;
SELECT * FROM department;
SELECT * FROM employee2;
