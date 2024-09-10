show databases;
use parks_and_recreation;

show tables;

select * from employee_demographics;

-- group by 
select gender , avg(age)
from employee_demographics 
group by gender; 

select gender , max(age)
from employee_demographics 
group by gender; 

select gender , avg(age), min(age)
from employee_demographics 
group by gender; 

select gender , avg(age), min(age), count(age)
from employee_demographics 
group by gender; 


  -- order by
  
select * from employee_demographics
order by gender, age asc ;