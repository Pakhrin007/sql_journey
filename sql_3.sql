show databases

use parks_and_recreation
show tables
select * from employee_salary

-- where statement
select * from employee_salary
where salary>=45000 

-- we can also use comparison operator in this statement

show tables

select * from employee_demographics

select * from employee_demographics 
where gender='male'
and
age>30

select * from employee_demographics 
where gender='male'
or
age>30

select * from employee_demographics 
where not gender='male'

select * from employee_demographics 
where last_name not like 't%'


-- like statement 
-- % and _ 

select * from employee_demographics 
where first_name like 'a%'

select * from employee_demographics 
where first_name like 'a____'