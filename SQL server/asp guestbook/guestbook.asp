<!--#include file="conn.asp"-->
<html>
<head>
<title>���԰�</title>
</head>
<body>
<h2 align="center">���԰�</h2>
<table width="80%" align="center">
  <tr>
    <td><a href="input.htm">ǩд������</a></td>
  </tr>
</table>
<%
 '���ڿ�ʼ��ʾ��������
dim sql,page,n                           '��������
page=clng(request.querystring("page"))   '����ҳ�ţ���ת������ֵ����
'����SQL��ѯ�ַ�������guest����ȡ�����е��������ݣ�����id�ŵ������У���������������ǰ��
sql="select * from tguest order by id desc"
rs.open sql,conn,1,1                     '����һ��recordset����
if rs.bof and rs.eof then
   response.write("û���κ����ԡ�")      '���û�м�¼���������ʾ��Ϣ
   response.end()                        '���ֹͣ           
end if
n=5                                      '��ÿҳ�ļ�¼���������n��
rs.pagesize=n                            '����ÿҳ�ļ�¼��Ϊn��
if page<=1 then page=1                   '����ҳ�ŵĺ�����(��Ӧ������Сҳ��)
if page>rs.pagecount then page=rs.pagecount  '����ҳ�ŵĺ�����(��Ӧ�������ҳ��)
rs.absolutepage=page                     '���õ�ǰҳ��
do while not rs.eof and n>0              '����ѭ��������ʾ��ǰҳ�ļ�¼
%>
<table  width="80%" align="center">
   <tr>
      <td colspan=3><hr></td></tr>
   <tr>
      <td width="20%">����</td>
      <td width="50%"><b><%=rs("title")%></b></td>
      <td width="30%"><a href="delete.asp?id=<%=rs("id")%>" title="����ר��">����</a></td></tr>
   <tr>
      <td>����</td>
      <td colspan=2><%=rs("body")%></td></tr>
   <tr>
      <td>������</td>
      <td colspan=2><a href="mailto:<%=rs("email")%>" title="�����߷���"><%=rs("author")%></a></td></tr>
   <tr>
      <td>ʱ��</td>
      <td colspan=2><%=rs("submit_date")%></td></tr>
</table>
<%
rs.movenext            '����¼ָ���ƶ�����һ����¼
n=n-1
loop
'�رռ�¼��������Ӷ��󣬲��ͷ�����ռ��Դ
rs.close
conn.close
set rs=nothing
set conn=nothing
%>
<hr width="80%" noshade size="1">
<div align="center"><a href=guestbook.asp?page=<%=page-1%>>��һҳ</a>
  <a href=guestbook.asp?page=<%=page+1%>>��һҳ</a>
</div>
</body>
</html>





















