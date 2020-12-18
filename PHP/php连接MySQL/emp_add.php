<?php
$con=mysqli_connect("127.0.0.1","root","","jd",3306);

$insert="insert into emp
 	values('16','akol',0,7456.85,'2000-10-14',50)";
$result=mysqli_query($con,$insert);

if ($result===false) {
	echo "失败!请检查$insert";
} else {
	echo "成功";
}




















?>