<?php

$i=20;
var_dump($i);
echo '<hr>';

$age='20';
var_dump($age);
echo'<br>';
echo '用户年龄为:$age';
echo'<br>';
echo "用户年龄为:$age";
echo'<hr>';

$max=999999999999;
var_dump($max);
echo'<br>';
$bi=$max+1;
var_dump($bi);
echo'<hr>';

$isornot=true;
var_dump($isornot);
echo'<br>';
$issleep=false;
var_dump($issleep);
echo'<hr>';

$not=false;
echo $not;
echo '<br>';
echo'<hr>';
$is=true;
echo "$is<hr>";

$ageSET=[19,20,38,45,59];
var_dump($ageSET);
#echo $ageSET; 		//Array => String × 

echo "<br>";
$nameSET=['tom',
'amy',
'kin',
'scort'];
var_dump($nameSET).'<br>';
echo count($nameSET).'<br>';
echo $nameSET[2].'<br>';
$nameSET[2]='kinking';
echo $nameSET[2].'<br>';


$cj=[60,65,70,75,80,85];
for ($i=0; $i <count($cj) ; $i++) { 
	echo $cj[$i]."|";
}

for ($i1=1; $i1 < count($cj); $i1+=2) { 
		$cj[$i1]+=5; 
	
}
echo "<hr>";
 
$nset=[];
$nset[0]='tom';
$nset[1]='timy';
$nset[2]='akarly';
$nset[3]='simth';
for ($i=0; $i < count($nset); $i++) { 
	echo $nset[$i].'|';
}
echo "<hr>";

$USER=['00001','nameS','123WAD','2019-08-08',true];
for ($i=0; $i < count($USER); $i++) { 
	echo $USER[$i].'|';
}
echo "<hr>";

$books=['id'=>12012,
'name'=>'黑暗中的星光',
'prices'=>43,
'productionDate'=>'2017/10/14',
'onSale'=>false];

echo '|书籍编号:'.$books['id'];
echo '|书籍名称:'.$books['name'];
echo '|书籍价格:'.$books['prices'];
echo '|出版日期:'.$books['productionDate'];
echo '|是否特价:'.$books['onSale'];  //正确语法
$books=['who'=>'郭敬明'];
echo '|作者:'.$books['who'];   //正确语法
//echo "<br>作者:$books['who']";   #错误语法
echo "<br>作者:$books[who]";   //正确语法



//////////练习///////////




















?>