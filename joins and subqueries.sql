SHOW DATABASES
USE techforallwithpriya
SHOW TABLES

-- 1. Which courses have the highest enrollment rates?

SELECT * FROM learners

SELECT selected_course, COUNT(*) as enrollmentcount
FROM learners 
GROUP BY selected_course
ORDER BY enrollmentcount DESC
LIMIT 1

-- CASE STATMENT AND COMMON TABLE EXPRESSIONS

SELECT * FROM course

-- create a new column named coursefeestatus

SELECT CourseID,CourseName,Coursefee,
	CASE 
		WHEN Coursefee > 3999 THEN 'expensive course'
        WHEN Coursefee > 1499 THEN 'moderate course'
        ELSE 'cheap course'
	END AS coursefeestatus
FROM course

-- CREATe a table for orders

CREATE TABLE orders(
order_ID INT AUTO_INCREMENT,
order_date TIMESTAMP NOT NULL,
order_learner_ID INT NOT NULL,
order_status VARCHAR(50) NOT NULL,
PRIMARY KEY(order_ID),
FOREIGN KEY (order_learner_ID) REFERENCES learners(learnerID)
);
DROP TABLE orders

INSERT INTO orders(order_date,order_learner_ID,order_status) VALUES('2024-06-13',1,'COMPLETE');
INSERT INTO orders(order_date,order_learner_ID,order_status) VALUES('2024-06-14',2,'PENDING');
INSERT INTO orders(order_date,order_learner_ID,order_status) VALUES('2024-06-16',3,'CLOSED');

SELECT * FROM orders

SELECT order_learner_ID, COUNT(*) as total_orders
FROM orders
GROUP BY order_learner_ID
 
 SELECT temp.order_learner_ID,learnerfirstname,learnerlastname,temp.total_orders
 FROM learners
 JOIN
 (SELECT order_learner_ID, COUNT(*) as total_orders
 FROM orders
 GROUP BY order_learner_ID) as temp
 ON
 learners.learnerID=temp.order_learner_ID
 
 SELECT 
    temp.order_learner_ID,
    learners.learnerfirstname,
    learners.learnerlastname,
    temp.total_orders,
    AVG(temp.total_orders) OVER () AS avg_total_orders
FROM 
    learners
JOIN 
    (SELECT order_learner_ID, COUNT(*) as total_orders
     FROM orders
     GROUP BY order_learner_ID) as temp
ON 
    learners.learnerID = temp.order_learner_ID;
    
    
