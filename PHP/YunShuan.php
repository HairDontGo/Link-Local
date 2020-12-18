<?php
echo"<hr>加法<hr>";
$n1='2';
$n2='3';
echo $n1+$n2;
echo"<hr>拼接符<hr>";
echo $n1.$n2;
echo"<hr>";
echo '3'+'5';
echo"<hr>布尔加法<hr>";
echo true+true+false;

echo"<hr>除法<hr>";
echo 100/9;
echo"<br>";
echo 81/9;
echo"<hr>求余<hr>";
echo 100%9;
echo"<br>";
echo 101%9;
echo"<br>";
echo 102%9;
echo"<br>";
echo 108%9;

echo"<hr>自增<hr>";
$i=10;
$j=++$i;
echo "$i, $j";
echo"<br>";
$i=10;
$j=$i++;
echo "$i, $j";

echo"<hr>比较运算符<hr>";
$a=10;
$b=15;
echo $a<$b;
echo"<br>";
echo $a>$b;
echo"<br>";
var_dump(3>12);
echo"<br>";
var_dump(3<12);
echo"<br>";
var_dump('3'>'12');
echo"<br>";
var_dump('abc'>'ABC');
echo"<br>";
var_dump(3!=12);
echo"<br>";
var_dump(1==true);
echo"<br>";
var_dump(0=="");  

echo"<hr>逻辑运算符<hr>";
$name='root';
$pwd='123456';
$login=$name==='root' && $pwd==='123456';
echo"登陆成功了吗:$login";

echo"<br>";
$age=30;
$ok=$age<=60&&$age>=18;
echo "能否成功贷款$ok";
echo"<hr>";

$y=2000;
$sfrn=(($y%4)==0&&($y%100)!=0)||($y%400)==0;
echo"$y是否是闰年$sfrn";

echo"<hr>";
$prices=101;
$prices>=100&&$prices=$prices*0.8;
echo $prices;

echo"<hr>三目运算<hr>";
$t1=60;
$t2=80;
$T=$t1>$t2?$t1:$t2;
echo "成绩较高的是$T";
echo"<hr>";

$score=80.5;
$result=$score<60? '不及格':($score<80?'及格' : '优秀');
echo $result;


?>