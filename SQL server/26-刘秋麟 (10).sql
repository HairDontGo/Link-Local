use jxgl
go
select sum(成绩) as 总成绩,AVG(成绩) as 平均成绩
from 选课成绩表 where 学生编号 = 980104

select COUNT(*) as 总数
from 学生表 

select count(班级) as 网工001班人数
from 学生表 where 班级= '网工001'
select count(班级) as 网工002班人数
from 学生表 where 班级= '网工002'
select count(班级) as 网工992班人数
from 学生表 where 班级= '网工992'
select count(班级) as 计应001班人数
from 学生表 where 班级= '计应001'
select count(班级) as 计应002班人数
from 学生表 where 班级= '计应002'
select count(班级) as 计应992班人数
from 学生表 where 班级= '计应992'
select count(班级) as 软件001班人数
from 学生表 where 班级= '软件001'
select count(班级) as 软件002班人数
from 学生表 where 班级= '软件002'
select count(班级) as 软件992班人数
from 学生表 where 班级= '软件992'
select count(班级) as 电商001班人数
from 学生表 where 班级= '电商001'
select count(班级) as 电商002班人数
from 学生表 where 班级= '电商002'
select count(班级) as 电商992班人数
from 学生表 where 班级= '电商992'


select 学生编号,SUM(成绩) as 总分,AVG(成绩) as 平均分
from 选课成绩表 
group by 学生编号 
order by  总分 desc

