--Ҫ���Ͻ���ҵ ����ͬѧ���������ʵѵ�󣬽��ļ���������ѧ�������λ+���������磺10������ ���ύ��ҵ
--��
--1��	ͨ��SQL�������Ϊscore�����ݿ⡣

create database score

--2��	ͨ��SSMS������������Ϊscore2�����ݿ⣬Ҫ�����һ���������ļ���һ��������־�ļ�
--�����ļ����߼�����Ϊscore2_data,��������Ϊscore2_data.mdf����ʼ��СΪ3MB�����Ϊ8MB�������ٶ�Ϊ10%
--��������־�ļ����߼���Ϊscore2_log ����������Ϊscore2_log.ldf����ʼ��СΪ2MB,����С�������� �������ٶ�Ϊ 1MB ��

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

--3��	ͨ��SQL��佨����Ϊscore3�����ݿ⣬Ҫ�����һ���������ļ���һ���������ļ���һ��������־�ļ�
--�����ļ����߼�����Ϊscore3_data,��ʼ��СΪ3MB�����Ϊ10MB�������ٶ�Ϊ10%
--���������ļ����߼�����Ϊscore3_data1����ʼ��СΪ2MB�����Ϊ5MB�������ٶ�Ϊ1MB
--��������־�ļ����߼���Ϊscore3_log ����ʼ��СΪ2MB,����С�������� �������ٶ�Ϊ 1MB ��

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

--4��	����鱾  ��5-3����5-4
 ----��5-3
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
 ----��5-4

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
------ʵѵ����T-SQL��� ����һ�����ݿ⣬����Ϊ����������ĸ��Ϊ���ݿ����һ�������ļ���һ����־�ļ���Ȼ���޸�ĳ�������ļ��������ӵ��ļ�ɾ����
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
