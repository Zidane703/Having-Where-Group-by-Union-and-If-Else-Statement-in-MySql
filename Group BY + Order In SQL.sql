SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


SELECT *
FROM employee_demographics
ORDER BY gender, age DESC; #SORTTED START FROM HIGHEST

SELECT *
FROM employee_demographics
ORDER BY  gender, age;




	


