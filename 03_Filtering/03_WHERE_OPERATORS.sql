-- SQL LEARNING
-- Topic: WHERE + OPERATORS


USE students;


-- Q1: Display students whose age is greater than 20

SELECT *
FROM students
WHERE age > 20;


-- Q2: Display students whose age is exactly 20

SELECT *
FROM students
WHERE age = 20;


-- Q3: Display students whose age is less than 21

SELECT *
FROM students
WHERE age < 21;


-- Q4: Display students whose age is greater than or equal to 21

SELECT *
FROM students
WHERE age >= 21;


-- Q5: Display students whose course is NOT BCA
-- Using NOT EQUAL operator

SELECT *
FROM students
WHERE course != 'BCA';


-- Q6: Display students whose age is less than or equal to 20

SELECT *
FROM students
WHERE age <= 20;


-- Q7: Display BCA students whose age is greater than 20
-- Using AND

SELECT *
FROM students
WHERE course = 'BCA'
AND age > 20;


-- Q8: Display students who are from Bangalore
-- OR studying BBA

SELECT *
FROM students
WHERE city = 'BANGALORE'
OR course = 'BBA';


-- Q9: Display students whose course is NOT BCA
-- Using NOT operator

SELECT *
FROM students
WHERE NOT course = 'BCA';


-- Q10: Display students whose course is either BCA or BBA
-- Using IN

SELECT *
FROM students
WHERE course IN ('BCA', 'BBA');


-- Q11: Display students whose age is between 20 and 22
-- Using BETWEEN

SELECT *
FROM students
WHERE age BETWEEN 20 AND 22;


-- Q12: Display students whose name starts with 'R'
-- Using LIKE

SELECT *
FROM students
WHERE name LIKE 'R%';


-- Q13: Display students whose city ends with 'I'
-- Using LIKE

SELECT *
FROM students
WHERE city LIKE '%I';


-- Q14: Display students whose name contains 'A'
-- Using LIKE

SELECT *
FROM students
WHERE name LIKE '%A%';


-- Q15: Display BCA students whose age is 20 or 21
-- Using AND + IN

SELECT *
FROM students
WHERE course = 'BCA'
AND age IN (20, 21);


-- Q16: Display students who are NOT from Bangalore

SELECT *
FROM students
WHERE NOT city = 'BANGALORE';


-- Q17: Display students whose age is NOT between 20 and 21

SELECT *
FROM students
WHERE age NOT BETWEEN 20 AND 21;


-- Q18: Display students who are studying BCA
-- OR whose age is 19

SELECT *
FROM students
WHERE course = 'BCA'
OR age = 19;


-- Arithmetic Operators


-- Q19: Add 5 to each student's age

SELECT name, age + 5 AS new_age
FROM students;


-- Q20: Subtract 2 from each student's age

SELECT name, age - 2 AS new_age
FROM students;


-- Q21: Multiply each student's age by 2

SELECT name, age * 2 AS new_age
FROM students;


-- Q22: Divide each student's age by 2

SELECT name, age / 2 AS new_age
FROM students;


-- Q23: Find the remainder when age is divided by 2

SELECT name, age % 2 AS remainder
FROM students;
