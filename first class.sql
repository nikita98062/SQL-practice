SHOW DATABASES
CREATE DATABASE IF NOT EXISTS techforallwithpriya  
USE techforallwithpriya
SELECT database()




CREATE TABLE employee(
	EID   INT AUTO_INCREMENT,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50)  NOT NULL,
	Age INT NOT NULL,
	Salary INT NOT NULL,
	Location varchar(50) NOT NULL,
    PRIMARY KEY(EID)
)

DESC employee

DROP TABLES employee
SHOW TABLES

INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Nikita","Tambole",23,20000,"Bengluru")
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Pawan","Kohli",24,50000,"Basavakalyan"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Nikki","sharma",25,200000,"Bidar"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Virat","Kohlii",33,2000000,"Delhi"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Yash","Raj",36,560000,"Mysuru"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Radhika","Pandit",35,800000,"Mandya"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Arjun","Tambole",29,680000,"Belgavi");
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Amar","Reddy",28,150000,"Bengal"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Chetan","meka",31,50000,"Klaburgi"); 
INSERT INTO employee(FirstName,LastName,Age,Salary,Location) VALUES("Naga","Chaitanya",38,350000,"Bengluru");  

SELECT * FROM employee

SELECT * FROM employee WHERE Salary>100000
SELECT FirstName,LastName FROM employee WHERE Salary>100000
SELECT * FROM employee WHERE Age>25

UPDATE employee SET LastName="Tamble"
WHERE EID=1