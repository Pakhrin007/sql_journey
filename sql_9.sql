-- string functions

use parks_and_recreation;

show tables;

select * from employee_demographics;

-- length()

select first_name, length(first_name)
from employee_demographics
order by first_name ;

-- upper()

select first_name,upper(first_name)
from employee_demographics

-- lower()

select first_name,lower(first_name)
from employee_demographics;

select rtrim('          sky            ');

select first_name,left(first_name,2)
from employee_demographics

select first_name,right(first_name,2)
from employee_demographics;

select first_name, substring(first_name,2,1)
from employee_demographics;

select * from employee_demographics;

select first_name, substring(DOB,6,2)
from employee_demographics;

-- replace

select first_name, replace(first_name,'a','z')
from employee_demographics;

-- locate()

select first_name, locate('a',first_name)
from employee_demographics;

-- concatenation

select first_name, last_name ,concat(first_name,' ',last_name) as fullname
from employee_demographics;