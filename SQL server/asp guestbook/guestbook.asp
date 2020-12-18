<!--#include file="conn.asp"-->
<html>
<head>
<title>留言板</title>
</head>
<body>
<h2 align="center">留言板</h2>
<table width="80%" align="center">
  <tr>
    <td><a href="input.htm">签写新留言</a></td>
  </tr>
</table>
<%
 '现在开始显示已有留言
dim sql,page,n                           '声明变量
page=clng(request.querystring("page"))   '接收页号，并转换成数值类型
'设置SQL查询字符串：从guest表中取出所有的留言数据，并按id号倒序排列，即最新留言排在前面
sql="select * from tguest order by id desc"
rs.open sql,conn,1,1                     '返回一个recordset对象
if rs.bof and rs.eof then
   response.write("没有任何留言。")      '如果没有记录，则输出提示信息
   response.end()                        '输出停止           
end if
n=5                                      '将每页的记录数放入变量n中
rs.pagesize=n                            '设置每页的记录数为n条
if page<=1 then page=1                   '设置页号的合理数(不应低于最小页号)
if page>rs.pagecount then page=rs.pagecount  '设置页号的合理数(不应大于最大页号)
rs.absolutepage=page                     '设置当前页号
do while not rs.eof and n>0              '利用循环依次显示当前页的记录
%>
<table  width="80%" align="center">
   <tr>
      <td colspan=3><hr></td></tr>
   <tr>
      <td width="20%">主题</td>
      <td width="50%"><b><%=rs("title")%></b></td>
      <td width="30%"><a href="delete.asp?id=<%=rs("id")%>" title="版主专用">管理</a></td></tr>
   <tr>
      <td>内容</td>
      <td colspan=2><%=rs("body")%></td></tr>
   <tr>
      <td>留言人</td>
      <td colspan=2><a href="mailto:<%=rs("email")%>" title="给作者发信"><%=rs("author")%></a></td></tr>
   <tr>
      <td>时间</td>
      <td colspan=2><%=rs("submit_date")%></td></tr>
</table>
<%
rs.movenext            '将记录指针移动到下一条记录
n=n-1
loop
'关闭记录对象和连接对象，并释放其所占资源
rs.close
conn.close
set rs=nothing
set conn=nothing
%>
<hr width="80%" noshade size="1">
<div align="center"><a href=guestbook.asp?page=<%=page-1%>>上一页</a>
  <a href=guestbook.asp?page=<%=page+1%>>下一页</a>
</div>
</body>
</html>





















