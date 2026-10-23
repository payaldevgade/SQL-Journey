-- TOPIC: CASCADING FOREIGN KEYS
-- CONCEPTS: ON DELETE CASCADE, ON UPDATE CASCADE

CREATE DATABASE cascade_practice;
USE cascade_practice;

-- 1. CREATE PARENT TABLE: COURSE

CREATE TABLE course (
    id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- 2. CREATE CHILD TABLE: STUDENT

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    courseID INT,
    FOREIGN KEY (courseID)
        REFERENCES course(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 3. INSERT SAMPLE DATA

INSERT INTO course (id, course_name)
VALUES
    (1, 'BCA'),
    (2, 'BBA'),
    (3, 'BCom');

INSERT INTO student (id, name, courseID)
VALUES
    (101, 'Rahul', 1),
    (102, 'Priya', 2),
    (103, 'Aman', 1),
    (104, 'Sneha', 3);

-- Q1: Display all courses and students
SELECT * FROM course;
SELECT * FROM student;

-- 4. Q2: TEST ON DELETE CASCADE
-- Deleting course 1 also deletes its students.

DELETE FROM course
WHERE id = 1;

SELECT * FROM student;

-- 5. Q3: RESTORE DELETED DATA

INSERT INTO course (id, course_name)
VALUES (1, 'BCA');

INSERT INTO student (id, name, courseID)
VALUES
    (101, 'Rahul', 1),
    (103, 'Aman', 1);

SELECT * FROM course;
SELECT * FROM student;

-- 6. Q4: TEST ON UPDATE CASCADE
-- Changing course ID 2 to 5 also updates
-- Priya's courseID from 2 to 5.

UPDATE course
SET id = 5
WHERE id = 2;

SELECT * FROM student;

-- 7. Q5: FINAL VERIFICATION

SELECT * FROM course;
SELECT * FROM student;

