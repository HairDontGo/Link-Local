<?php

$con=mysqli_connect("127.0.0.1","root","","jd","3306");
$up="update emp set 
salary=5000,birthday='2001-8-9',deptId=40 
where deptId=30";
$rt=mysqli_query($con,$up);
if ($rt===false) {
	echo "失败,请检查代码: $up";
} else {
	echo "成功了吗";
}
















?>
