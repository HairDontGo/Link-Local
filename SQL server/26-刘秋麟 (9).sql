 create  database  学生管理数据库
 go
 use  学生管理数据库
 go
 create  table  学生信息表
 (
 学号  char(12) not null,
 姓名  nvarchar(50) not null,
 性别  nchar(1)

 )
 create  table  学生成绩表 
 (
 学号  char(12)  not null,
 课程号  char(10) not null,
 成绩  tinyint
 )
go

alter  table  学生信息表
add  constraint  PK_学号
primary key(学号)

alter  table  学生成绩表
add  constraint  FK_学号
foreign  key(学号)
references  学生信息表(学号)

use  学生管理数据库
go
insert  into   学生信息表(学号,姓名,性别)
values('1001','刘德华','男')

insert   学生信息表(学号,姓名,性别)
values('1002','张学友','男')

insert   学生信息表
values('1003','黎明','男')

insert   学生信息表(学号,姓名)
values('1004','郭富城')

insert   学生信息表
values('1005','王舞','男'),('1006','李式','男'),('1007','刘柒','男')

use  学生管理数据库
go
update  学生信息表
set  性别='女'

update  学生信息表
set  性别='男'
where  姓名='张学友'


alter  table  学生信息表
add  家庭住址  nvarchar(30)

update  学生信息表
set 备注='已毕业',家庭住址='广东'

delete  学生信息表
where  学号='1003' 

truncate  table  学生信息表



-----------6.4.4 merge语句(参照书本再验证一遍)--------------

create table 源表
(产品编号 char(7) primary key,
产品名称 nvarchar(30) not null,
价格 decimal(13,2) default 0)
insert into 源表 values
('4100037','U盘','50'),('4100038','鼠标','30')
 
 create table 目标表
 (
 产品编号 char(7) primary key ,
 产品名称 nvarchar(30) not null,
 价格 decimal(13,2) default 0)
 
 merge 目标表 as d using 源表 as s
 on s.产品编号 =d.产品编号
 when not matched then insert(产品编号,产品名称,价格)
 values(s.产品编号,s.产品名称,s.价格);
 
 update 源表 
 set 价格=55 
 where 产品编号='4100037'
 
 merge 目标表 as d using 源表 as a
 on s.产品编号
 
  