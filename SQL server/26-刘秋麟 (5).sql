create database teach
go
use teach
go
create table course
(course_id char(5) primary key not null,
course_name char(20) not null,
period int not null,
credit int not null,
unique(course_name))
go

create table department
(dept_id char(2)  not null,
dept_name char(10) not null,
)
go

create table teacher
(teacher_id char(4) not null,
teacher_name char(8),
dept_id char(2) not null,
sex char(2) not null,
Schooling char(10) null,
age int null,
primary key(teacher_id)
)
go

use teach
go
alter table course
add c_type char(12)

use teach
go
alter table teacher
alter column teacher_name char(12) not null

use teach
go
alter table department
drop column dept_name

use teach
go
alter table department
add dept_name nchar(12) not null

use teach
go
alter table teacher
drop column dept_id

use teach
go
sp_rename 'department.dept_name','部门名称','column'

use teach
go
sp_rename 'teacher','教师信息表'

use teach
go
drop table 教师信息表





