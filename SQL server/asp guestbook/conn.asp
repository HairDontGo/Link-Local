<%
    dim conn,rs,connstr
   	set Conn=server.createobject("adodb.connection")
   	ConnStr="driver={SQL Server};server=(local);UID=sa;PWD=123;Database=guest"
	set rs=server.createobject("adodb.recordset")
	Conn.Open ConnStr
%>