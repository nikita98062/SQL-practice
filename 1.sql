CREATE DATABASE college;

USE college;
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO student
(id,name,age) VALUES(1,'nikita',25); 

SELECT * FROM student;

CREATE DATABASE company;
USE company;
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);
INSERT INTo employee VALUES (1,'nikk',200000);
INSERT INTo employee VALUES (2,'pawan',700000);
INSERT INTO employee VALUES (3,'adam',2500);
SELECT * FROM employee;

SELECT * FROM employee;

SELECT name,salary
FROM employee
WHERE salary = (SELECT MAX(salary) 
FROM employee
WHERE salary < (SELECT MAX(salary)
FROM employee));

SELECT DISTINCT salary,name 
FROM employee 
ORDER BY salary DESC 
LIMIT 1 OFFSET 0;


