create database facebook;
use facebook;

create table User_details(
id int primary key auto_increment,
name varchar(100) not null,
Phone_Number int not null,
E_Mail varchar(100) not null,
Date datetime default now()
)

desc User_details;

create table Post
(
post_id int primary key auto_increment,
Post_Title varchar(100) not null,
Post_Body text,
Post_date datetime default now(),
userid int not null,
foreign key(userid) references User_details(id)
)

desc Post;

create table Comments(
post_id int not null,
comment text,
commented_date datetime,
foreign key(post_id) references Post(post_id)
)
desc Comments;

insert into User_details(name,Phone_Number,E_Mail) values(
'Aryan',10101,'pakhrinp242@gmail.com'
)

insert into Post(Post_Title,Post_Body,userid) values
(
'awesome','you are so awesome',1
)

insert into Comments(Post_id,comment) values(
1,'you are so adorable and so cool!!!'
)

select * 
from User_details 
inner join Post 
on User_details.id = Post.userid
inner join Comments
on Post.Post_id=Comments.Post_id;
