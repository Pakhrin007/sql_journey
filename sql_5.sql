show databases;
use parks_and_recreation;
show tables;

-- having vs where clause

select * from employee_demographics;

select gender, avg(age) 
from employee_demographics
group by gender
having avg(age)>32
;

show tables;
select * from employee_salary;

select occupation, avg(salary) as avg_salary
from employee_salary 
group by occupation 
having avg_salary>45000;


-- limit
select * from employee_salary
order by employee_id desc
limit 3;
