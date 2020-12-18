use jxgl
go

select *
from 学生表,选课成绩表
where 学生表.学号= 选课成绩表.学生编号

select 学号,姓名,班级,性别,课程编号,成绩
from 学生表,选课成绩表
where 学生表.学号= 选课成绩表.学生编号 and 课程编号=101

select *
from 学生表
inner join 选课成绩表 on 学生表.学号= 选课成绩表.学生编号


select 学号,姓名,班级,性别,课程编号,成绩
from 学生表
inner join 选课成绩表 on 学生表.学号= 选课成绩表.学生编号
where 姓名='刘红雨'

select  *
from  学生表  x left join  选课成绩表   y
on x.学号=y.学生编号

select  *
from  学生表  x full join  选课成绩表   y
on x.学号=y.学生编号

select  课程编号,学生编号,成绩
 from  选课成绩表
 where 选课成绩表.课程编号=选课成绩表.课程编号 and 选课成绩表.成绩=选课成绩表.成绩
