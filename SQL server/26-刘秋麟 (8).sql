create database teach
go
use teach

create table �γ���Ϣ��
(
�γ̺� char(12) not null constraint pk_�γ� primary key(�γ̺�),
�γ��� char(20) not null ,
ѧʱ int 
)

alter table �γ���Ϣ��
add constraint df_�γ��� default'���ݿ⼼����Ӧ��'for �γ���

create table ѧ���ɼ���
(
�γ̺� char(5) not null ,
ѧ�� char(12) not null constraint pk_ѧ�� primary key(ѧ��),
�ɼ� int constraint uk_�ɼ� unique(�ɼ�)
)

alter table �γ���Ϣ��
add constraint FK_�γ̺�
foreign key(�γ̺�)
references ѧ���ɼ���

alter table ѧ���ɼ���
add constraint ck_�ɼ� check(�ɼ�>=0 and �ɼ�<=100)

insert �γ���Ϣ��
values('160102','�羺','100')

insert into ѧ���ɼ��� (�γ̺�,ѧ��,�ɼ�)
values ('160','С��','26'),
       ('160','��ΰ','71'),
       ('160','�Ŵ���','12')