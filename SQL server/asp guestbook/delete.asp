<!--#include file="conn.asp"-->
<html>
<head>
<title>ɾ������</title>
</head>
<body>
<form method="post" action="" name="form1">
  <p align="center">������ɾ�����룺
  <input type="password" name="password">
  <input type="submit" value="ȷ��">
</form>
<%
  if request.form("password")="123456" then
     dim sql,id
     id=request.querystring("id")
     sql="delete from tguest where id="&id
     conn.execute(sql)
     conn.close
     set conn=nothing
     response.redirect "guestbook.asp"
  elseif request("password")<>"" then
     response.write "�����������������"
  end if
%>
<hr width="80%" noshade size="1">
<div align="center"><a href="guestbook.asp">����</a></div>
</body>
</html>