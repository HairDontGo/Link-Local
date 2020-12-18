<?php
$sex=1;
$result= $sex===0?'女':'男';
echo $result;
echo'<hr>';

$chinese=50;
$math=60;
$sum="语文成绩:$chinese  数学成绩:$math<br>总成绩:".($chinese+$math);
echo $sum;

echo'<hr>';
$salary=8000;
echo "该员工月薪:$salary  年薪为".($salary*12)."<br>三年薪为:".($salary*12*3);
/////////////////////
echo'<hr>';
$salary=6050;
$ending=$salary>=10000?"高工资":($salary>=7000?"中高工资":"普通工资");
echo "你的工资属于:$ending";

echo'<hr>';
$weight=60;
$height=1.8;
$factor=$weight/($height*$height)>25?"偏胖":(
	$weight/($height*$height)<20?"偏瘦":"正常");
echo "您的健康级别:$factor";

echo "<hr>";
$state=4;
$orderState=$state==1?"等待付款":(
	$state==2?"备货中":(
		$state==3?"运输中":(
			$state==4?"配送中":(
				$state==5?"已完成":"其他-未知状态"
			)
		)
	)
);
echo "您的订单:$orderState<br>"; 


if ($state===1) {
	echo "等待付款";
} else if ($state===2) {
	echo "运输中";
} else if ($state===3)
{
	echo "配送中";
} else if ($state===4) {
	echo "备货中";
} else if ($state) {
	echo "已完成";
}
  else echo "其他-未知状态";



/////////////////////
echo"<hr>收银台v1<hr>";
$price=50;
$count=3;
$pay=200;
$sum=$price*$count;
$change=$pay-$sum;
echo "总金额:$sum<br>找零:$change";


echo"<hr>收银台v2<hr>";
$price=250;
$count=2;
$pay=200;
$sum=$price*$count;
if ($sum>=500) {
	$sum*=0.8;
	echo "享8折优惠<br>";
}
if ($pay<$sum) {
	echo "错误:支付金额不足!";
}
else{
$change=$pay-$sum;
echo "总金额:$sum <br>找零:$change";
}


echo"<hr>if练习<hr>";
$signature="";
$signature=$signature==""?"此人很懒,什么都没有留下":$signature;
echo "用户签名为:$signature";

echo"<hr>";
$signature="";
if ($signature==="") {
	$signature="此人很懒,不写东西";# code...
}
echo $signature;

echo"<hr>";
$zhengzhi="党员";
$salary=5000;
if ($zhengzhi=="党员") {
	$salary+=500;
}
echo "工资为$salary";

echo"<hr>";
$zhengzhi="群众";
$salary=5000;
$salary=$zhengzhi=="党员"?$salary+500:$salary;
echo "工资为$salary";

echo"<hr>";
$score=99;
if ($score<60) {
	echo "不及格";
} else {
	if ($score<80) {
		echo "及格";
	} else {
		echo "优秀";
	}
	
}
echo"<br>";
$score1=63;
if ($score>$score1) {
	echo "$score";
}
else echo "$score1";

echo"<hr>";
$name="toor";
$pwd="123456";
if ($name=="root"&&$pwd=="123456") {
	echo "登陆成功";
} else {
	echo "用户名或密码错误";
}

echo"<hr>";
$year=2020;
if (($year%4==0&&$year%100!==0)||$year%400==0) {
	echo "是闰年,此年有366天";
} else {		
	echo "不是闰年,此年有365天";	
}
		
echo"<hr>";
$integral=111;
if($integral>1000){
	echo"白金用户";
}
else if ($integral>500) {
	echo "黄金用户";
}
else if ($integral>200) {
	echo "白银用户";
}
else echo "普通用户";




echo "<hr>switch语句ATM练习<br>";
$ATM=1;
switch ($ATM) {
	case '1':
		echo"余额查询中...";
		break;
	case '2':
		echo"存款进行中...";
		break;
	case '3':
		echo"转账进行中...";
		break;
	case '4':
		echo"取款进行中...";
		break;
	default:
		echo"不存在的选项!";
		break;
}












 ?>