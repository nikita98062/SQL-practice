
# Employee Database

## Table: **Employees**

| EmpID | Name    | Department | Salary | HireDate   |
|-------|---------|------------|--------|------------|
| 1     | Alice   | HR         | 50000  | 2021-01-10 |
| 2     | Bob     | IT         | 60000  | 2020-05-15 |
| 3     | Charlie | IT         | 55000  | 2019-03-20 |
| 4     | David   | Finance    | 65000  | 2018-07-12 |
| 5     | Eva     | HR         | 52000  | 2022-02-25 |

---

## Questions:

1. **Retrieve all employee names and their departments.**
   - Write a query to display the `Name` and `Department` of all employees.

2. **Find employees hired after January 1, 2020.**
   - Write a query to find all employees who were hired after January 1, 2020.

3. **Select employees from the IT department earning more than 55000.**
   - Write a query to select employees who belong to the `IT` department and have a salary greater than 55000.

4. **Calculate the total salary of all employees.**
   - Write a query to calculate the total salary paid to all employees.

5. **Count the number of employees in each department.**
   - Write a query to count how many employees are in each department.




### SQL Queries:

```sql
-- 1. Retrieve all employee names and their departments.
SELECT Name, Department
FROM Employees;

-- 2. Find employees hired after January 1, 2020.
SELECT *
FROM Employees
WHERE HireDate > '2020-01-01';

-- 3. Select employees from the IT department earning more than 55000.
SELECT *
FROM Employees
WHERE Department = 'IT' AND Salary > 55000;

-- 4. Calculate the total salary of all employees.
SELECT SUM(Salary) AS TotalSalary
FROM Employees;

-- 5. Count the number of employees in each department.
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;
``` 
