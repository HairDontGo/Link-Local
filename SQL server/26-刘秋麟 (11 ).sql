--һ��1��
create database ������
on primary
(
name='������_data',
size=10,
maxsize=unlimited,
filename='D:\����������ݿ�\������_data.mdf',
filegrowth=10%)
,
(
name='������_n',
size=5,
maxsize=unlimited,
filename='D:\����������ݿ�\������_n.ndf',
filegrowth=20%
)
LOG ON
(
name='������_log',
size=1,
maxsize=5,
filename='D:\����������ݿ�\������_log.ldf',
filegrowth=1
)

--2��
use ��Ʒ�������ݿ�
alter database ��Ʒ�������ݿ�
add log file
(name='������_log',
size=5,
maxsize=100,
filegrowth=1
)



--����1��

create table ��������Ϣ��
(�������� nchar(20) not null primary key,
���������� nvarchar(20) not null,
������ nchar(20) not null,
��ϵ�绰 char(11) not null
)
alter table ��������Ϣ��
add constraint df_���������� default'�廪��ѧ������'for ����������
alter table ��ϵ�绰
add constraint ck_�绰 check(��ϵ�绰>=10000000000 and ��ϵ�绰<=99999999999)

--2��
create table ͼ����Ϣ��
(ͼ���� varchar(20) primary key  default'QH' for ͼ����,
INBN�� nvarchar(13) constraint uk_INBN unique(INBN��),
ͼ������ varchar(50) not null,
�������� nchar(20)constraint FK_�������� foreign key references ��������Ϣ��(��������),
�������� int constraint ck_�������� check(��������>=1 and ��������<=5000)
)

--����1��
insert ��������Ϣ��(��������,����������,������,��ϵ�绰)
values('0011','�廪��ѧ������','С��','12345678910')

insert ͼ����Ϣ��(ͼ����,INBN��,ͼ������,��������,��������)
values('001','110','SQL','0011','4999')

--2��
update  ͼ����Ϣ��
set  ͼ������='���ݿ�'
where  ͼ����='001'

--3��
delete  ��������Ϣ��
where  ��������='0011' 

truncate  table  ͼ����Ϣ��


--�ġ�
use ��Ʒ�������ݿ�
go

--1��
select *
from �ͻ���Ϣ��
where ��ַ like '%����%'

--2��
select *
from ������Ϣ��
where ������� between 800 and 2000

--3��
select *
from ��Ʒ��Ϣ��
where ��Ʒ���� like '%����'or ��Ʒ���� like '%ơ��'

--4��
select *
from ������Ϣ��
where ��������=150 or ��������=200 or ��������=350

--5��
select ��ַ
from �ͻ���Ϣ��
group by  ��ַ

--6��
select *
from �ͻ���Ϣ��
where �ͻ����� like '��__'

--7��
select *
from ������Ϣ��
where ��������<=20 or  ��������>=300
