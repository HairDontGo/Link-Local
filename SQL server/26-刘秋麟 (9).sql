 create  database  ѧ���������ݿ�
 go
 use  ѧ���������ݿ�
 go
 create  table  ѧ����Ϣ��
 (
 ѧ��  char(12) not null,
 ����  nvarchar(50) not null,
 �Ա�  nchar(1)

 )
 create  table  ѧ���ɼ��� 
 (
 ѧ��  char(12)  not null,
 �γ̺�  char(10) not null,
 �ɼ�  tinyint
 )
go

alter  table  ѧ����Ϣ��
add  constraint  PK_ѧ��
primary key(ѧ��)

alter  table  ѧ���ɼ���
add  constraint  FK_ѧ��
foreign  key(ѧ��)
references  ѧ����Ϣ��(ѧ��)

use  ѧ���������ݿ�
go
insert  into   ѧ����Ϣ��(ѧ��,����,�Ա�)
values('1001','���»�','��')

insert   ѧ����Ϣ��(ѧ��,����,�Ա�)
values('1002','��ѧ��','��')

insert   ѧ����Ϣ��
values('1003','����','��')

insert   ѧ����Ϣ��(ѧ��,����)
values('1004','������')

insert   ѧ����Ϣ��
values('1005','����','��'),('1006','��ʽ','��'),('1007','����','��')

use  ѧ���������ݿ�
go
update  ѧ����Ϣ��
set  �Ա�='Ů'

update  ѧ����Ϣ��
set  �Ա�='��'
where  ����='��ѧ��'


alter  table  ѧ����Ϣ��
add  ��ͥסַ  nvarchar(30)

update  ѧ����Ϣ��
set ��ע='�ѱ�ҵ',��ͥסַ='�㶫'

delete  ѧ����Ϣ��
where  ѧ��='1003' 

truncate  table  ѧ����Ϣ��



-----------6.4.4 merge���(�����鱾����֤һ��)--------------

create table Դ��
(��Ʒ��� char(7) primary key,
��Ʒ���� nvarchar(30) not null,
�۸� decimal(13,2) default 0)
insert into Դ�� values
('4100037','U��','50'),('4100038','���','30')
 
 create table Ŀ���
 (
 ��Ʒ��� char(7) primary key ,
 ��Ʒ���� nvarchar(30) not null,
 �۸� decimal(13,2) default 0)
 
 merge Ŀ��� as d using Դ�� as s
 on s.��Ʒ��� =d.��Ʒ���
 when not matched then insert(��Ʒ���,��Ʒ����,�۸�)
 values(s.��Ʒ���,s.��Ʒ����,s.�۸�);
 
 update Դ�� 
 set �۸�=55 
 where ��Ʒ���='4100037'
 
 merge Ŀ��� as d using Դ�� as a
 on s.��Ʒ���
 
  