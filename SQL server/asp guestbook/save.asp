<!--#include file="conn.asp"-->
<%
  dim title,body,author,email          '��������
  title=request.form("title")          '������������
  body=request.form("body")            '������������
  author=request.form("author")        '��������������
  email=request.form("email")          '����������email
  if body="" then body="û������"      '�����������Ϊ�գ���Ĭ��ֵ
  if email="" then email="û������"    '���������emailΪ�գ���Ĭ��ֵ

exec="insert into tguest(title,body,author,email)values( '"&title&"' ,'"&body&" ', '"&author&"' , '"&email&"')"
conn.execute exec
conn.close
set conn=nothing
  response.redirect "guestbook.asp"    '�ض������ʾ���Ե�ҳ�� 
%>
  