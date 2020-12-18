create database teach
go
use teach

create table 课程信息表
(
课程号 char(12) not null constraint pk_课程 primary key(课程号),
课程名 char(20) not null ,
学时 int 
)

alter table 课程信息表
add constraint df_课程名 default'数据库技术及应用'for 课程名

create table 学生成绩表
(
课程号 char(5) not null ,
学号 char(12) not null constraint pk_学生 primary key(学号),
成绩 int constraint uk_成绩 unique(成绩)
)

alter table 课程信息表
add constraint FK_课程号
foreign key(课程号)
references 学生成绩表

alter table 学生成绩表
add constraint ck_成绩 check(成绩>=0 and 成绩<=100)

insert 课程信息表
values('160102','电竞','100')

insert into 学生成绩表 (课程号,学号,成绩)
values ('160','小玲','26'),
       ('160','王伟','71'),
       ('160','张大力','12')