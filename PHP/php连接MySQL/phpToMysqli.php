<?php
///////////PHP访问数据库/////////////

///连接数据库服务器
$conn=mysqli_connect("127.0.0.1","root","","jd",3306);

///提交sql命令给服务器执行
$sql="insert into dept values (60,'testing')";
$result=mysqli_query($conn,$sql); //提交执行并获得返回值

///查看执行结果
if ($result===false) {
	echo "sql命令执行失败!请检查:$sql";
} else {
	echo "sql命令执行成功!";
}







?>