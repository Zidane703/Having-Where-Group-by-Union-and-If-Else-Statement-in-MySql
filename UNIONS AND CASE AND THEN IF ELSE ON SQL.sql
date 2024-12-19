SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_salary;

SELECT last_name, gender
FROM employee_demographics
UNION #Combine table to down
SELECT occupation, salary
FROM employee_salary;

SELECT last_name, gender
FROM employee_demographics
UNION distinct
SELECT occupation, salary
FROM employee_salary;

SELECT first_name, last_name, 'young' AS Age_Label
FROM employee_demographics
WHERE age<40
UNION
SELECT first_name, last_name, 'old' AS Age_Label
FROM employee_demographics
WHERE age>40
UNION
SELECT first_name, last_name, 'High Payment' AS Payment_Level
FROM employee_salary
WHERE salary>6000
UNION
SELECT first_name, last_name, 'Low Payment' AS Payment_Level
FROM employee_salary
WHERE salary<6000;

SELECT 
    ed.first_name, 
    ed.last_name, 
    CASE 
        WHEN ed.age < 40 THEN 'young'
        ELSE 'old' 
    END AS Age_Label,
    CASE 
        WHEN es.salary > 6000 THEN 'High Payment'
        ELSE 'Low Payment' 
    END AS Payment_Level
FROM 
    employee_demographics ed
JOIN 
    employee_salary es ON ed.employee_id = es.employee_id;

SELECT *
FROM employee_demographics;
SELECT *
FROM employee_salary;

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young Employee'
    WHEN age BETWEEN 30 and 40 THEN 'Old Employee'
    WHEN age >= 40 THEN 'Out'
    
END
FROM
employee_demographics;


-- PAY INCREASE AND BONUS
--  < 5000 = 5%
-- > 5000 = 7%
-- FINNANCE = 10% Bonus 	

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 5000 THEN salary * 0.05
    WHEN salary > 5000 THEN salary * 0.07
END AS NEW__SALARY
FROM employee_salary;

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 5000 THEN salary * 1.05
    WHEN salary > 5000 THEN salary * 1.07
END AS NEW__SALARY,
CASE
	WHEN dept_id >= 4 THEN salary * 1.0
END AS BONUS
FROM employee_salary;

SELECT *
FROM employee_salary;



