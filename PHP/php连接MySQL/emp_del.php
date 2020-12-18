<?php
$con=mysqli_connect("127.0.0.1","root","","jd",3306);
$del="delete from emp
where deptid=50";
$result=mysqli_query($con,$del);
if ($result===false) {
	echo "失败";
} else {
	echo "成功";
}









?>