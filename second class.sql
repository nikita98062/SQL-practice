SHOW DATABASES
USE techforallwithpriya
SHOW TABLES
SELECT * FROM employee

CREATE TABLE Course(
CourseID INT AUTO_INCREMENT,
CourseName varchar(50) NOT NULL,
Coursedurationmonth INT NOT NULL,
Coursefee INT NOT NULL,
PRIMARY KEY(CourseID)
)
DESC Course

INSERT INTO Course(CourseName,Coursedurationmonth,Coursefee) VALUES('the complete excel mastery course',3,1499);
INSERT INTO Course(CourseName,Coursedurationmonth,Coursefee) VALUES('DSA for interview prepartion',2,4999);
INSERT INTO Course(CourseName,Coursedurationmonth,Coursefee) VALUES('SQL Bootcamp',1,1999);

SELECT * FROM Course

CREATE TABLE learners(
learnerID INT AUTO_INCREMENT,
learnerfirstname varchar(50) NOT NULL,
learnerlastname varchar(50) NOT NULL,
learner_email varchar(50),
learner_phone_no varchar(15) NOT NULL,
learner_enrollment_date timestamp NOT NULL,
selected_course INT NOT NULL,
years_of_experience INT NOT NULL,
learner_company varchar(50) NOT NULL,
learner_SOJ varchar(50),
batch_date timestamp NOT NULL,
location varchar(50) NOT NULL,
PRIMARY KEY(learnerID),
UNIQUE KEY(learner_email),
FOREIGN KEY(selected_course) REFERENCES Course(CourseID)
)
DESC learners
INSERT INTO learners(learnerfirstname,learnerlastname,learner_email,learner_phone_no,learner_enrollment_date,selected_course,years_of_experience,learner_company,learner_SOJ,batch_date,location) VALUES('Nikita','Tambole','nikitatmbole@gmail.com','8050660894','2023-04-23',1,5,'Amazon','linkedIn','2024-03-8','bengaluru');
INSERT INTO learners(learnerfirstname,learnerlastname,learner_email,learner_phone_no,learner_enrollment_date,selected_course,years_of_experience,learner_company,learner_SOJ,batch_date,location) VALUES('Pawan','Kohli','pawankohli@gmail.com','7760474633','2023-04-28',2,7,'Infosys','YouTube','2024-04-15','bengal');
INSERT INTO learners(learnerfirstname,learnerlastname,learner_email,learner_phone_no,learner_enrollment_date,selected_course,years_of_experience,learner_company,learner_SOJ,batch_date,location) VALUES('Sonikk','Kohliii','sonikk@gmail.com','7760498062','2023-05-23',3,4,'Wipro','Community','2024-08-15','belagavi');
INSERT INTO learners(learnerfirstname,learnerlastname,learner_email,learner_phone_no,learner_enrollment_date,selected_course,years_of_experience,learner_company,learner_SOJ,batch_date,location) VALUES('amar','reddy','amarareddy@gmail.com','1236584062','2023-05-20',2,3,'Google','linkedIn','2024-01-15','bengaluru');



SELECT * FROM learners
-- 1. Give me the record of the employee getting heighest salary
SELECT * FROM employee
ORDER BY Salary DESC 
LIMIT 1

-- 2. give me the record of the employee getting heighest salary and age is bigger than 30

SELECT * FROM employee
WHERE Age>30 
ORDER BY Salary DESC
LIMIt 1

-- 3. display the number of enrollmemts in the website of techfoallwithpriya

SELECT COUNT(*) as num_of_enrollment FROM learners

-- 4 display the number of enrollments from the courseID=3

SELECT COUNT(*) AS num_SQL_bootcamp 
FROM learners
WHERE Selected_course=3 ;

DESC learners
