use college;

CREATE TABLE emp (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

DROP TABLE emp;

INSERT INTO emp VALUES
(1,'alice','HR',50000,'2021-01-10'),
(2,'bob','IT',60000,'2020-05-15'),
(3,'charlie','IT',55000,'2019-03-20'),
(4,'david','finance',65000,'2018-07-12'),
(5,'eva','HR',52000,'2022-02-25');

SELECT * FROM emp;

SELECT Name,Department
From emp;

SELECT * 
FROM emp
WHERE HireDate > '2020-01-01';

SELECT * 
FROM emp
WHERE Department='IT' AND Salary > 55000;

SELECT SUM(Salary)
FROM emp;

SELECT Department,COUNT(*)
FROM emp
GROUP BY Department;

CREATE TABLE customer(
	cust_ID INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(20),
    age INT NOT NULL
);

INSERT INTO customer VALUES
(1,'john','USA',28),
(2,'priya','india',32),
(3,'ahmed','UAE',35),
(4,'maria','brazil',29);

SELECT * FROM customer;

CREATE TABLE orders(
	orderID INT PRIMARY KEY,
    cust_ID INT NOT NULL,
	FOREIGN KEY(cust_ID) REFERENCES customer(cust_id),
    order_ammount INT NOT NULL,
    orderdate DATE 
);

INSERT INTO orders VALUES
(101, 1, 300, '2023-01-10'),
(102, 2, 500, '2023-02-20'),
(103, 1, 150, '2023-03-15'),
(104, 3, 700, '2023-04-05'),
(105, 4, 400, '2023-04-10');

SELECT * FROM orders;

SELECT customer.name,SUM(orders.order_ammount) AS total_ammount
FROM customer
JOIN orders on customer.cust_ID=orders.cust_ID
GROUP BY customer.name;

SELECT customer.name, COUNT(orders.orderID) AS order_count
FROM customer
JOIN orders on customer.cust_ID=orders.cust_ID
GROUP BY customer.name
HAVING order_count >1;

SELECT customer.country,AVG(orders.order_ammount) AS avg_order_ammount
FROM customer
JOIN orders ON customer.cust_ID=orders.cust_ID
GROUP BY customer.country;

SELECT customer.name,orders.order_ammount 
FROM customer
JOIN orders ON customer.cust_ID=orders.cust_ID
ORDER BY orders.order_ammount DESC
LIMIT 3;

SELECT name
FROM customer
WHERE cust_ID NOT IN ( SELECT DISTINCT cust_ID FROM orders);

SELECT * 
FROM customer
LEFT JOIN orders
ON customer.cust_ID=orders.cust_ID;

SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.cust_ID=orders.cust_ID;

SELECT * 
FROM customer
LEFT JOIN orders
ON customer.cust_ID=orders.cust_ID;
UNION
SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.cust_ID=orders.cust_ID;

SELECT * FROM emp;

SELECT Name,Salary
FROM emp
WHERE Department='IT';

SELECT * 
FROM emp
WHERE Salary > 50000;

SELECT *
FROM emp
ORDER BY Salary DESC;

SELECT Salary,COUNT(Salary)
FROM emp
GROUP BY Salary;

SELECT Department,COUNT(Department)
FROM emp
GROUP BY Department;

SELECT Department,COUNT(*)
FROM emp
GROUP BY Department;
