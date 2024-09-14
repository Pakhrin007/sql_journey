-- primary key and foreign key

create database pratice;

use pratice;

create table person(
id int primary key auto_increment,
name varchar(100) not null,
phone1 int not null,
created datetime default now()
)

drop table person;

create table additional(
id int primary key auto_increment,
phone2 int not null,
personId int not null,
foreign key(personId) references person(id),
created datetime default now()
);

insert into person( name,phone1) values(
'aryan',98982)
select * from person;

insert into additional(phone2,personId) values(983493,1)

select * from additional;

describe person;
desc additional;

SELECT p.name, p.phone1, a.phone2, a.created 
FROM additional a
JOIN person p ON a.personId = p.id
WHERE a.personId = 1;
