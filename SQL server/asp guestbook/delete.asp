<!--#include file="conn.asp"-->
<html>
<head>
<title>删除留言</title>
</head>
<body>
<form method="post" action="" name="form1">
  <p align="center">请输入删除密码：
  <input type="password" name="password">
  <input type="submit" value="确定">
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
     response.write "密码错误，请重新输入"
  end if
%>
<hr width="80%" noshade size="1">
<div align="center"><a href="guestbook.asp">返回</a></div>
</body>
</html>