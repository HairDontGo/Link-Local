--要求上交作业 ，请同学们完成下述实训后，将文件重命名（学号最后两位+姓名，例如：10张三） 后提交作业
--。
--1、	通过SQL命令建立名为score的数据库。

create database score

--2、	通过SSMS管理器建立名为score2的数据库，要求包含一个主数据文件和一个事务日志文件
--。主文件的逻辑名称为score2_data,物理名称为score2_data.mdf，初始大小为3MB，最大为8MB，增长速度为10%
--。事务日志文件的逻辑名为score2_log ，物理名称为score2_log.ldf，初始大小为2MB,最大大小不受限制 ，增长速度为 1MB 。

create database score2
on primary
 (
name='score2_data',
filename='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\score2_data.mdf',
size=3,
maxsize=8,
filegrowth=10%
)
LOG ON
(
name ='score2_log',
filename='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\score2_log.ldf',
size=2,
maxsize=unlimited,
filegrowth=1
)

--3、	通过SQL语句建立名为score3的数据库，要求包含一个主数据文件、一个次数据文件和一个事务日志文件
--。主文件的逻辑名称为score3_data,初始大小为3MB，最大为10MB，增长速度为10%
--。次数据文件的逻辑名称为score3_data1，初始大小为2MB，最大为5MB，增长速度为1MB
--。事务日志文件的逻辑名为score3_log ，初始大小为2MB,最大大小不受限制 ，增长速度为 1MB 。

create database score3
on primary
(
name='score3_data',
size=3,
maxsize=10,
filename='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\score3_data.mdf',
filegrowth=10%)
,
(
name='score3_data1',
size=2,
maxsize=5,
filename='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\score3_data1.ndf',
filegrowth=1
)
LOG ON
(
name='score3_log',
size=2,
maxsize=unlimited,
filename='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\score3_data.ldf',
filegrowth=1
)

--4、	完成书本  例5-3、例5-4
 ----例5-3
 create database student2
 on primary
 (name='student2_data',
 filename='D:\data\student2_data.mdf', 
 size=5,
 maxsize=20,
 filegrowth=20%
 )
 log on
 (name='student2_log',
 filename='D:\data\student2_log.ldf',
 size=5,
 maxsize=10,
 filegrowth=2
 )
 ----例5-4

create database students
on
(name='student',
filename='D:\data\student.mdf',
size=5,
maxsize=unlimited,
filegrowth=10%
)
,
Filegroup FG1
(name=students2,
filename='D:\data\student.ndf',
size=10,
maxsize=100,
filegrowth=1
)
log on
(name=student_log1,
filename='D:\data\student_log1.ldf',
size=5,
maxsize=50,
filegrowth=1
)
,
(name=student_log2,
filename='D:\data\student_log2.ldf',
size=5,
maxsize=50,
filegrowth=1
)
------实训：用T-SQL语句 创建一个数据库，命名为姓名的首字母，为数据库添加一个数据文件和一个日志文件，然后修改某个数据文件，最后将添加的文件删除。
create database LQL
alter database LQL
add file
(name='LQL_mdf',
filename='D:\data\LQL_mdf.mdf',
size=5,
maxsize=100,
filegrowth=3
)
alter database LQL
add log file
(name='LQL_ldf',
filename='D:\data\LQL_ldf.ldf',
size=2,
maxsize=10,
filegrowth=1
)
alter database LQL
modify  file
(name='lql',
size=8,
maxsize=unlimited,
filegrowth=10%
)
alter database LQL
remove file LQL_ldf
