<?php

echo "<hr>while...练习<hr>";
echo "输出100次hallo<hr>";
$i=1;
while ( $i<=100) {
	echo "hello$i|";
	 if ($i%5==0) {
	echo "<br>";	}

	$i++;

}

echo "<hr>";
$x=1;
while ($x<=90) {
	echo"$x | ";
	if ($x%5==0) {
	echo "<br>";	}
	$x++;
}

echo "<hr>";
$y=1;$z=5;
while ($y*$z<=90) {
	echo $z*$y ."| ";
	$y++;
}

echo "<hr>";
$t=99;
while ($t>=1) {
	echo "$t|";
	if ($t%5==0) {
	echo "<br>";	}
	$t-=2;
}

echo "<hr>";
$g=1;$m=1;
while ($g<=10) {
	$m=$m*$g;
	$g++;
}
echo "$m";

echo "<hr>";
$sum=0;$a=1;$b=90;
while ($a<=9&&$b>=70) {
	$sum+=$a/$b;
	$a+=2;$b-=5;
}
echo "$sum<br>$a $b";

echo "<hr>";
$p=1;
while ($p<=10) {
	echo "*";
	$p++;
}
echo "<br>";

echo "<hr>";
$e=1;
while ($e%10==0) {
	echo "<br>";
while ($e<= 50) {
	echo "*";
	$e++;
}
}

echo "<hr>";
$w=0;
while ($w<=5) {

	$l=0;
	while ($l<=$w) {
		echo "*";
	$l++;
	}

	echo "<br>";
	$w++;

}              /* 输出 *<br>
                       **<br> 
                       ***<br>
                       ****<br>
                       *****<br>     */

echo "<hr>九九乘法表<br>";
$s=1;
while ( $s<= 9) {
	$h=1;
	while ($h<=$s) {
		echo "$h*$s=".$h*$s."&nbsp;&nbsp";
		$h++;
	}
	echo "<br>";
	$s++;
} 		#九九乘法表


echo "<hr>倒三角<br>";

$u=7;
while ($u>=0) {

	$v=0;
	while ($v<=$u) {
		echo "*";
		$v++;
	}

	echo "<br>";
	$u--;
}

/*

            *******<br>
        &nbsp*****<br>
    &nbsp&nbsp***<br>  
&nbsp&nbsp&nbsp*<br>
 */
echo "<hr>do...while...练习<hr>";
$i1=10;
do {
	echo "$i1/";
	$i1++;
} while ($i1<= 90);
echo "<hr>";

$i2=5;
do {
	echo "$i2?";
	$i2+=5;
} while ($i2<=90);
echo "<hr>";

$i3=90;
do {
	echo "$i3|";
	$i3-=2;
} while ($i3>=2);

echo "<hr>";
$i4=1;
$i5=2;
do {
	$i4=$i4+$i5;
	$i5++;
} while ($i5<=100);
echo "$i4";


echo "<hr>";
$i6=1;
$i7=2;
do {
	$i6=$i6*$i7;
	$i7++;
} while ($i7 <= 10);
echo "$i6";

echo "<hr>";
$i8=5;$i9=99;$ii=0;
do {
	$ii+=$i8/$i9;
	$i8+=5;$i9-=2;
} while ($i8<=30);
echo "$ii";

echo "<hr>for循环<hr>";

for ($n1=1,$n2=2; $n2<=100 ; $n2++) { 
	$n1+=$n2;
}
echo "$n1";

echo "<hr>";
for ($n3=1,$n4=2; $n4 <=10 ; $n4++) { 
	$n3*=$n4;
}
echo "$n3";

echo "<hr>";
for ($n5=5,$n6=99,$n7=0; $n5 <=30&&$n6>=89 ; $n5+=5,$n6-=2) { 
	$n7+=$n5/$n6;
}
echo "$n7";

echo "<hr>";
for ($a=1; $a<=9 ; $a++) {	 
	for ($b=1; $b <=$a ; $b++) { 
		echo "|$b*$a=".$a*$b."&nbsp";
	}
	echo "|<hr>";
}

for ($i=0; $i <=5 ; $i++) { 
		for ($o=0; $o <10; $o++) { 
			echo "*";
		}
		echo "<br>";
}
echo "<hr>";

for ($h=1; $h <=5 ; $h++) { 
	for ($i=1; $i<=$h ; $i++) { 
		echo "*";
	}
	echo "<br>";
}

echo '<hr>#输出所有"三位水仙花数",(如,153=1*1*1+5*5*5+3*3*3):<br>';
for ($a=1; $a<=9 ; $a++) { 
	for ($b=0; $b <=9 ; $b++) { 
		for ($c=0; $c <= 9; $c++) { 
			if ($a.$b.$c==$a*$a*$a+$b*$b*$b+$c*$c*$c) {
				echo $a.$b.$c."|";
			}
		}
	}
}              #输出所有"三位水仙花数",153=1*1*1+5*5*5+3*3*3


echo "<hr>※输出100以内所有的质数(只能被1和自身整除的数):<br>";
for ($i=2; $i<100 ; $i++) { 
	for ($a=2; $a<$i; $a++) { 
		if ($i%$a===0) {
			break;
		}
	}
		if ($a===$i) {
			echo "$i|";		
		}
	}


for ($i=1,$ii=2;  ; $ii++) { 
	$i*=$ii;
	if ($i>=10000000) {
		break;               #break的使用
	}
}
echo "<hr>$i,$ii";

echo "<hr>";
for ($i=1; $i <=99 ; $i++) { 
	if($i%5==0||$i%7==0) {
		continue;            #continue的使用
	}
	echo "$i|";
}


/*
练习:从2000开始,输出共10个闰年;
 */
echo "<hr>";
for ($i=2000,$count=0;true;$i++) { 
	if (($i%4==0)&&($i%100!=0)||($i%400==0)) {
		echo "$i|";
		$count++;
		if ($count==10) {
			break;
	}}}















?>