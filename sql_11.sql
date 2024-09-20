show databases;

use parks_and_recreation;

show tables;

-- window functions
select * from employee_salary;


select first_name,gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id;

-- rolling total is just like the cf im median

select first_name,gender, salary,sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id;

-- row number 

select first_name,gender,salary,
row_number() over(partition by gender order by salary desc) as row_mumber,
rank() over(partition by gender order by salary desc) as ranl_number,
dense_rank() over(partition by gender order by salary desc) as dense
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id;

