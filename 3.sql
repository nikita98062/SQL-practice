use college;
CREATE TABLE stu(
	stu_id INT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE course(
	co_id INT PRIMARY KEY,
    course_name VARCHAR(20)
);
DROP Table course;

INSERT INTO stu VALUES
(101,'adam'),
(102,'bob'),
(103,'casey');

INSERT INTO course VALUES
(102,'english'),
(105,'math'),
(103,'sceince'),
(107,'computer science');

SELECT * FROM stu;

SELECT * FROM course;

SELECT *
FROM stu
INNER JOIN course
ON stu.stu_id=course.stu_id;

ALTER TABLE course
CHANGE co_id stu_id VARCHAR(20);

SELECT * 
FROM stu
LEFT JOIN course
ON stu.stu_id=course.stu_id;

SELECT * 
FROM stu
RIGHT JOIN course
ON stu.stu_id=course.stu_id;

SELECT * 
FROM stu
LEFT JOIN course
ON stu.stu_id=course.stu_id
UNION 
SELECT *
FROM stu
RIGHT JOIN course
ON stu.stu_id=course.stu_id;

SELECT * 
FROM stu
LEFT JOIN course
ON stu.stu_id=course.stu_id
WHERE course.stu_id IS NULL;

SELECT * 
FROM stu
RIGHT JOIN course
ON stu.stu_id=course.stu_id
WHERE stu.stu_id IS NULL;

SELECT * 
FROM stu
LEFT JOIN course
ON stu.stu_id=course.stu_id
WHERE course.stu_id IS NULL
UNION
SELECT * 
FROM stu
RIGHT JOIN course
ON stu.stu_id=course.stu_id
WHERE stu.stu_id IS NULL;

SELECT *
FROM stu
JOIN course
ON stu.stu_id=course.stu_id;
