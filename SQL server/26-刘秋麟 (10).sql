use jxgl
go
select sum(�ɼ�) as �ܳɼ�,AVG(�ɼ�) as ƽ���ɼ�
from ѡ�γɼ��� where ѧ����� = 980104

select COUNT(*) as ����
from ѧ���� 

select count(�༶) as ����001������
from ѧ���� where �༶= '����001'
select count(�༶) as ����002������
from ѧ���� where �༶= '����002'
select count(�༶) as ����992������
from ѧ���� where �༶= '����992'
select count(�༶) as ��Ӧ001������
from ѧ���� where �༶= '��Ӧ001'
select count(�༶) as ��Ӧ002������
from ѧ���� where �༶= '��Ӧ002'
select count(�༶) as ��Ӧ992������
from ѧ���� where �༶= '��Ӧ992'
select count(�༶) as ���001������
from ѧ���� where �༶= '���001'
select count(�༶) as ���002������
from ѧ���� where �༶= '���002'
select count(�༶) as ���992������
from ѧ���� where �༶= '���992'
select count(�༶) as ����001������
from ѧ���� where �༶= '����001'
select count(�༶) as ����002������
from ѧ���� where �༶= '����002'
select count(�༶) as ����992������
from ѧ���� where �༶= '����992'


select ѧ�����,SUM(�ɼ�) as �ܷ�,AVG(�ɼ�) as ƽ����
from ѡ�γɼ��� 
group by ѧ����� 
order by  �ܷ� desc

