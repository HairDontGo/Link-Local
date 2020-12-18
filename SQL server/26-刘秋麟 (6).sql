
create database teach
go
use teach
go
create table 课程信息表
(
课程号 char(5) not null ,
课程名 char(20) not null,
学时 int not null,
constraint pk_课程 primary key(课程号)
)

alter table 课程信息表
add constraint uq_课程 unique(课程号,课程名)
go

alter table 课程信息表
drop constraint pk_课程

alter table 课程信息表
add constraint pk_课程 primary key(课程号,课程名)

create table 学生成绩表
(学号 char(12) not null unique,
课程号 char(5) not null primary key,
成绩 int not null
)