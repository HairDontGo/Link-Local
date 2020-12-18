<?php

$userName='aic';
echo $userName;

#echo $username;   #错误! PHP严格区分大小写
#echo '$userName';  #错误! 输出 '$userName'字符串

echo '<br>';
$userpassword='000001';
echo '<br>';

$registerTime='2019-10-11';
#PHP预定义函数:var_dump($变量名) 输出变量的的类型和值
var_dump($registerTime);
echo '<br>';

$loginCount=50;
echo $loginCount;
echo '<br>';
$loginCount=$loginCount+1;
echo $loginCount;

?>