<?php
$u1=['uid'=>'0001',
	'image'=>'H:\(1).jpg',
	'uname'=>'ark',
	'pasword'=>'2bdx789',
	'createDATE'=>'2015/8/6',
	'ONline'=>true];

$u2=['uid'=>'0002',
	'image'=>'H:\(2).jpg',
	'uname'=>'bfk',
	'pasword'=>'2vs123',
	'createDATE'=>'2013/8/6',
	'ONline'=>true];

$u3=['uid'=>'0003',
	'image'=>'H:\(3).jpg',
	'uname'=>'mingmin',
	'pasword'=>'mingming',
	'createDATE'=>'2017/8/6',
	'ONline'=>false];

$u4=['uid'=>'0004',
	'image'=>'H:\(4).jpg',
	'uname'=>'wdf',
	'pasword'=>'bdx456',
	'createDATE'=>'2018/8/6',
	'ONline'=>false];

$userID=[$u1,$u2,$u3,$u4];

var_dump($userID);
echo "<hr>";

for ($i=0; $i <count($userID) ; $i++) { 
	$arry=$userID[$i];
	
	echo "$arry[uid]&nbsp&nbsp";
	echo "$arry[image]&nbsp&nbsp";
	echo "$arry[uname]&nbsp&nbsp";
	echo "$arry[pasword]&nbsp&nbsp";
	echo "$arry[createDATE]&nbsp&nbsp";
	echo "$arry[ONline]&nbsp&nbsp<br>";
}
echo "<hr>";

$dindan0=['编号'=>10010,
'接收人'=>'TOM1',
'电话'=>'010-2218797',
'货到付款'=>true];

/* foreach ($dindan0 as $key =>$编号 ) {    //输出下标
	echo "$key&nbsp";
}
echo "<br>"; */

foreach ($dindan0 as $key =>$v) {   	//输出元素
	echo "$key-$v<br>";
}
echo "<hr>";

$dindan1=['编号'=>10011,
'接收人'=>'TOM2',
'电话'=>'010-2018795',
'货到付款'=>false];
$dindan2=['编号'=>10012,
'接收人'=>'TOM3',
'电话'=>'010-2018793',
'货到付款'=>false];
$dindan3=['编号'=>10013,
'接收人'=>'TOM4',
'电话'=>'010-2018792',
'货到付款'=>true];
$dindan4=['编号'=>10014,
'接收人'=>'TOM5',
'电话'=>'010-2018791',
'货到付款'=>true];

$DingDan=[$dindan0,$dindan1,$dindan2,$dindan3,$dindan4];

foreach ($DingDan as $key ) {
	echo $key['编号']."&nbsp&nbsp";
	echo $key['接收人']."&nbsp&nbsp";
	echo $key['电话']."&nbsp&nbsp";
	echo $key['货到付款']."<br>";
}									//输出表格

echo "<hr>";
$employee=['姓名'=>'王德法','性别'=>'男','工资'=>6908.83,'生日'=>'2017/02/25','政治面貌'=>'群众'];
foreach ($employee as $key => $v) {
	echo "$key-$v<br>";
}
echo "<hr>";

$cj=['st1'=>95.5,'st2'=>85,'st3'=>80.5,'st4'=>99.5,'st5'=>65];
foreach ($cj as $key => $value) {
	echo "$key &nbsp $value <br>";
}

var_dump($_REQUEST);



?>
