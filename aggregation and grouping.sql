SHOW DATABASES
USE techforallwithpriya
SHOW TABLES

-- 1. count the number of the studens who joined the course via linkedIn,YouTube,community

SELECT * FROM learners

SELECT learner_SOJ, COUNT(*) as num_of_community
FROM learners
GROUP BY learner_SOJ

-- 2. corresponding to each course how many students have enrolled?

SELECT selected_course, COUNT(*) as num_of_students
FROM learners
GROUP BY selected_course

-- 3. coreesponding to individual source of joining give the maximum years of experience any person

SELECT * FROM learners
SELECT learner_SOJ, years_of_experience, COUNT(*) as num_of_students
FROM learners
GROUP BY learner_SOJ,years_of_experience ORDER BY max(years_of_experience) DESC

SELECT learner_SOJ , MAX(years_of_experience) as max_year
FROM learners
GROUP BY learner_SOJ

-- 4. coreesponding to individual source of joining give the minimum years of experience any person
SELECT learner_SOJ , MIN(years_of_experience) as max_year
FROM learners
GROUP BY learner_SOJ

-- 5. coreesponding to individual source of joining give the average years of experience any person

SELECT learner_SOJ , AVG(years_of_experience) as max_year
FROM learners
GROUP BY learner_SOJ

SELECT learner_SOJ , SUM(years_of_experience) as max_year
FROM learners
GROUP BY learner_SOJ

SELECT learner_SOJ, COUNT(*) as num_of_student
FROM learners
GROUP BY learner_SOJ
HAVING num_of_student>1;

-- 5. display the count of the thos student who joined only linkedIN

SELECT learner_SOJ, COUNT(*) as num_of_students
FROM learners
GROUP BY learner_SOJ
HAVING learner_SOJ = 'linkedIn'

SELECT * FROM learners
WHERE years_of_experience<8 AND learner_SOJ='linkedIn' AND location='bengaluru'

DESC employee
ALTER TABLE employee ADD COLUMN jobposition varchar(50)
SELECT * FROM employee