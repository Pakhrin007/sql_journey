
-- use of select statement
-- use parks_and_recreation

-- select * from parks_and_recreation.employee_demographics;

-- select distinct gender from parks_and_recreation.employee_demographics
-- distinct is used for the uniqueness of the data 

-- revision

-- create table   

-- create table data(Id int,
-- name varchar(50),
-- address varchar(50)
-- )

-- inserting into table
-- insert into data values (1,'arya','pakhrin'),
-- insert into data values(2,'santosh','paudel'),
-- (3,'ayush','karkee')
select * from data


-- adding column
alter table data
add mother_name varchar(50)
-- changing the column name
ALTER TABLE data 
CHANGE COLUMN mother_name father_name VARCHAR(50);

-- to modify the datatype
alter table data
modify father_name varchar(200)

desc data;
-- to delete the column
alter table data
drop father_name

-- to delete all the data without deleting table

truncate table data;
select * from data