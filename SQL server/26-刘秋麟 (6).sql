
create database teach
go
use teach
go
create table �γ���Ϣ��
(
�γ̺� char(5) not null ,
�γ��� char(20) not null,
ѧʱ int not null,
constraint pk_�γ� primary key(�γ̺�)
)

alter table �γ���Ϣ��
add constraint uq_�γ� unique(�γ̺�,�γ���)
go

alter table �γ���Ϣ��
drop constraint pk_�γ�

alter table �γ���Ϣ��
add constraint pk_�γ� primary key(�γ̺�,�γ���)

create table ѧ���ɼ���
(ѧ�� char(12) not null unique,
�γ̺� char(5) not null primary key,
�ɼ� int not null
)