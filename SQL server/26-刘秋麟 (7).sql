create database teach
go
use teach

create table �γ���Ϣ��
(
�γ̺� char(5) not null constraint pk_�γ� primary key(�γ̺�),
�γ��� char(20) not null ,
ѧʱ int 
)
alter table �γ���Ϣ��
add constraint df_�γ��� default'���ݿ⼼����Ӧ��'for �γ���

create table ѧ���ɼ���
(
ѧ�� char(12) not null constraint pk_ѧ�� primary key(ѧ��),
�γ̺� char(5) not null constraint uk_�γ� unique(�γ̺�),
�ɼ� int
)
alter table ѧ���ɼ���
add constraint ck_�ɼ� check(�ɼ�>=0 and �ɼ�<=100)
