-- union Joins

show databases;

use parks_and_recreation;

show tables;

select * from employee_demographics;

select * from employee_salary;

select first_name ,'old_man' as Label
from employee_demographics
where age>30 and gender="Male"
union
select first_name,'old_Lady' as Label
from employee_demographics 
where age>30 and gender="Female"
union
select firstname , 'highly paid' as Label
from employee_salary
where salary>50000 ;