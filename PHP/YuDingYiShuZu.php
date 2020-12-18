<?php
echo "ADD.php";
$num1=$_REQUEST['num1'];
$num2=$_REQUEST['num2'];
echo "<br>";
echo $num2+$num1;

$r=$_REQUEST['rows'];
$l=$_REQUEST['lines'];

echo "star.php<br>";
for ($i=0; $i <$r ; $i++) { 
	for ($k=0; $k <$l ; $k++) { 
		echo "*";
	}
	echo "<br>";			
}

echo "max.php<br>";
$n1=$_REQUEST['n1'];
$n2=$_REQUEST['n2'];
$n3=$_REQUEST['n3'];
$n4=$_REQUEST['n4'];
$n1=(int)$n1;
$n2=(int)$n2;
$n3=(int)$n3;	//数据类型转换
$n4=(int)$n4;

$max=$n1;
$max=$n2>$max?$n2:$max;
$max=$n3>$max?$n3:$max;
$max=$n4>$max?$n4:$max;
echo "max=$max";

echo "<hr>";
$st=$_REQUEST['start'];
$end=$_REQUEST['end'];
$st=(int)$st;
$end=(int)$end;
for ($i=$st,$ii=0; $i <=$end ; $i++) { 
	$ii+=$i;
}
echo "$st ~ $end 的累加和为$ii";

?>