-- for each location what is the count each of payment and average salary of the employee in those location
SHOW DATABASES
USE techforallwithpriya
SHOW TABLES

SELECT location, COUNT(location) as total,AVG(Salary) as avg_salary
FROM employee
GROUP BY location

DESC employee
SELECT * FROM employee

UPDATE employee SET location="Basavakalyan"
WHERE EID=7

-- for each location what is the count each of payment and average salary of the employee in those location and also display the firstname And lastname corresponding to each record

SELECT location, FirstName,LastName,COUNT(location) as total,AVG(Salary) as avg_salary
FROM employee
GROUP BY location,FirstName,LastName

SELECT FirstName,LastName,employee.location,total,avg_salary
FROM employee
JOIN
(SELECT location, COUNT(location) as total,AVG(Salary) as avg_salary
FROM employee
GROUP BY location) as temp
ON employee.location=temp.location

-- optimize the  above queries via window function

SELECT FirstName, LastName,location, 
COUNT(location) over (PARTITION BY location) as total ,
AVG(Salary) over (PARTITION BY location) as avg_salary
FROM employee

SELECT FirstName,LastName,Salary,
ROW_NUMBER() OVER(ORDER BY Salary DESC) as priority_emp
FROM employee

SELECT FirstName,LastName,Salary,
RANK() OVER(ORDER BY Salary DESC) as priority_emp
FROM employee

SELECT FirstName,LastName,Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) as priority_emp
FROM employee

SELECT * FROM
(SELECT FirstName,LastName,Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) as priority_emp
FROM employee) as temp
WHERE priority_emp=2

SELECT * FROM
(SELECT FirstName,LastName,Salary,
ROW_NUMBER() OVER(ORDER BY Salary DESC) as priority_emp
FROM employee) as temp
WHERE priority_emp=2

SELECT * FROM
(SELECT FirstName,LastName,Salary,
ROW_NUMBER() OVER(PARTITION BY location ORDER BY Salary DESC) as priority_emp
FROM employee) as temp
WHERE priority_emp=1
