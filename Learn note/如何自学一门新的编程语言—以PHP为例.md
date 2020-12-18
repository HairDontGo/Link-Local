# 如何自学一门新的编程语言——以PHP为例

##  ①了解其背景知识：历史、现状、特点、应用领域、发展趋势

### **PHP:**

> Personal Home Page 
>
> ​	改名=> PHP is Hypertext Preprocessor

#### 历史:

> ​	**原为维护个人网页而制作的简单程序,后发展成商业公司(zend)进行维护**

#### 特点:

> ​	**开源、简单、灵活、易上手、跨平台、占用资源少，尤其适用于中小型web应用，但目前Google、yahoo、Facebook、百度、Sina、taobao、等都在使用。**
>
> ---
>
> **发展趋势：tiobe编程语言排行榜**

#### **组合：**

> **LAMP组合=Linux+Appache Httpd+MySQL+PHP**



 

##  ②搭建开发环境，编写hello world

### **搭建PHP开发环境: xampp**

####  **1**、服务器端：下载并安装一款静态web服务器

> ​		**c:/xampp/apache/bin/httpd.exe** 
>
> **下载并安装PHP解释器，与web服务器整合**
>
> ​        **c:/xampp/php/php.exe**
>
> **编写静态/动态网页，保存在web服务器上**
>
> ​        **c:/xampp/htdocs**（先清空里面自带的文件）
>
> **启动web服务器，打开需要的端口**



#### **2**、客户端：在浏览器中输入协议、地址、端口访问web服务器

> **http://127.0.0.1:443** **访问自己**
>
> > ​		**⬆**环回地址

![image-20201217213725517](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217213725517.png)

![image-20201217213736605](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217213736605.png)

##  ③学会如何声明变量和常量

### 变量：值可能发生改变的量  

 [声明一个变量：](file:///H:/GitLocalDirectory/PHP/BL.php)

   ```php
 $变量名=值;  		#等号为“赋值”
   ```

 输出一个变量的值：

```php
echo $变量名;		#输出变量值时不加单引号
 	#PHP预定义函数: var_dump($变量名) 输出变量的类型和值
```

​	**变量名中可以包含: 数字、字母、下划线，但不能以数字开头，且不包含空格**

 

### 常量：值不可能改变的量

 声明一个常量:

 ```php
const 常量名=值; 	#常量只能声明一次
 ```

 输出一个常量:

  ```php
echo 常量名
  ```

​	常量名中可以包含: 数字、字母、下划线，但不能以数字开头，习惯上常量名全部用大写字符

​	**单行注释： // 或 #  多行注释：/\*......\*/**

 

##  ④数据类型

PHP属于"**弱类型语言**"

---- 创建变量时无需指定类型一个变量，可以先后赋值为不同类型的值

MySQL则属于"**强类型语言**"

---- 数据必须指定类型,且不能赋值为非法类型

###  1、4个标量/值/基础类型

####    （1）int/integer：整数 

####    （2）float/double: 小数 

####    （3）string：字符串 

​	 [可用单引号和双引号扩起，若单引号中有变量名，则直接输出变量名；而双引号中有变量名，则输出变量值，但双引号中不具备计算能力](file:///H:/GitLocalDirectory/PHP/SuJuLianXi.php)

  两个字符串的拼接使用‘ **. ’**号

####    （4）bool/boolean： 布尔类型

​				#值为: true/false/TURE/FALSE

​            echo输出ture 显示1，输出false显示 空字符

###  2、2个复合类型

####    	（5）array：[数组](file:///H:/GitLocalDirectory/PHP/ShuZuLianXi.php)

```php
$变量名=[ 值1,值2,值3,... ];  //PHP数组不能用echo输出

echo count($变量名)；  //获取数组中元素的个数（数组的长度）

echo $数组名[元素下标]； //输出数组中的一个元素

	$数组名[元素下标]='值';  //修改其中一个元素的值

	$数组名[当前元素总数]='值';   //添加一个元素
```

   ![image-20201217215201990](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217215201990.png)

**索引数组(Indexed Array) : 适用于类型相同的多个数据**  

​        **->  $****变量名=[** **值1,值2,值3,...** **];**

**关联数组(Association Array) : 每个元素的下标是自定义的字符串**

​             ***(\******关联数组无法单纯使用for循环遍历 / foreach 则可以)\***

![image-20201217215714226](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217215714226.png)

**例** :

```php
$user=[ 'uid'=>0001, 

'uname'=>'tony',

'password'=>'123abv',

...];
```

> **输出** 

```php
echo $user['uname'];
```

> **添加**

```php
$user['who'=>'lixing'];
```

**二维数组: 天然就是表格**  



**PHP预定义数组**

> **$_GET**
>
> **$_POST**
>
> **$_COOKIE**
>
> **$_ILES**
>
> **$_REQUEST** **:** **保存着客户端提交给服务器的"请求"数据**[**(练习)**](file:///H:/GitLocalDirectory/PHP/YuDingYiShuZu.php)
>
> ![image-20201217220113345](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217220113345.png)
>
> **$_SESSION**
>
> **上述变量默认都是 array(0){}**  //空数组

####    （6）object：对象

###  3、2个其他类型

####    （7）null：空类型

####    （8）resource：资源类型

---

###  **数据类型强制转换：**

![image-20201217220221744](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217220221744.png)

## ⑤运算符[**(练习)**](file:///H:/GitLocalDirectory/PHP/YunShuan.php)

### 1、算数运算符：

```php
+  -  *  /  %  ++  -- 
```

**+-*/**

> **+**只做算数运算，不做字符串拼接！
>
>   作用于字符串会发生**隐式转换：**试着解析出字符串中的数字，能解析几位就解析几位
>
>   作用于布尔，会发生**隐式转换：true**转换为**1**，**false**转换为**0**

**%**

> **求余运算/取模运算**  判定一个数能否被另一个数整除

**+ +**

> **自增** 只能用于**变量**
>
> ```php
> ++$i;	//先自加再取值
> $i++;	//先取值再自加
> ```
>
>![image-20201217220842898](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217220842898.png)

**- -**

> **自减 同自增**

### 2、比较运算符：

 ```php
            >	>=	<	<=	==	!=
 ```

​    比较运算的结果为true和false

​    **默认情况下，用==比较的话，1和true相等；**

​	**0和false和” “是相等的**

```php
" " //空字符串
==	//该运算符会自动进行隐式转换
```

> 若比较运算中不希 望出现自动的隐式转换，只要**不同类型直接判false**，可直接使用：	 **=== (全等于)  、!==(全不等)**

### 3、逻辑运算符：

```php
 &&	 ||  !
    /* &&(且/与)     ||(或)       ! (取反/非) */
```

**短路逻辑:** 

```php
//"与"运算中的"短路"效果 
false&&?=>false 	# ?将不会被执行
//"或"运算中的"短路"效果 
true||? =>true     # ?将不会被执行
```

### 4、位运算符：

```php
 <<		//按位左移
 >> 	//按位右移
	
		$n        00000101  5      
		$n<<1     00001010  5\2    
		$n<<2     00010100  5\2^2 
```

**结论：一个数字向左移动n位，相当于 $n \*进制^n ,向右移则相当于 $n /进制^n**

### 5、赋值运算符：

```php
=	+=	-=	*=	/=	%=
    
	$n+=5	=> $n=$n+5
	$n*=5	=> $n=$n*5
```

### 6、拼接运算符：. 

 ```php
$uname.=先生  => $uname=$uname.'先生'
 ```

### 7、三目运算符：?: [(练习)](file:///H:/GitLocalDirectory/PHP/FenZiJGLianXi.php)

![image-20201217222238422](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201217222238422.png)

​    **含义：**（如果…否则…）如果**表达式1**的值为**true**，则返回**表达式2**的值，否则返回**表达式3**的值；

>例:
>
>```php
>$sex=1;
>$result= $sex===0?'女':'男';
>echo $result;
>	//结果: 男
>```

---

##  ⑥逻辑结构

### 1、顺序执行

​      **输入 => 执行 => 输出**

### 2、分支/选择执行[(练习)](file:///H:/GitLocalDirectory/PHP/FenZiJGLianXi.php)

```php
//三目
$retVal = (condition) ? a : b ;
//if
if (condition) { # code... } else { # code... }
//if...else
if ( ) { } 
    else if( ){ }
    else if( ){ }
    else
//switch...case
switch ($input) {
    case 'value':          #if($input==value)
       # code...
       break;
    case ''value':
       # code...
       break;
    default:
       # code...
       break;  
}
```


### 3、循环执行[(练习)](file:///H:/GitLocalDirectory/PHP/XunHuanJGLianXi.php)

​      **要素:**   (1)循环体   (2)循环条件     #缺少时会出现死循环

> **while**

 ```php
while ( 循环条件 ) {
	//循环体代码;               
     	#含义,执行条件判定,若为ture,则执行一次循环体
}

	while...  #先判定,后执行 --有可能执行0次
 ```

​    **含义:**执行条件判定,若为ture,则执行一次循环体;然后继续执行条件判断,直到为false,才继续往下执行其他语句     

> **do...while**

 ```php
do {
  //循环主体
} while ( 循环条件); 
	
	do...while... #先执行,后判定 -- 至少执行1次
 ```

> for

```php
for ( $表达式1 ; $表达式2 ; $表达式3 ) { 
	执行内容(循环主体); 
}       
	#与while功能完全一样，但for更精简紧凑，且for的三个表达式都可为空
```

   **含义:**

```flow
st=>start: 执行且执行一次 $表达式1
op=>operation: 执行一次循环主体
cond=>condition: 执行 $表达式2 的判定
sub1=>subroutine: 执行一次 $表达式3
e=>end: 结束循环
st->cond
cond(no)->e
cond(yes)->op(left)->sub1->cond
```

循环中使用"**break**" : 打断循环的执行

循环中使用"**continue**" : 跳过此次循环,执行下一次循环

  **总结:**

> ​	“表达式1”在循环开始前执行一次：一般用于声明循环变量
>
> ​	“表达式2”在每次主体执行前都执行一次：一般用于执行循环判定条件
>
> ​	 “表达式3”在每次主体执行后都执行一次：一般用于执行循环变量增减
>



> foreach

```php
foreach ( $数组名  as  $元素变量名 => $value ) {
  //循环主体 
}
```

![image-20201218122353174](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218122353174.png)

![image-20201218122403745](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218122403745.png)

​	**含义 :** 将数组中的每一个元素,都看作一个指定的变量,对每个这样的变量执行一次指定的循环体. (将每一个元素赋值给一个变量) 但灵活性不如for循环

![image-20201218122455294](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218122455294.png)

---

## ⑦通用小程序

## ⑧函数和对象

**函数(Function)** : 功能体/函数 , 用于封装一段需要反复执行/不易编写的代码. 

#### ①声明一个函数:[**(练习)**](file:///H:/GitLocalDirectory/PHP/HanShu.php)

```php
function 函数名() { 
			//函数主体
		}
#调用/执行一个函数:
函数名();

```
#### ②声明一个带参数的函数:

```php
function 函数名 ( $变量1,$变量2,...){    //形式参数
			//函数主体
		}
#调用/执行一个带参数的函数:
函数名 ( 值1,值2,...);		//实际参数

```
#### ③声明一个带返回值的函数

```php
function 函数名 ( $变量1,$变量2,...){    //形式参数
			//函数主体
			return 结果值;   //应是整个函数中的最后一句
		}

```

## ⑨连接数据库

**PHP**官方提供了两套访问MySQL服务器的函数

​    **mysql_xxxx()** **老版本     //性能不够优秀**

​    **mysqli_xxxx()** **新版本 	//improved:改进提升版**

#### 连接使用MySQL服务器:
>![image-20201218123142009](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218123142009.png)
>服务器ip地址 ↑       用户名↑  登陆密码↑      ↑服务器端口号

​	使用 mysqli 语句函数可以访问数据库服务器的步骤([与管理员冲命令行中访问数据库的步骤一样](file:///H:/GitLocalDirectory/PHP/php连接MySQL/phpToMysqli.php)):

>1、连接到数据库服务器
>```php
>$conn = mysqli_connect("服务器ip地址","用户名","登陆密码","数据库名",端口号);
>```
>2、提交T-SQL语句给服务器执行
>
>```php
>$sql="insert/delete/update/select...";
>$result =$mysqli_query($conn,$sql);
>```
>3、查看执行结果
>```php
	if($result===false){	
	    //执行失败
	}
	else{	
	    //执行成功
	}
	```
>4、关闭到数据库服务器的连接（可省略）

#### [综合（CRUD（create/retrieve/update/delete）增删改查）](file:///C:/Users/NPC/AppData/Roaming/Microsoft/Word/综合操作.docx)

##### 1、基于单表的插入操作—— 注册新用户

>1.编写user_add.php,接收客户端提交的请求数据uname,upwd,email,phone,检验用户输入
>
>2.连接数据库服务器
>
>3.向数据库服务器提交insert语句
>
>4.输出执行结果:注册成功/失败
>
>**小知识点:**
>
>>  1.如果一行代码有错误/警告输出，可以使用“@”符号压制/屏蔽错误提示的输出；
>>  2.终止PHP页面的执行可以使用：
>>
>>  ```php
>>  die("") 	//函数
>>  ```
>>  3.获取刚刚执行的insert语句产生的自增编号所用函数：
>>  ```php    
>>  $id=mysqli_insert_id($连接服务器语句);
>>  ```


##### 2、基于单表的删除操作—— 删除用户

>1 接收客户端提交的请求数据uid,检验用户输入
>
>2 连接数据库服务器
>
>3向数据库服务器提交delete语句
>
>4 输出执行结果:删除成功/失败
>
>**小知识点:**
>
>>1、获取insert/delete/update 语句影响的行数:
>>```php
>>$count=mysqli_affected_rows($connect);
>>```
>>2、对于多个PHP页面都需要的变量/函数，可以声明在一个公共文件中，如init.php 所有其他页面都声明“包含”此页面即可：
>>
>>```php
>>require('init.php');
>>```

##### 3、基于单表的修改操作—— 修改注册信息

>1.编写user_update.php,接收客户端提交的请求数据 uid、user_name、gende、phone、Email，检验用户输入
>
>2.连接数据库服务器
>
>3.向数据库服务器提交update语句
>
>4.输出执行结果:修改成功/失败

##### 4、基于单表的查询一条操作—— 用户登录

>1.编写user_login.php,接收客户端提交的请求数据 uname、upwd，检验用户输入
>
>2.连接数据库服务器
>
>3.向数据库服务器提交select语句
>
>4.输出执行结果 : 登录成功/失败
>
>**小知识**
>
>>mysqli_query($con,$sql) 的返回值类型：
>>(1)DML: 增删改 	#执行失败返回false，成功返回true
>>(2)DQL: 查 	 #执行失败返回false，成功返回查询结果集对象,可能有0/1/n行;
>>**获取一行数据可以使用:**
>>```php
>>$row=mysqli_fetch_row($result);        
>>//抓取一个索引数组或null
>>$row=mysqli_fetch_accoc($result);		
>>//抓取一个关联数组或null
>>```
>>**获取所有记录行可以使用:**
>>
>>```php
>>$rowList=mysqli_fetch_all($result,mysqli_assoc);	
>>//抓取一个二维数组,每一行呈现为一个关联数组 1 ,呈现为一个索引数组 2 ,呈现两种数组 3
>>```
>



##### 5、基于单表的查询多条操作—— 用户列表
​	在当前位置包含另一个页面:

```php
$str="select * from xz_user";
$rowlist=mysqli_fetch_all($result,1);
```

---

## ⑨第三方：库、组件、框架

## ⑩实际项目——经验