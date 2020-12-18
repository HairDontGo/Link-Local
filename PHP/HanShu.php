<?php
//声明并调用函数
function ADD(){
	$n1=$_REQUEST['n1'];
	$n2=$_REQUEST['n2'];
	$n3=$_REQUEST['n3'];
echo $n1+$n2+$n3;
echo "<br>";
}
ADD();
ADD();

function print99(){
	for ($i=1; $i <=9 ; $i++) { 
		for ($n=1; $n <=$i; $n++) { 
			echo "|&nbsp$i*$n=".$i*$n."&nbsp";
		}
		echo "|<hr>";
	}
}
print99();
print99();
print99();

//声明并调用带参数的函数
function printStar($rows,$cols){
	for ($i=1; $i <= $rows; $i++) { 
		for ($n=1; $n <= $cols; $n++) { 
			echo "♥";
		}
	echo "<br>";
	}
	

}

printStar(5,6);
printStar(10,10);

function min1($i1,$i2,$i3,$i4){
	$i1=(int)$i1;
	$i2=(int)$i2;
	$i3=(int)$i3;
	$i4=(int)$i4;
	$ming=$i1;
	$ming=$ming>$i2?$i2:$ming;
	$ming=$ming>$i3?$i3:$ming;
	$ming=$ming>$i4?$i4:$ming;
	echo "最小值为:$ming<br>";
}
min1(8,1,2,9);
min1(1,2,-3,4);
min1(99,44,18,105);

//声明并调用有返回值的函数
function min2($i1,$i2,$i3,$i4){
	$i1=(int)$i1;
	$i2=(int)$i2;
	$i3=(int)$i3;
	$i4=(int)$i4;
	$ming=$i1;
	$ming=$ming>$i2?$i2:$ming;
	$ming=$ming>$i3?$i3:$ming;
	$ming=$ming>$i4?$i4:$ming;
	return $ming;
}
$m1=min2(8,1,2,9);
$m2=min2(1,2,-3,4);
$m3=min2(998,-115,115,114);
$m4=min2(99,44,18,105);   //接收返回值

$mi=min2($m1,$m2,$m3,$m4);
echo "<br>我要的最小值为:$mi";



function sum2($arr){   	//数组和
	for ($i=0,$s=0; $i < count($arr); $i++) { 
		$s+=$arr[$i];
	}
	
	return $s;
}
$u=sum2([20,1,5,4]);
echo "<br>数组和为:$u";


//函数中调用函数
function avg1($a){
	$avg=sum2($a)/count($a);
	return $avg;
}
$n=avg1([6,9,6,9,8,2]);
	echo "<br>平均值:$n";
$n2=avg1([2,2,2,2,2]);
	echo "<br>数组平均值&nbsp $n2";


//使用预定义函数.例
echo "<br>".min(1,5,8,-9,1000,-9998,5555,9999,-888,-888888);

?>