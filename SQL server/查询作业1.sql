use jxgl
go
select *
from 学生表 
where 家庭住址 like '安徽%'

select *
from 教师表
where 姓名 like '[李,王,张]%'

select *
from 教师表
where 姓名 like '李_' 

select *
from 教师表
where 姓名 like '[^李,王,张]%'

select  *  
from  学生表
where  家庭住址 is not null

select  *  
from  学生表
where  家庭住址 like '[^null]%'

select 编号,姓名,工资, 工资*1.1  as '提高后的工资'
from  教师表 

---7

select avg(成绩) as  平均成绩 from 选课成绩表 
select sum(成绩) as 总成绩 from 选课成绩表
where 学生编号 ='980104'

select COUNT(*) as 学生数 from 学生表 