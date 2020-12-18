--一、1、
create database 刘秋麟
on primary
(
name='刘秋麟_data',
size=10,
maxsize=unlimited,
filename='D:\刘秋麟的数据库\刘秋麟_data.mdf',
filegrowth=10%)
,
(
name='刘秋麟_n',
size=5,
maxsize=unlimited,
filename='D:\刘秋麟的数据库\刘秋麟_n.ndf',
filegrowth=20%
)
LOG ON
(
name='刘秋麟_log',
size=1,
maxsize=5,
filename='D:\刘秋麟的数据库\刘秋麟_log.ldf',
filegrowth=1
)

--2、
use 商品管理数据库
alter database 商品管理数据库
add log file
(name='刘秋麟_log',
size=5,
maxsize=100,
filegrowth=1
)



--二、1、

create table 出版社信息表
(出版社编号 nchar(20) not null primary key,
出版社名称 nvarchar(20) not null,
负责人 nchar(20) not null,
联系电话 char(11) not null
)
alter table 出版社信息表
add constraint df_出版社名称 default'清华大学出版社'for 出版社名称
alter table 联系电话
add constraint ck_电话 check(联系电话>=10000000000 and 联系电话<=99999999999)

--2、
create table 图书信息表
(图书编号 varchar(20) primary key  default'QH' for 图书编号,
INBN号 nvarchar(13) constraint uk_INBN unique(INBN号),
图书名称 varchar(50) not null,
出版社编号 nchar(20)constraint FK_出版社编号 foreign key references 出版社信息表(出版社编号),
发行数量 int constraint ck_发行数量 check(发行数量>=1 and 发行数量<=5000)
)

--三、1、
insert 出版社信息表(出版社编号,出版社名称,负责人,联系电话)
values('0011','清华大学出版社','小明','12345678910')

insert 图书信息表(图书编号,INBN号,图书名称,出版社编号,发行数量)
values('001','110','SQL','0011','4999')

--2、
update  图书信息表
set  图书名称='数据库'
where  图书编号='001'

--3、
delete  出版社信息表
where  出版社编号='0011' 

truncate  table  图书信息表


--四、
use 商品管理数据库
go

--1、
select *
from 客户信息表
where 地址 like '%沈阳%'

--2、
select *
from 进货信息表
where 进货金额 between 800 and 2000

--3、
select *
from 商品信息表
where 商品名称 like '%可乐'or 商品名称 like '%啤酒'

--4、
select *
from 进货信息表
where 进货数量=150 or 进货数量=200 or 进货数量=350

--5、
select 地址
from 客户信息表
group by  地址

--6、
select *
from 客户信息表
where 客户姓名 like '赵__'

--7、
select *
from 进货信息表
where 进货数量<=20 or  进货数量>=300
