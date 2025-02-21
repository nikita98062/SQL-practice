USE college;
CREATE TABLE student1(
rool_no INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(20)
);
INSERT INTO student1 VALUES 
(101, 'nikk', 95, 'A', 'bengaluru'),
(102, 'pawan', 90, 'B', 'pune'),
(103, 'sonu', 85, 'C', 'mumbai'),
(104, 'nikita', 80, 'F', 'hasan'),
(105, 'nil', 79, 'A', 'kodagu'),
(106, 'amar', 92, 'D', 'kalburgi');

SELECT * FROM student1;
SELECT *
FROM student1
ORDER BY marks DESC
LIMIT 3;

SELECT AVG(marks) FROM student1;

SELECT city,COUNT(name)
FROM student1
GROUP BY city;

SELECT grade,COUNT(rool_no)
FROM student1
GROUP BY grade;

SELECT city , COUNT(rool_no)
FROM student1
GROUP BY city
HAVING max(marks)>90;

SET SQL_SAFE_UPDATES=0;

UPDATE student1
SET grade="O"
WHERE grade="A";

SELECT * FROM student1;

ALTER TABLE student1
ADD COLUMN age INT;

ALTER TABLE student1
DROP COLUMN age;

ALTER TABLE student1 
RENAME COLUMN name to full_name;

SELECT * FROM student1;

ALTER TABLE studen_info
RENAME to student_info;

SELECT * FROM student_info;

DELETE FROM student_info
WHERE marks<80;

INSERT INTO student_info VALUES
(105,'nil',76,'A','basavakalyan');

ALTER TABLE student_info
DROP COLUMN grade;

ALTER TABLE student_info
ADD COLUMN grade VARCHAR(2);

UPDATE student_info
SET grade='A'
WHERE marks>85;

UPDATE student_info
SET grade='B'
WHERE marks>75;

SELECT * FROM student_info;

SELECT AVG(marks)
FROM student_info;

SELECT full_name,marks
FROM student_info
WHERE marks > 86.33;

SELECT full_name,marks
FROM student_info
WHERE marks > (SELECT AVG(marks)
FROM student_info);

SELECT rool_no
FROM student_info
WHERE rool_no%2=0;

SELECT full_name,rool_no
FROM student_info
WHERE rool_no IN (102,104,106);

SELECT full_name,rool_no
FROM student_info
WHERE rool_no IN (SELECT rool_no
FROM student_info
WHERE rool_no % 2 = 0);

SELECT * 
FROM student_info
WHERE city='pune';



