--create database teach

use teach
go

create table �γ���Ϣ��
(�γ̺�  char(5) not null primary key,
�γ��� nvarchar(20) not null,
ѧʱ int  not null,
ѧ�� int  not null
)
create table ���ű�
(���ź� char(2) not null primary key,
������ nvarchar(10) not null
)
create table ��ʦ������Ϣ��
(��ְ���� char(4) not null primary key,
���� nvarchar(8) not null,
���ź� char(2) not null,
�Ա� nchar(2) not null,
ѧ�� nvarchar(10) null,
���� int null
)
create table ��ʦ�ڿα�
(��ְ���� char(4) not null,
�γ̺� char(5) not null
)