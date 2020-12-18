use jxgl
go

create view grade_view
as
select 学号,姓名,班级,成绩
from 选课成绩表,学生表
where 课程编号=101
ORDER BY dbo.选课成绩表.成绩 DESC
go

create view student_view
as
select 学号,姓名,班级,性别
from 学生表
go

create view 成绩_view
with encryption
as
select 学号,姓名,课程名称,成绩
from 课程表,学生表,选课成绩表
go

sp_helptext student_view


alter view student_view
as
select 学号,姓名,班级,性别
from 学生表
where 性别='男'

insert into student_view
values('980121','彭小小','网工001','女')

select*from 成绩_view
