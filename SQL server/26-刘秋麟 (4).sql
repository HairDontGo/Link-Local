--create database teach

use teach
go

create table 课程信息表
(课程号  char(5) not null primary key,
课程名 nvarchar(20) not null,
学时 int  not null,
学分 int  not null
)
create table 部门表
(部门号 char(2) not null primary key,
部门名 nvarchar(10) not null
)
create table 教师基本信息表
(教职工号 char(4) not null primary key,
姓名 nvarchar(8) not null,
部门号 char(2) not null,
性别 nchar(2) not null,
学历 nvarchar(10) null,
年龄 int null
)
create table 教师授课表
(教职工号 char(4) not null,
课程号 char(5) not null
)