<!--#include file="conn.asp"-->
<%
  dim title,body,author,email          '声明变量
  title=request.form("title")          '接收留言主题
  body=request.form("body")            '接收留言内容
  author=request.form("author")        '接收留言人姓名
  email=request.form("email")          '接收留言人email
  if body="" then body="没有内容"      '如果留言内容为空，则赋默认值
  if email="" then email="没有邮箱"    '如果留言人email为空，则赋默认值

exec="insert into tguest(title,body,author,email)values( '"&title&"' ,'"&body&" ', '"&author&"' , '"&email&"')"
conn.execute exec
conn.close
set conn=nothing
  response.redirect "guestbook.asp"    '重定向回显示留言的页面 
%>
  