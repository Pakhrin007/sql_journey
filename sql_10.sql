show databases;

use parks_and_recreation;

show tables;

-- sub- Queries

-- its just like joins 

select * from employee_demographics;

select * from employee_salary;

select * from employee_demographics 
where employee_id in(
			select employee_id from employee_salary 
            where dept_id=1
            )
            
-- subqueries in select

SELECT firstname, salary,
       (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM employee_salary;

-- subqueries in from 

SELECT gender, AVG(max_age) AS avg_max_age
FROM (
    SELECT gender, MAX(age) AS max_age
    FROM employee_demographics
    GROUP BY gender
) AS subquery
GROUP BY gender;

