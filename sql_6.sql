show databases;

use parks_and_recreation;

show tables;

select * from employee_demographics;

alter table employee_demographics
drop column mother_name;

select * from employee_salary;

-- inner Joins
SELECT *
FROM employee_demographics 
INNER JOIN employee_salary 
ON employee_demographics.employee_id = employee_salary.employee_id;

-- aliasing
select * from employee_demographics as ed
inner join employee_salary  as es
on ed.employee_id=es.employee_id;

select ed.first_name, es.firstname from employee_demographics as ed
inner join employee_salary  as es
on ed.employee_id=es.employee_id;

-- outer joins
-- outer joins have two types on is left and another is right joing

select * from employee_demographics as ed
left join employee_salary as es
on ed.employee_id=es.employee_id;

select * from employee_demographics as ed
right join employee_salary as es
on ed.employee_id=es.employee_id;

-- self join

select emp.first_name,
emp.employee_id,
emp1.employee_id,
emp1.first_name
 from employee_demographics as emp
join employee_demographics as emp1
on emp.employee_id+1=emp1.employee_id;


-- joining multiple tables

select * from parks_departments;
select * from employee_salary;

select * from employee_demographics as emp
inner join employee_salary as emp1
on emp.employee_id=emp1.employee_id
inner join parks_departments as emp2
on emp1.dept_id=emp2.department_id;