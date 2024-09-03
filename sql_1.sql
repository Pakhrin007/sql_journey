create database parks_and_recreation
use parks_and_recreation

create table employee_demographics(
employee_id int not null,
first_name varchar(50),
last_name varchar(50),
age int,
gender varchar(50),
DOB date,
primary key (employee_id)
);

create table employee_salary(
employee_id int,
firstname varchar(50),
lastame varchar(50),
occupation varchar(50),
salary int,
dept_id int
)

create table parks_departments(
department_id int,
department_name varchar(50),
primary key(department_id)
)

show tables;

INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, DOB)
VALUES 
(1, 'John', 'Doe', 30, 'Male', '1993-05-20'),
(2, 'Jane', 'Smith', 28, 'Female', '1995-08-15'),
(3, 'Sam', 'Taylor', 35, 'Male', '1988-02-10'),
(4, 'Emily', 'Johnson', 25, 'Female', '1998-12-01');

INSERT INTO employee_salary (employee_id, firstname, lastame, occupation, salary, dept_id)
VALUES 
(1, 'John', 'Doe', 'Park Manager', 55000, 1),
(2, 'Jane', 'Smith', 'Ranger', 45000, 2),
(3, 'Sam', 'Taylor', 'Groundskeeper', 40000, 2),
(4, 'Emily', 'Johnson', 'Administrative Assistant', 42000, 3);

INSERT INTO parks_departments (department_id, department_name)
VALUES 
(1, 'Management'),
(2, 'Field Operations'),
(3, 'Administration');

select * from employee_demographics

update employee_demographics
set first_name='aryan'
where employee_id=1

update employee_demographics 
set last_name="tamang"
where employee_id=1

select * from employee_salary
DESCRIBE employee_salary;

alter table employee_salary 
change lastame lastname varchar(50)

UPDATE employee_salary
SET firstname = 'Aryan'
WHERE employee_id = 1;

create table ran(firs varchar(50),
last varchar(50)
)
insert into ran (firs,last) values
( 'aryan','pakhrin')

-- changing the columnname

alter table ran
add rolln0 int

-- modift the column datatype
alter table ran
modify last varchar(100)
desc ran

-- to drop the colum 
alter table ran
drop rolln0

-- to delete all data from table
truncate table ran;
