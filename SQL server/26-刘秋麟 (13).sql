use jxgl
go

create view grade_view
as
select ѧ��,����,�༶,�ɼ�
from ѡ�γɼ���,ѧ����
where �γ̱��=101
ORDER BY dbo.ѡ�γɼ���.�ɼ� DESC
go

create view student_view
as
select ѧ��,����,�༶,�Ա�
from ѧ����
go

create view �ɼ�_view
with encryption
as
select ѧ��,����,�γ�����,�ɼ�
from �γ̱�,ѧ����,ѡ�γɼ���
go

sp_helptext student_view


alter view student_view
as
select ѧ��,����,�༶,�Ա�
from ѧ����
where �Ա�='��'

insert into student_view
values('980121','��СС','����001','Ů')

select*from �ɼ�_view
