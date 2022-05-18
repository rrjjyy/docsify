

# day01 - java基础语法

## 1. Java概述

### 1.1 Java语言发展史（了解）

语言：人与人交流沟通的表达方式

计算机语言：人与计算机之间进行信息交流沟通的一种特殊语言

Java语言是美国Sun公司（Stanford University Network）在1995年推出的计算机语言

Java之父：詹姆斯·高斯林（James Gosling）

2009年，Sun公司被甲骨文公司收购，所以我们现在访问oracle官网即可：[https://www.oracle.com](https://www.oracle.com/) 

当前，我们课程使用的JDK版本：11.0

### 1.2 Java语言跨平台原理（理解）

Java程序并非是直接运行的，Java编译器将Java源程序编译成与平台无关的字节码文件(class文件)，然后由Java虚拟机（JVM）对字节码文件解释执行。所以在不同的操作系统下，只需安装不同的Java虚拟机即可实现java程序的跨平台。

![DUtDB.png](https://s1.328888.xyz/2022/05/16/DUtDB.png)

### 1.3 JRE和JDK（记忆）

![DUORP.png](https://s1.328888.xyz/2022/05/16/DUORP.png)

JVM（Java Virtual Machine），Java虚拟机

JRE（Java Runtime Environment），Java运行环境，包含了JVM和Java的核心类库（Java API）

JDK（Java Development Kit）称为Java开发工具，包含了JRE和开发工具

总结：我们只需安装JDK即可，它包含了java的运行环境和虚拟机。



### 1.4 JDK的下载和安装（应用）

#### 1.4.1 下载

通过官方网站获取JDK

[http://www.oracle.com](http://www.oracle.com/)

**注意**：针对不同的操作系统，需要下载对应版本的JDK。

具体下载步骤请参见《JDK下载及安装说明文档》

#### 1.4.2 安装

傻瓜式安装，下一步即可。但默认的安装路径是在C:\Program Files下，为方便统一管理建议修改安装路径，将与开发相关的软件都安装到一个目录下，例如：E:\develop。

**注意**：安装路径不要包含中文或者空格等特殊字符（使用纯英文目录）。

具体安装步骤请参见《JDK下载及安装说明文档》

#### 1.4.3 JDK的安装目录介绍

| 目录名称 | 说明                                                         |
| -------- | ------------------------------------------------------------ |
| bin      | 该路径下存放了JDK的各种工具命令。javac和java就放在这个目录。 |
| conf     | 该路径下存放了JDK的相关配置文件。                            |
| include  | 该路径下存放了一些平台特定的头文件。                         |
| jmods    | 该路径下存放了JDK的各种模块。                                |
| legal    | 该路径下存放了JDK各模块的授权文档。                          |
| lib      | 该路径下存放了JDK工具的一些补充JAR包。                       |



## 2. 入门程序HelloWorld

### 2.1 常用DOS命令（应用）

在接触集成开发环境之前，我们需要使用命令行窗口对java程序进行编译和运行，所以需要知道一些常用DOS命令。

1、打开命令行窗口的方式：win + r打开运行窗口，输入cmd，回车。

2、常用命令及其作用

| 操作               | 说明                              |
| ------------------ | --------------------------------- |
| 盘符名称:          | 盘符切换。E:回车，表示切换到E盘。 |
| dir                | 查看当前路径下的内容。            |
| cd 目录            | 进入单级目录。cd itheima          |
| cd ..              | 回退到上一级目录。                |
| cd 目录1\目录2\... | 进入多级目录。cd itheima\JavaSE   |
| cd \               | 回退到盘符目录。                  |
| cls                | 清屏。                            |
| exit               | 退出命令提示符窗口。              |

### 2.2 Path环境变量的配置（应用）

#### 2.2.1 为什么配置环境变量

开发Java程序，需要使用JDK提供的开发工具（比如javac.exe、java.exe等命令），而这些工具在JDK的安装目录的bin目录下，如果不配置环境变量，那么这些命令只可以在该目录下执行。我们不可能把所有的java文件都放到JDK的bin目录下，所以配置环境变量的作用就是可以使bin目录下的java相关命令可以在任意目录下使用。

注意：目前较新的JDK安装时会自动配置javac、java命令的路径到Path环境变量中去 ，所以javac、java可以直接使用。

![DUNYW.png](https://s1.328888.xyz/2022/05/16/DUNYW.png)



但是以前下载的老版本的JDK是没有自动配置的，此时必需要自己配置Path环境变量。

①**JAVA_HOME**：告诉操作系统JDK安装在了哪个位置（未来其他技术要通过这个找JDK）

![DUSMy.png](https://s1.328888.xyz/2022/05/16/DUSMy.png)

②**Path**：告诉操作系统JDK提供的javac(编译)、java(执行)命令安装到了哪个位置

![DUEpd.png](https://s1.328888.xyz/2022/05/16/DUEpd.png)

**注意：新版本的JDK只是自动配置了Path，没有自动配置JAVA_HOME。**

### 2.3 HelloWorld案例（应用）

HelloWorld案例是指在计算机屏幕上输出“HelloWorld”这行文字。各种计算机语言都习惯使用该案例作为第一个演示案例。

#### 2.3.1 Java程序开发运行流程

开发Java程序，需要三个步骤：编写程序，编译程序，运行程序。

#### 2.3.2 HelloWorld案例的编写

1、新建文本文档文件，修改名称为HelloWorld.java。

2、用记事本打开HelloWorld.java文件，输写程序内容。

~~~java
public class HelloWorld {
	public static void main(String[] args) {
		System.out.println("HelloWorld");
	}
}
~~~

#### 2.3.3 HelloWorld案例的编译和运行

存文件，打开命令行窗口，将目录切换至java文件所在目录，编译java文件生成class文件，运行class文件。

> 编译：javac 文件名.java
>
> 范例：javac HelloWorld.java
>
> 执行：java 类名
>
> 范例：java HelloWorld

### 2.4 HelloWorld案例常见问题（理解）

#### 2.4.1 BUG

在电脑系统或程序中，隐藏着的一些未被发现的缺陷或问题统称为bug（漏洞）。

#### 2.4.2 BUG的解决

1、具备识别BUG的能力：多看

2、具备分析BUG的能力：多思考，多查资料

3、具备解决BUG的能力：多尝试，多总结

#### 2.4.3 HelloWorld案例常见问题

1、非法字符问题。Java中的符号都是英文格式的。

2、大小写问题。Java语言对大小写敏感（区分大小写）。

3、在系统中显示文件的扩展名，避免出现HelloWorld.java.txt文件。

4、编译命令后的java文件名需要带文件后缀.java

5、运行命令后的class文件名（类名）不带文件后缀.class

...



## 3、IDEA安装使用

参见**“IDEA安装详解.pdf”**

## 4. java基础语法

#### 4.1 注释（理解）

注释是对代码的解释和说明文字，可以提高程序的可读性，因此在程序中添加必要的注释文字十分重要。Java中的注释分为三种：

单行注释。单行注释的格式是使用//，从//开始至本行结尾的文字将作为注释文字。

~~~java
// 这是单行注释文字
~~~

多行注释。多行注释的格式是使用/* 和 */将一段较长的注释括起来。

~~~java
/*
这是多行注释文字
这是多行注释文字
这是多行注释文字
*/
注意：多行注释不能嵌套使用。
~~~

文档注释。文档注释以`/**`开始，以`*/`结束。（以后讲）



#### 4.2 字面量（应用）

作用：告诉程序员，数据在程序中的书写格式。

| **字面量类型** | **说明**                                  | **程序中的写法**           |
| -------------- | ----------------------------------------- | -------------------------- |
| 整数           | 不带小数的数字                            | 666，-88                   |
| 小数           | 带小数的数字                              | 13.14，-5.21               |
| 字符           | 必须使用单引号，有且仅能一个字符          | ‘A’，‘0’，   ‘我’          |
| 字符串         | 必须使用双引号，内容可有可无              | “HelloWorld”，“黑马程序员” |
| 布尔值         | 布尔值，表示真假，只有两个值：true，false | true 、false               |
| 空值           | 一个特殊的值，空值                        | 值是：null                 |

~~~java
public class Demo {
    public static void main(String[] args) {
        System.out.println(10); // 输出一个整数
        System.out.println(5.5); // 输出一个小数
        System.out.println('a'); // 输出一个字符
        System.out.println(true); // 输出boolean值true
        System.out.println("欢迎来到黑马程序员"); // 输出字符串
    }
}
~~~



#### 4.3 数据类型（记忆、应用）

##### 3.4.1 计算机存储单元

l计算机底层都是一些数字电路(理解成开关)，用开表示0、关表示1，这些01的形式就是二进制。

数据在计算机底层都是采用二进制存储的，l在计算机中认为一个开关表示的0|1称为1位（b），每8位称为一个字节（B）， 所以1B=8b

字节是计算机中数据的最小单位。

我们知道计算机是可以用来存储数据的，但是无论是内存还是硬盘，计算机存储设备的最小信息单元叫“位（bit）”，我们又称之为“比特位”，通常用小写的字母”b”表示。而计算机中最基本的存储单元叫“字节（byte）”，

通常用大写字母”B”表示，字节是由连续的8个位组成。

除了字节外还有一些常用的存储单位，其换算单位如下：

1B（字节） = 8bit

1KB = 1024B

1MB = 1024KB

1GB = 1024MB

1TB = 1024GB

##### 3.4.2 Java中的数据类型

Java是一个强类型语言，Java中的数据必须明确数据类型。在Java中的数据类型包括基本数据类型和引用数据类型两种。

Java中的基本数据类型：

| 数据类型 | 关键字  | 内存占用 |                 取值范围                  |
| :------: | :-----: | :------: | :---------------------------------------: |
|   整数   |  byte   |    1     |    负的2的7次方 ~ 2的7次方-1(-128~127)    |
|          |  short  |    2     | 负的2的15次方 ~ 2的15次方-1(-32768~32767) |
|          |   int   |    4     |        负的2的31次方 ~ 2的31次方-1        |
|          |  long   |    8     |        负的2的63次方 ~ 2的63次方-1        |
|  浮点数  |  float  |    4     |        1.401298e-45 ~ 3.402823e+38        |
|          | double  |    8     |      4.9000000e-324 ~ 1.797693e+308       |
|   字符   |  char   |    2     |                  0-65535                  |
|   布尔   | boolean |    1     |                true，false                |

说明：

​	e+38表示是乘以10的38次方，同样，e-45表示乘以10的负45次方。

​	在java中整数默认是int类型，浮点数默认是double类型。

#### 4.4 变量（应用）

##### 3.5.1 变量的定义

变量：在程序运行过程中，其值可以发生改变的量。

从本质上讲，变量是内存中的一小块区域，其值可以在一定范围内变化。

变量的定义格式：

```java
数据类型 变量名 = 初始化值; // 声明变量并赋值
int age = 18;
System.out.println(age);
```

或者

```java
// 先声明，后赋值（使用前赋值即可）
数据类型 变量名;
变量名 = 初始化值;
double money;
money = 55.5;
System.out.println(money);
```

还可以在同一行定义多个同一种数据类型的变量，中间使用逗号隔开。但不建议使用这种方式，降低程序的可读性。

```java
int a = 10, b = 20; // 定义int类型的变量a和b，中间使用逗号隔开
System.out.println(a);
System.out.println(b);

int c,d; // 声明int类型的变量c和d，中间使用逗号隔开
c = 30;
d = 40;
System.out.println(c);
System.out.println(d);
```

变量的使用：通过变量名访问即可。

##### 3.5.2 使用变量时的注意事项

1. 在同一对花括号中，变量名不能重复。
2. 变量在使用之前，必须初始化（赋值）。
3. 定义long类型的变量时，需要在整数的后面加L（大小写均可，建议大写）。因为整数默认是int类型，整数太大可能超出int范围。
4. 定义float类型的变量时，需要在小数的后面加F（大小写均可，建议大写）。因为浮点数的默认类型是double， double的取值范围是大于float的，类型不兼容。

#### 4.5 关键字、标志符（记忆、理解）

**关键字**

Java自己保留的一些单词，作为特殊功能的，例如：public、class、byte、short、int、long、double… 

我们不能用来作为类名或者是变量名称，否则报错。

注意：关键字很多，不用刻意去记。

| **abstract**   | **assert**       | **boolean**   | **break**      | **byte**   |
| -------------- | ---------------- | ------------- | -------------- | ---------- |
| **case**       | **catch**        | **char**      | **class**      | **const**  |
| **continue**   | **default**      | **do**        | **double**     | **else**   |
| **enum**       | **extends**      | **final**     | **finally**    | **float**  |
| **for**        | **goto**         | **if**        | **implements** | **import** |
| **instanceof** | **int**          | **interface** | **long**       | **native** |
| **new**        | **package**      | **private**   | **protected**  | **public** |
| **return**     | **strictfp**     | **short**     | **static**     | **super**  |
| **switch**     | **synchronized** | **this**      | **throw**      | **throws** |
| **transient**  | **try**          | **void**      | **volatile**   | **while**  |

**标志符**

标志符就是由一些字符、符号组合起来的名称，用于给类，方法，变量等起名字的规矩。

基本要求：由数字、字母、下划线(_)和美元符($)等组成

强制要求：不能以数字开头、不能是关键字、区分大小写

**基本命令规范**

![DeUl4.png](https://s1.328888.xyz/2022/05/16/DeUl4.png)

变量名称：满足标识符规则，建议全英文、有意义、首字母小写，满足“驼峰模式”，例如：int studyNumber = 59。

类名称： 满足标识符规则，建议全英文、有意义、首字母大写，满足“驼峰模式”，例如：HelloWorld.java。

# day02 - Java基础语法



## 0、类型转换问题

#### 类型转换（理解）

在Java中，会存在不同类型的数据需要一起参与运算，所以这些数据类型之间是需要相互转换的，分为两种情况：自动类型转换和强制类型转换。

#### 自动类型转换

*类型范围小**的变量，可以**直接赋值**给**类型范围大**的变量。

![DqkqJ.png](https://s1.328888.xyz/2022/05/18/DqkqJ.png)

把一个表示数据范围小的数值或者变量赋值给另一个表示数据范围大的变量。这种转换方式是自动的，直接书写即可。例如：

```java
double num = 10; // 将int类型的10直接赋值给double类型
System.out.println(num); // 输出10.0

byte a = 12 ;
int b = a;
System.out.println(b); // 12

```



#### **表达式的自动类型转换**

在表达式中，小范围类型的变量会自动转换成当前较大范围的类型再运算。

![DqnmF.png](https://s1.328888.xyz/2022/05/18/DqnmF.png)

**注意事项：**

表达式的最终结果类型由表达式中的最高类型决定。

在表达式中，byte、short、char 是直接转换成int类型参与运算的。 

#### 强制类型转换

类型范围大的数据或者变量，不能直接**赋值**给**类型范围小**的变量，会报错，把一个表示数据范围大的数值或者变量赋值给另一个表示数据范围小的变量必须进行强制类型转换。

强制类型转换格式：目标数据类型 变量名 = (目标数据类型)值或者变量;

​	例如：

```java
double num1 = 5.5;
int num2 = (int) num1; // 将double类型的num1强制转换为int类型
System.out.println(num2); // 输出5（小数位直接舍弃）
```

说明：

1. char类型的数据转换为int类型是按照码表中对应的int值进行计算的。比如在ASCII码表中，'a'对应97。

```java
int a = 'a';
System.out.println(a); // 将输出97
```

2. 整数默认是int类型，byte、short和char类型数据参与运算均会自动转换为int类型。

```java
byte b1 = 10;
byte b2 = 20;
byte b3 = b1 + b2; 
// 第三行代码会报错，b1和b2会自动转换为int类型，计算结果为int，int赋值给byte需要强制类型转换。
// 修改为:
int num = b1 + b2;
// 或者：
byte b3 = (byte) (b1 + b2);
```

1. boolean类型不能与其他基本数据类型相互转换。



## 1. 运算符

### 1.1 算术运算符（理解）

#### 1.1.1 运算符和表达式

运算符：对常量或者变量进行操作的符号

表达式：用运算符把常量或者变量连接起来符合java语法的式子就可以称为表达式。

​                    不同运算符连接的表达式体现的是不同类型的表达式。

举例说明：

```java
int a = 10;
int b = 20;
int c = a + b;
```

  +：是运算符，并且是算术运算符。

  a + b：是表达式，由于+是算术运算符，所以这个表达式叫算术表达式。

####  1.1.2 算术运算符

| 符号 | 作用 | 说明                         |
| ---- | ---- | ---------------------------- |
| +    | 加   | 参看小学一年级               |
| -    | 减   | 参看小学一年级               |
| *    | 乘   | 参看小学二年级，与“×”相同    |
| /    | 除   | 参看小学二年级，与“÷”相同    |
| %    | 取余 | 获取的是两个数据做除法的余数 |

注意：

/和%的区别：两个数据做除法，/取结果的商，%取结果的余数。

整数操作只能得到整数，要想得到小数，必须有浮点数参与运算。

~~~java
int a = 10;
int b = 3;
System.out.println(a / b); // 输出结果3
System.out.println(a % b); // 输出结果1
~~~

#### 1.1.3 字符的“+”操作

char类型参与算术运算，使用的是计算机底层对应的十进制数值。需要我们记住三个字符对应的数值：

'a'  --  97		a-z是连续的，所以'b'对应的数值是98，'c'是99，依次递加

'A'  --  65		A-Z是连续的，所以'B'对应的数值是66，'C'是67，依次递加

'0'  --  48		0-9是连续的，所以'1'对应的数值是49，'2'是50，依次递加

~~~java
// 可以通过使用字符与整数做算术运算，得出字符对应的数值是多少
char ch1 = 'a';
System.out.println(ch1 + 1); // 输出98，97 + 1 = 98

char ch2 = 'A';
System.out.println(ch2 + 1); // 输出66，65 + 1 = 66

char ch3 = '0';
System.out.println(ch3 + 1); // 输出49，48 + 1 = 49
~~~

算术表达式中包含不同的基本数据类型的值的时候，整个算术表达式的类型会自动进行提升。

提升规则：

byte类型，short类型和char类型将被提升到int类型，不管是否有其他类型参与运算。

整个表达式的类型自动提升到与表达式中最高等级的操作数相同的类型

​       等级顺序：byte,short,char --> int --> long --> float --> double

例如：

~~~java
byte b1 = 10;
byte b2 = 20;
// byte b3 = b1 + b2; // 该行报错，因为byte类型参与算术运算会自动提示为int，int赋值给byte可能损失精度
int i3 = b1 + b2; // 应该使用int接收
byte b3 = (byte) (b1 + b2); // 或者将结果强制转换为byte类型
-------------------------------
int num1 = 10;
double num2 = 20.0;
double num3 = num1 + num2; // 使用double接收，因为num1会自动提升为double类型
~~~

tips：正是由于上述原因，所以在程序开发中我们很少使用byte或者short类型定义整数。也很少会使用char类型定义字符，而使用字符串类型，更不会使用char类型做算术运算。



#### 1.1.4 字符串的“+”操作

当“+”操作中出现字符串时，这个”+”是字符串连接符，而不是算术运算。

~~~java
System.out.println("itheima"+ 666); // 输出：itheima666
~~~

在”+”操作中，如果出现了字符串，就是连接运算符，否则就是算术运算。当连续进行“+”操作时，从左到右逐个执行。

~~~java
System.out.println(1 + 99 + "年黑马"); // 输出：199年黑马
System.out.println(1 + 2 + "itheima" + 3 + 4); // 输出：3itheima34
// 可以使用小括号改变运算的优先级 
System.out.println(1 + 2 + "itheima" + (3 + 4)); // 输出：3itheima7
~~~

### 1.2 赋值运算符（应用）

赋值运算符的作用是将一个表达式的值赋给左边，左边必须是可修改的，不能是常量。

| 符号 | 作用       | 说明                  |
| ---- | ---------- | --------------------- |
| =    | 赋值       | a=10，将10赋值给变量a |
| +=   | 加后赋值   | a+=b，将a+b的值给a    |
| -=   | 减后赋值   | a-=b，将a-b的值给a    |
| *=   | 乘后赋值   | a*=b，将a×b的值给a    |
| /=   | 除后赋值   | a/=b，将a÷b的商给a    |
| %=   | 取余后赋值 | a%=b，将a÷b的余数给a  |

注意：

扩展的赋值运算符隐含了强制类型转换。

~~~java
short s = 10;
s = s + 10; // 此行代码报出，因为运算中s提升为int类型，运算结果int赋值给short可能损失精度

s += 10; // 此行代码没有问题，隐含了强制类型转换，相当于 s = (short) (s + 10);
~~~

### 1.3 自增自减运算符（理解）

| 符号 | 作用 | 说明        |
| ---- | ---- | ----------- |
| ++   | 自增 | 变量的值加1 |
| --   | 自减 | 变量的值减1 |

注意事项：

​	++和-- 既可以放在变量的后边，也可以放在变量的前边。

​	单独使用的时候， ++和-- 无论是放在变量的前边还是后边，结果是一样的。

​	参与操作的时候，如果放在变量的后边，先拿变量参与操作，后拿变量做++或者--。

​	参与操作的时候，如果放在变量的前边，先拿变量做++或者--，后拿变量参与操作。

​	最常见的用法：单独使用。

~~~java
int i = 10;
i++; // 单独使用
System.out.println("i:" + i); // i:11

int j = 10;
++j; // 单独使用
System.out.println("j:" + j); // j:11

int x = 10;
int y = x++; // 赋值运算，++在后边，所以是使用x原来的值赋值给y，x本身自增1
System.out.println("x:" + x + ", y:" + y); // x:11，y:10

int m = 10;
int n = ++m; // 赋值运算，++在前边，所以是使用m自增后的值赋值给n，m本身自增1
System.out.println("m:" + m + ", m:" + m); // m:11，m:11
~~~

练习：

~~~java
int x = 10;
int y = x++ + x++ + x++;
System.out.println(y); // y的值是多少？
/*
解析，三个表达式都是++在后，所以每次使用的都是自增前的值，但程序自左至右执行，所以第一次自增时，使用的是10进行计算，但第二次自增时，x的值已经自增到11了，所以第二次使用的是11，然后再次自增。。。
所以整个式子应该是：int y = 10 + 11 + 12;
输出结果为33。
*/
注意：通过此练习深刻理解自增和自减的规律，但实际开发中强烈建议不要写这样的代码！小心挨打！
~~~

### 1.4 关系运算符（应用）

关系运算符有6种关系，分别为小于、小于等于、大于、等于、大于等于、不等于。

| 符号 | 说明                                                    |
| ---- | ------------------------------------------------------- |
| ==   | a==b，判断a和b的值是否相等，成立为true，不成立为false   |
| !=   | a!=b，判断a和b的值是否不相等，成立为true，不成立为false |
| >    | a>b，判断a是否大于b，成立为true，不成立为false          |
| >=   | a>=b，判断a是否大于等于b，成立为true，不成立为false     |
| <    | a<b，判断a是否小于b，成立为true，不成立为false          |
| <=   | a<=b，判断a是否小于等于b，成立为true，不成立为false     |

注意事项：

​	关系运算符的结果都是boolean类型，要么是true，要么是false。

​	千万不要把“==”误写成“=”，"=="是判断是否相等的关系，"="是赋值。

~~~java
int a = 10;
int b = 20;
System.out.println(a == b); // false
System.out.println(a != b); // true
System.out.println(a > b); // false
System.out.println(a >= b); // false
System.out.println(a < b); // true
System.out.println(a <= b); // true

// 关系运算的结果肯定是boolean类型，所以也可以将运算结果赋值给boolean类型的变量
boolean flag = a > b;
System.out.println(flag); // 输出false
~~~

### 1.5 逻辑运算符（应用）

逻辑运算符把各个运算的关系表达式连接起来组成一个复杂的逻辑表达式，以判断程序中的表达式是否成立，判断的结果是 true 或 false。

| 符号 | 作用     | 说明                                         |
| ---- | -------- | -------------------------------------------- |
| &    | 逻辑与   | a&b，a和b都是true，结果为true，否则为false   |
| \|   | 逻辑或   | a\|b，a和b都是false，结果为false，否则为true |
| ^    | 逻辑异或 | a^b，a和b结果不同为true，相同为false         |
| !    | 逻辑非   | !a，结果和a的结果正好相反                    |

~~~java
//定义变量
int i = 10;
int j = 20;
int k = 30;

//& “与”，并且的关系，只要表达式中有一个值为false，结果即为false
System.out.println((i > j) & (i > k)); //false & false,输出false
System.out.println((i < j) & (i > k)); //true & false,输出false
System.out.println((i > j) & (i < k)); //false & true,输出false
System.out.println((i < j) & (i < k)); //true & true,输出true
System.out.println("--------");

//| “或”，或者的关系，只要表达式中有一个值为true，结果即为true
System.out.println((i > j) | (i > k)); //false | false,输出false
System.out.println((i < j) | (i > k)); //true | false,输出true
System.out.println((i > j) | (i < k)); //false | true,输出true
System.out.println((i < j) | (i < k)); //true | true,输出true
System.out.println("--------");

//^ “异或”，相同为false，不同为true
System.out.println((i > j) ^ (i > k)); //false ^ false,输出false
System.out.println((i < j) ^ (i > k)); //true ^ false,输出true
System.out.println((i > j) ^ (i < k)); //false ^ true,输出true
System.out.println((i < j) ^ (i < k)); //true ^ true,输出false
System.out.println("--------");

//! “非”，取反
System.out.println((i > j)); //false
System.out.println(!(i > j)); //!false，,输出true
~~~

#### 短路逻辑运算符

| 符号 | 作用   | 说明                         |
| ---- | ------ | ---------------------------- |
| &&   | 短路与 | 作用和&相同，但是有短路效果  |
| \|\| | 短路或 | 作用和\|相同，但是有短路效果 |

在逻辑与运算中，只要有一个表达式的值为false，那么结果就可以判定为false了，没有必要将所有表达式的值都计算出来，短路与操作就有这样的效果，可以提高效率。同理在逻辑或运算中，一旦发现值为true，右边的表达式将不再参与运算。

- 逻辑与&，无论左边真假，右边都要执行。

- 短路与&&，如果左边为真，右边执行；如果左边为假，右边不执行。

- 逻辑或|，无论左边真假，右边都要执行。

- 短路或||，如果左边为假，右边执行；如果左边为真，右边不执行。

~~~java
int x = 3;
int y = 4;
System.out.println((x++ > 4) & (y++ > 5)); // 两个表达都会运算
System.out.println(x); // 4
System.out.println(y); // 5

System.out.println((x++ > 4) && (y++ > 5)); // 左边已经可以确定结果为false，右边不参与运算
System.out.println(x); // 4
System.out.println(y); // 4
~~~

### 1.6 三元运算符（理解）

三元运算符语法格式：

~~~java
关系表达式 ? 表达式1 : 表达式2;
~~~

解释：问号前面的位置是判断的条件，判断结果为boolean型，为true时调用表达式1，为false时调用表达式2。其逻辑为：如果条件表达式成立或者满足则执行表达式1，否则执行第二个。

举例：

~~~java
int a = 10;
int b = 20;
int c = a > b ? a : b; // 判断 a>b 是否为真，如果为真取a的值，如果为假，取b的值
~~~

三元运算符案例：

1、需求：动物园里有两只老虎，已知两只老虎的体重分别为180kg、200kg，请用程序实现判断两只老虎的体重是否相同。

~~~java
public class OperatorTest01 {
	public static void main(String[] args) {
		//1：定义两个变量用于保存老虎的体重，单位为kg，这里仅仅体现数值即可。
		int weight1 = 180;
		int weight2 = 200;	
		//2：用三元运算符实现老虎体重的判断，体重相同，返回true，否则，返回false。
		boolean b = weight1 == weight2 ? true : false;	
		//3：输出结果
		System.out.println("b:" + b);
	}
}
~~~

2、需求：一座寺庙里住着三个和尚，已知他们的身高分别为150cm、210cm、165cm，请用程序实现获取这三个和尚的最高身高。

~~~java
public class OperatorTest02 {
	public static void main(String[] args) {
		//1：定义三个变量用于保存和尚的身高，单位为cm，这里仅仅体现数值即可。
		int height1 = 150;
		int height2 = 210;
		int height3 = 165;	
		//2：用三元运算符获取前两个和尚的较高身高值，并用临时身高变量保存起来。
		int tempHeight = height1 > height2 ? height1 : height2;		
		//3：用三元运算符获取临时身高值和第三个和尚身高较高值，并用最大身高变量保存。
		int maxHeight = tempHeight > height3 ? tempHeight : height3;	
		//4：输出结果
		System.out.println("maxHeight:" + maxHeight);
	}
}
~~~

## 2. 数据输入（应用）

我们可以通过 Scanner 类来获取用户的输入。使用步骤如下：

1、导包。Scanner 类在java.util包下，所以需要将该类导入。导包的语句需要定义在类的上面。

~~~java
import java.util.Scanner; 
~~~

2、创建Scanner对象。

~~~java
Scanner sc = new Scanner(System.in);// 创建Scanner对象，sc表示变量名，其他均不可变
~~~

3、接收数据

 ~~~java
int i = sc.nextInt(); // 表示将键盘录入的值作为int数返回。
 ~~~

示例：

~~~java
import java.util.Scanner;
public class ScannerDemo {
	public static void main(String[] args) {
		//创建对象
		Scanner sc = new Scanner(System.in);
		//接收数据
		int x = sc.nextInt();
		//输出数据
		System.out.println("x:" + x);
	}
}
~~~

改写三个和尚案例，数据使用键盘录入。

~~~java
import java.util.Scanner;
public class ScannerTest {
	public static void main(String[] args) {
		//身高未知，采用键盘录入实现。首先导包，然后创建对象。
		Scanner sc = new Scanner(System.in);
		//键盘录入三个身高分别赋值给三个变量。
		System.out.println("请输入第一个和尚的身高：");
		int height1 = sc.nextInt();
		System.out.println("请输入第二个和尚的身高：");
		int height2 = sc.nextInt();
		System.out.println("请输入第三个和尚的身高：");
		int height3 = sc.nextInt();
		//用三元运算符获取前两个和尚的较高身高值，并用临时身高变量保存起来。
		int tempHeight = height1 > height2 ? height1 : height2;
		//用三元运算符获取临时身高值和第三个和尚身高较高值，并用最大身高变量保存。
		int maxHeight = tempHeight > height3 ? tempHeight : height3;
		//输出结果。
		System.out.println("这三个和尚中身高最高的是：" + maxHeight +"cm");
	}
}
~~~



~~~java
import java.util.Scanner;
public class IfTest02 {
	public static void main(String[] args) {
		//小明的考试成绩未知，可以使用键盘录入的方式获取值
		Scanner sc = new Scanner(System.in);	
		System.out.println("请输入一个分数：");
		int score = sc.nextInt();
		//由于奖励种类较多，属于多种判断，采用if...else...if格式实现
		//为每种判断设置对应的条件
		//为每种判断设置对应的奖励	
		//数据测试：正确数据，边界数据，错误数据
		if(score>100 || score<0) {
			System.out.println("你输入的分数有误");
		} else if(score>=95 && score<=100) {
			System.out.println("山地自行车一辆");
		} else if(score>=90 && score<=94) {
			System.out.println("游乐场玩一次");
		} else if(score>=80 && score<=89) {
			System.out.println("变形金刚玩具一个");
		} else {
			System.out.println("胖揍一顿");
		}
	}
}
~~~

# day03-switch&循环语句

## 1、流程控制语句（应用）

在一个程序执行的过程中，各条语句的执行顺序对程序的结果是有直接影响的。所以，我们必须清楚每条语句的执行流程。而且，很多时候要通过控制语句的执行顺序来实现我们想要的功能。

### 1.1 流程控制语句分类

​	顺序结构

​	分支结构(if, switch)

​	循环结构(for, while, do…while)

### 1.2 顺序结构

顺序结构是程序中最简单最基本的流程控制，没有特定的语法结构，按照代码的先后顺序，依次执行，程序中大多数的代码都是这样执行的。

顺序结构执行流程图：

![DqV7k.png](https://s1.328888.xyz/2022/05/18/DqV7k.png)

### 1.3 分支结构：if语句

#### if语句格式1

~~~java
格式：
if (关系表达式) {
    语句体;	
}
~~~

执行流程：

①首先计算关系表达式的值

②如果关系表达式的值为true就执行语句体

③如果关系表达式的值为false就不执行语句体

④继续执行后面的语句内容

![DqF2y.png](https://s1.328888.xyz/2022/05/18/DqF2y.png)

示例：

~~~java
public class IfDemo {
	public static void main(String[] args) {
		System.out.println("开始");	
		//定义两个变量
		int a = 10;
		int b = 20;	
		//需求：判断a和b的值是否相等，如果相等，就在控制台输出：a等于b
		if(a == b) {
			System.out.println("a等于b");
		}		
		//需求：判断a和c的值是否相等，如果相等，就在控制台输出：a等于c
		int c = 10;
		if(a == c) {
			System.out.println("a等于c");
		}		
		System.out.println("结束");
	}
}
~~~

#### if语句格式2

~~~java
格式：
if (关系表达式) {
    语句体1;	
} else {
    语句体2;	
}
~~~

执行流程：

①首先计算关系表达式的值

②如果关系表达式的值为true就执行语句体1

③如果关系表达式的值为false就执行语句体2

④继续执行后面的语句内容

!![Dq1oW.png](https://s1.328888.xyz/2022/05/18/Dq1oW.png)

示例：

~~~java
public class IfDemo02 {
	public static void main(String[] args) {
		System.out.println("开始");		
		//定义两个变量
		int a = 10;
		int b = 20;
		b = 5;	
		//需求：判断a是否大于b，如果是，在控制台输出：a的值大于b，否则，在控制台输出：a的值不大于b
		if(a > b) {
			System.out.println("a的值大于b");
		} else {
			System.out.println("a的值不大于b");
		}		
		System.out.println("结束");
	}
}
~~~

if语句案例：奇偶数

需求：任意给出一个整数，请用程序实现判断该整数是奇数还是偶数，并在控制台输出该整数是奇数还是偶数。

分析：

​	①为了体现任意给出一个整数，采用键盘录入一个数据

​	②判断整数是偶数还是奇数要分两种情况进行判断，使用if..else结构

​	③判断是否偶数需要使用取余运算符实现该功能 number % 2 == 0

​	④根据判定情况，在控制台输出对应的内容

~~~java
import java.util.Scanner;
public class IfTest01 {
	public static void main(String[] args) {
		//为了体现任意给出一个整数，采用键盘录入一个数据。(导包，创建对象，接收数据)
		Scanner sc = new Scanner(System.in);		
		System.out.println("请输入一个整数：");
		int number = sc.nextInt();	
		//判断整数是偶数还是奇数要分两种情况进行判断，使用if..else结构		
		//判断是否偶数需要使用取余运算符实现该功能 number % 2 == 0
		//根据判定情况，在控制台输出对应的内容
		if(number%2 == 0) {
			System.out.println(number + "是偶数");
		} else {
			System.out.println(number + "是奇数");
		}	
	}
}
~~~

#### if语句格式3

~~~java
格式：
if (关系表达式1) {
    语句体1;	
} else if (关系表达式2) {
    语句体2;	
} 
…
else {
    语句体n+1;
}
~~~

执行流程：

①首先计算关系表达式1的值

②如果值为true就执行语句体1；如果值为false就计算关系表达式2的值

③如果值为true就执行语句体2；如果值为false就计算关系表达式3的值

④…

⑤如果没有任何关系表达式为true，就执行语句体n+1。

![DqZjd.png](https://s1.328888.xyz/2022/05/18/DqZjd.png)

示例：键盘录入一个星期数(1,2,...7)，输出对应的星期一，星期二，...星期日

~~~java
import java.util.Scanner;
public class IfDemo03 {
	public static void main(String[] args) {
		System.out.println("开始");
		// 需求：键盘录入一个星期数(1,2,...7)，输出对应的星期一，星期二，...星期日
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个星期数(1-7)：");
		int week = sc.nextInt();
		if(week == 1) {
			System.out.println("星期一");
		} else if(week == 2) {
			System.out.println("星期二");
		} else if(week == 3) {
			System.out.println("星期三");
		} else if(week == 4) {
			System.out.println("星期四");
		} else if(week == 5) {
			System.out.println("星期五");
		} else if(week == 6) {
			System.out.println("星期六");
		} else {
			System.out.println("星期日");
		}	
		System.out.println("结束");
	}
}
~~~

if语句格式3案例：

需求：小明快要期末考试了，小明爸爸对他说，会根据他不同的考试成绩，送他不同的礼物，假如你可以控制小明的得分，请用程序实现小明到底该获得什么样的礼物，并在控制台输出。

分析：

​	①小明的考试成绩未知，可以使用键盘录入的方式获取值

​	②由于奖励种类较多，属于多种判断，采用if...else...if格式实现

​	③为每种判断设置对应的条件

​	④为每种判断设置对应的奖励

### 1.4 分支结构：switch语句

##### switch语句结构（掌握）

* 格式

  ```java
  switch (表达式) {
  	case 1:
  		语句体1;
  		break;
  	case 2:
  		语句体2;
  		break;
  	...
  	default:
  		语句体n+1;
  		break;
  }
  ```

* 执行流程：

  * 首先计算出表达式的值 
  * 其次，和case依次比较，一旦有对应的值，就会执行相应的语句，在执行的过程中，遇到break就会结 束。 
  * 最后，如果所有的case都和表达式的值不匹配，就会执行default语句体部分，然后程序结束掉。 

##### switch语句练习-春夏秋冬（应用）

* 需求：一年有12个月，分属于春夏秋冬4个季节，键盘录入一个月份，请用程序实现判断该月份属于哪个季节，并输出。 
* 运行结果：

```
春：3、4、5
夏：6、7、8
秋：9、10、11
冬：1、2、12
```

* 示例代码：

```java
public class Demo1 {
    public static void main(String[] args) {
        //键盘录入月份数据，使用变量接收
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入一个月份：");
        int month = sc.nextInt();
        //case穿透
        switch(month) {
            case 1:
            case 2:
            case 12:
                System.out.println("冬季");
                break;
            case 3:
            case 4:
            case 5:
                System.out.println("春季");
                break;
            case 6:
            case 7:
            case 8:
                System.out.println("夏季");
                break;
            case 9:
            case 10:
            case 11:
                System.out.println("秋季");
                break;
            default:
                System.out.println("你输入的月份有误");
        }
    }
}
```

* 注意：如果switch中得case，没有对应break的话，则会出现case穿透的现象。

### 1.5 循环结构：for循环

#### for循环结构（掌握）

* 循环：

  循环语句可以在满足循环条件的情况下，反复执行某一段代码，这段被重复执行的代码被称为循环体语句，当反复 执行这个循环体时，需要在合适的时候把循环判断条件修改为false，从而结束循环，否则循环将一直执行下去，形 成死循环。 

* for循环格式：

```java
for (初始化语句;条件判断语句;条件控制语句) {
	循环体语句;
}
```

* 格式解释：

  * 初始化语句：  用于表示循环开启时的起始状态，简单说就是循环开始的时候什么样
  * 条件判断语句：用于表示循环反复执行的条件，简单说就是判断循环是否能一直执行下去
  * 循环体语句：  用于表示循环反复执行的内容，简单说就是循环反复执行的事情
  * 条件控制语句：用于表示循环执行中每次变化的内容，简单说就是控制循环是否能执行下去

* 执行流程：

  ①执行初始化语句

  ②执行条件判断语句，看其结果是true还是false

  ​             如果是false，循环结束

  ​             如果是true，继续执行

  ③执行循环体语句

  ④执行条件控制语句

  ⑤回到②继续

#### for循环练习-输出数据（应用）

* 需求：在控制台输出1-5和5-1的数据 
* 示例代码：

```java
public class ForTest01 {
    public static void main(String[] args) {
		//需求：输出数据1-5
        for(int i=1; i<=5; i++) {
			System.out.println(i);
		}
		System.out.println("--------");
		//需求：输出数据5-1
		for(int i=5; i>=1; i--) {
			System.out.println(i);
		}
    }
}
```

####  for循环练习-求和（应用）

* 需求：求1-5之间的数据和，并把求和结果在控制台输出  
* 示例代码：

```java
public class ForTest02 {
    public static void main(String[] args) {
		//求和的最终结果必须保存起来，需要定义一个变量，用于保存求和的结果，初始值为0
		int sum = 0;
		//从1开始到5结束的数据，使用循环结构完成
		for(int i=1; i<=5; i++) {
			//将反复进行的事情写入循环结构内部
             // 此处反复进行的事情是将数据 i 加到用于保存最终求和的变量 sum 中
			sum += i;
			/*
				sum += i;	sum = sum + i;
				第一次：sum = sum + i = 0 + 1 = 1;
				第二次：sum = sum + i = 1 + 2 = 3;
				第三次：sum = sum + i = 3 + 3 = 6;
				第四次：sum = sum + i = 6 + 4 = 10;
				第五次：sum = sum + i = 10 + 5 = 15;
			*/
		}
		//当循环执行完毕时，将最终数据打印出来
		System.out.println("1-5之间的数据和是：" + sum);
    }
}
```

* 本题要点：
  * 今后遇到的需求中，如果带有求和二字，请立即联想到求和变量
  * 求和变量的定义位置，必须在循环外部，如果在循环内部则计算出的数据将是错误的

#### for循环练习-求偶数和（应用）

* 需求：求1-100之间的偶数和，并把求和结果在控制台输出 }
* 示例代码：

```java
public class ForTest03 {
    public static void main(String[] args) {
		//求和的最终结果必须保存起来，需要定义一个变量，用于保存求和的结果，初始值为0
		int sum = 0;
		//对1-100的数据求和与1-5的数据求和几乎完全一样，仅仅是结束条件不同
		for(int i=1; i<=100; i++) {
			//对1-100的偶数求和，需要对求和操作添加限制条件，判断是否是偶数
			if(i%2 == 0) {
				sum += i;
			}
		}
		//当循环执行完毕时，将最终数据打印出来
		System.out.println("1-100之间的偶数和是：" + sum);
    }
}
```

#### for循环练习-水仙花（应用）

* 需求：在控制台输出所有的“水仙花数” 
* 解释：什么是水仙花数？
  * 水仙花数，指的是一个三位数，个位、十位、百位的数字立方和等于原数
    * 例如`153  3*3*3 + 5*5*5 + 1*1*1 = 153`
* 思路：
  1. 获取所有的三位数，准备进行筛选，最小的三位数为100，最大的三位数为999，使用for循环获取
  2. 获取每一个三位数的个位，十位，百位，做if语句判断是否是水仙花数
* 示例代码

```java
public class ForTest04 {
    public static void main(String[] args) {
		//输出所有的水仙花数必然要使用到循环，遍历所有的三位数，三位数从100开始，到999结束
		for(int i=100; i<1000; i++) {
			//在计算之前获取三位数中每个位上的值
			int ge = i%10;
			int shi = i/10%10;
			int bai = i/10/10%10;
			
			//判定条件是将三位数中的每个数值取出来，计算立方和后与原始数字比较是否相等
			if(ge*ge*ge + shi*shi*shi + bai*bai*bai == i) {
				//输出满足条件的数字就是水仙花数
				System.out.println(i);
			}
		}
    }
}
```

#### for循环练习-统计水仙花数个数（应用）

* 需求：统计“水仙花数”一共有多少个，并在控制台输出个数 
* 示例代码：

```java
public class ForTest05 {
    public static void main(String[] args) {
		//定义变量count，用于保存“水仙花数”的数量，初始值为0
		int count = 0;
		//输出所有的水仙花数必然要使用到循环，遍历所有的三位数，三位数从100开始，到999结束
		for(int i=100; i<1000; i++) {
			//在计算之前获取三位数中每个位上的值
			int ge = i%10;
			int shi = i/10%10;
			int bai = i/10/10%10;
			//在判定水仙花数的过程中，满足条件不再输出，更改为修改count的值，使count+1
			if(ge*ge*ge + shi*shi*shi + bai*bai*bai == i) {
				count++;
			}
		}
		//打印输出最终结果
		System.out.println("水仙花共有：" + count + "个");
    }
}
```

* 本题要点：
  * 今后如果需求带有统计xxx，请先想到计数器变量
  * 计数器变量定义的位置，必须在循环外部

### 1.6 循环结构： while循环

#### while结构（掌握）

* while循环完整格式：

  ```java
  初始化语句;
  while (条件判断语句) {
  	循环体语句;
      条件控制语句;
  }
  ```

* while循环执行流程：

  ①执行初始化语句

  ②执行条件判断语句，看其结果是true还是false

  ​             如果是false，循环结束

  ​             如果是true，继续执行

  ③执行循环体语句

  ④执行条件控制语句

  ⑤回到②继续

* 示例代码：

```java
public class WhileDemo {
    public static void main(String[] args) {
        //需求：在控制台输出5次"HelloWorld"
		//for循环实现
		for(int i=1; i<=5; i++) {
			System.out.println("HelloWorld");
		}
		System.out.println("--------");
		//while循环实现
		int j = 1;
		while(j<=5) {
			System.out.println("HelloWorld");
			j++;
		}
    }
}
```

####  while循环练习-珠穆朗玛峰（应用）

* 需求：世界最高山峰是珠穆朗玛峰(8844.43米=8844430毫米)，假如我有一张足够大的纸，它的厚度是0.1毫米。请问，我折叠多少次，可以折成珠穆朗玛峰的高度?
* 示例代码：

```java
public class WhileTest {
    public static void main(String[] args) {
		//定义一个计数器，初始值为0
		int count = 0;
		//定义纸张厚度
		double paper = 0.1;
		//定义珠穆朗玛峰的高度
		int zf = 8844430;
		//因为要反复折叠，所以要使用循环，但是不知道折叠多少次，这种情况下更适合使用while循环
		//折叠的过程中当纸张厚度大于珠峰就停止了，因此继续执行的要求是纸张厚度小于珠峰高度
		while(paper <= zf) {
			//循环的执行过程中每次纸张折叠，纸张的厚度要加倍
			paper *= 2;
			//在循环中执行累加，对应折叠了多少次
			count++;
		}
		//打印计数器的值
		System.out.println("需要折叠：" + count + "次");
    }
}
```

### 1.7 循环结构：do-while循环

#### do...while循环结构（掌握）

* 完整格式：

  ```java
  初始化语句;
  do {
  	循环体语句;
  	条件控制语句;
  }while(条件判断语句);
  ```

* 执行流程：

  ① 执行初始化语句

  ② 执行循环体语句

  ③ 执行条件控制语句

  ④ 执行条件判断语句，看其结果是true还是false

  如果是false，循环结束

  如果是true，继续执行

  ⑤ 回到②继续

* 示例代码：

```java
public class DoWhileDemo {
    public static void main(String[] args) {
        //需求：在控制台输出5次"HelloWorld"
		//for循环实现
		for(int i=1; i<=5; i++) {
			System.out.println("HelloWorld");
		}
		System.out.println("--------");
		//do...while循环实现
		int j = 1;
		do {
			System.out.println("HelloWorld");
			j++;
		}while(j<=5);
    }
}
```

### 1.8 三种循环的区别（理解）

* 三种循环的区别
  * for循环和while循环先判断条件是否成立，然后决定是否执行循环体（先判断后执行）
  * do...while循环先执行一次循环体，然后判断条件是否成立，是否继续执行循环体（先执行后判断）
* for循环和while的区别
  * 条件控制语句所控制的自增变量，因为归属for循环的语法结构中，在for循环结束后，就不能再次被访问到了
  * 条件控制语句所控制的自增变量，对于while循环来说不归属其语法结构中，在while循环结束后，该变量还可以继续使用
* 死循环（无限循环）的三种格式
  1. for(;;){}
  2. while(true){}
  3. do {} while(true);

### 1.9  跳转控制语句（掌握）

* 跳转控制语句（break）
  * 跳出循环，结束循环
* 跳转控制语句（continue）
  * 跳过本次循环，继续下次循环
* 注意： continue只能在循环中进行使用！

### 1.10 循环嵌套（理解）

* 循环嵌套概述：在循环中，继续定义循环

* 示例代码：

  ```java
  	public static void main(String[] args) {
          //外循环控制小时的范围，内循环控制分钟的范围
          for (int hour = 0; hour < 24; hour++) {
              for (int minute = 0; minute < 60; minute++) {
                  System.out.println(hour + "时" + minute + "分");
              }
              System.out.println("--------");
          }
      }
  ```

* 理解：

  * 请反复理解这句话（整个内循环，就是外循环的一个循环体，内部循环体没有执行完毕，外循环是不会继续向下执行的）

* 结论：

  * 外循环执行一次，内循环执行一圈

### 1.11 Random

####  Random产生随机数（掌握）

* 概述：

  * Random类似Scanner，也是Java提供好的API，内部提供了产生随机数的功能
    * API后续课程详细讲解，现在可以简单理解为Java已经写好的代码

* 使用步骤：

  1. 导入包

     import java.util.Random;

  2. 创建对象

     Random r = new Random();

  3. 产生随机数

     int num = r.nextInt(10);

     解释： 10代表的是一个范围，如果括号写10，产生的随机数就是0-9，括号写20，参数的随机数则是0-19

* 示例代码：

```java
import java.util.Random;
public class RandomDemo {
	public static void main(String[] args) {
		//创建对象
		Random r = new Random();
		//用循环获取10个随机数
		for(int i=0; i<10; i++) {
			//获取随机数
			int number = r.nextInt(10);
			System.out.println("number:" + number);
		}
		//需求：获取一个1-100之间的随机数
		int x = r.nextInt(100) + 1;
		System.out.println(x);
	}
}
```

#### Random练习-猜数字（应用）

* 需求：

  程序自动生成一个1-100之间的数字，使用程序实现猜出这个数字是多少？

  当猜错的时候根据不同情况给出相应的提示

  A. 如果猜的数字比真实数字大，提示你猜的数据大了

  B. 如果猜的数字比真实数字小，提示你猜的数据小了

  C. 如果猜的数字与真实数字相等，提示恭喜你猜中了

* 示例代码：

```java
import java.util.Random;
import java.util.Scanner;

public class RandomTest {
	public static void main(String[] args) {
		//要完成猜数字的游戏，首先需要有一个要猜的数字，使用随机数生成该数字，范围1到100
		Random r = new Random();
		int number = r.nextInt(100) + 1;
		
		while(true) {
			//使用程序实现猜数字，每次均要输入猜测的数字值，需要使用键盘录入实现
			Scanner sc = new Scanner(System.in);
			
			System.out.println("请输入你要猜的数字：");
			int guessNumber = sc.nextInt();
			
			//比较输入的数字和系统产生的数据，需要使用分支语句。
             //这里使用if..else..if..格式，根据不同情况进行猜测结果显示
			if(guessNumber > number) {
				System.out.println("你猜的数字" + guessNumber + "大了");
			} else if(guessNumber < number) {
				System.out.println("你猜的数字" + guessNumber + "小了");
			} else {
				System.out.println("恭喜你猜中了");
				break;
			}
		}
		
	}
}
```

# day04-数组





## 1.数组

### 1.1什么是数组【理解】

​	数组就是存储数据长度固定的容器，存储多个数据的数据类型要一致。 

### 1.2数组定义格式【记忆】

#### 1.2.1第一种

​	数据类型[] 数组名

​	示例：

```java
int[] arr;        
double[] arr;      
char[] arr;
```

#### 1.2.2第二种

​	数据类型 数组名[]

​	示例：

```java
int arr[];
double arr[];
char arr[];
```

### 1.3数组动态初始化【应用】

#### 1.3.1什么是动态初始化

​	数组动态初始化就是只给定数组的长度，由系统给出默认初始化值。

#### 1.3.2动态初始化格式

```java
数据类型[] 数组名 = new 数据类型[数组长度];
```

```java
int[] arr = new int[3];
```

#### 1.3.3动态初始化格式详解

- 等号左边：

  -  int:数组的数据类型

  -  []:代表这是一个数组

  -  arr:代表数组的名称

- 等号右边：

  -   new:为数组开辟内存空间

  -   int:数组的数据类型

  -   []:代表这是一个数组

  -   5:代表数组的长度

### 1.4数组元素访问【应用】

#### 1.4.1什么是索引

​	每一个存储到数组的元素，都会自动的拥有一个编号，从0开始。

​	这个自动编号称为数组索引(index)，可以通过数组的索引访问到数组中的元素。 	

#### 1.4.2访问数组元素格式

```java
数组名[索引];
```

#### 1.4.3示例代码

```java
public class ArrayDemo {
    public static void main(String[] args) {
        int[] arr = new int[3];

        //输出数组名
        System.out.println(arr); //[I@880ec60

        //输出数组中的元素
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(arr[2]);
    }
}
```

### 1.5内存分配【理解】

#### 1.5.1内存概述

​	内存是计算机中的重要原件，临时存储区域，作用是运行程序。

​	我们编写的程序是存放在硬盘中的，在硬盘中的程序是不会运行的。

​	必须放进内存中才能运行，运行完毕后会清空内存。 

​	Java虚拟机要运行程序，必须要对内存进行空间的分配和管理。 

#### 1.5.2java中的内存分配

- 目前我们只需要记住两个内存，分别是：栈内存和堆内存

| 区域名称   | 作用                                                       |
| ---------- | ---------------------------------------------------------- |
| 寄存器     | 给CPU使用，和我们开发无关。                                |
| 本地方法栈 | JVM在使用操作系统功能的时候使用，和我们开发无关。          |
| 方法区     | 存储可以运行的class文件。                                  |
| 堆内存     | 存储对象或者数组，new来创建的，都存储在堆内存。            |
| 方法栈     | 方法运行时使用的内存，比如main方法运行，进入方法栈中执行。 |

### 1.6单个数组的内存图【理解】

### 1.7多个数组的内存图【理解】

### 1.8多个数组指向相同内存图【理解】

### 1.9数组静态初始化【应用】

#### 1.9.1什么是静态初始化

​	在创建数组时，直接将元素确定	

#### 1.9.2静态初始化格式

- 完整版格式

  ```java
  数据类型[] 数组名 = new 数据类型[]{元素1,元素2,...};
  ```

- 简化版格式

  ```java
  数据类型[] 数组名 = {元素1,元素2,...};
  ```

#### 1.9.3示例代码

```java
public class ArrayDemo {
    public static void main(String[] args) {
        //定义数组
        int[] arr = {1, 2, 3};

        //输出数组名
        System.out.println(arr);

        //输出数组中的元素
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(arr[2]);
    }
}
```

### 1.10数组操作的两个常见小问题【应用】

#### 1.10.1索引越界异常

- 出现原因

  ```java
  public class ArrayDemo {
      public static void main(String[] args) {
          int[] arr = new int[3];
          System.out.println(arr[3]);
      }
  }
  ```

  数组长度为3，索引范围是0~2，但是我们却访问了一个3的索引。

  程序运行后，将会抛出ArrayIndexOutOfBoundsException 数组越界异常。在开发中，数组的越界异常是不能出现的，一旦出现了，就必须要修改我们编写的代码。 

- 解决方案

  将错误的索引修改为正确的索引范围即可！

#### 1.10.2空指针异常

- 出现原因

  ```java
  public class ArrayDemo {
      public static void main(String[] args) {
          int[] arr = new int[3];
  
          //把null赋值给数组
          arr = null;
          System.out.println(arr[0]);
      }
  }
  ```

  arr = null 这行代码，意味着变量arr将不会再保存数组的内存地址，也就不允许再操作数组了，因此运行的时候会抛出 NullPointerException 空指针异常。在开发中，数组的越界异常是不能出现的，一旦出现了，就必须要修改我们编写的代码。

- 解决方案

  给数组一个真正的堆内存空间引用即可！

### 1.11数组遍历【应用】

- 数组遍历：就是将数组中的每个元素分别获取出来，就是遍历。遍历也是数组操作中的基石。

  ```java
  public class ArrayTest01 {
  	public static void main(String[] args) {
  		int[] arr = { 1, 2, 3, 4, 5 };
  		System.out.println(arr[0]);
  		System.out.println(arr[1]);
  		System.out.println(arr[2]);
  		System.out.println(arr[3]);
  		System.out.println(arr[4]);
  	}
  }
  ```

  以上代码是可以将数组中每个元素全部遍历出来，但是如果数组元素非常多，这种写法肯定不行，因此我们需要改造成循环的写法。数组的索引是 0 到 lenght-1 ，可以作为循环的条件出现。 

  ```java
  public class ArrayTest01 {
      public static void main(String[] args) {
          //定义数组
          int[] arr = {11, 22, 33, 44, 55};
  
          //使用通用的遍历格式
          for(int x = 0; x < arr.length; x++) {
              System.out.println(arr[x]);
          }
      }
  }
  ```

### 1.12数组最值【应用】

- 最大值获取：从数组的所有元素中找出最大值。

- 实现思路：

  - 定义变量，保存数组0索引上的元素
  - 遍历数组，获取出数组中的每个元素
  - 将遍历到的元素和保存数组0索引上值的变量进行比较
  - 如果数组元素的值大于了变量的值，变量记录住新的值
  - 数组循环遍历结束，变量保存的就是数组中的最大值 

- 代码实现：

  ```java
  public class ArrayTest02 {
      public static void main(String[] args) {
          //定义数组
          int[] arr = {12, 45, 98, 73, 60};
          //定义一个变量，用于保存最大值
          //取数组中第一个数据作为变量的初始值
          int max = arr[0];
          //与数组中剩余的数据逐个比对，每次比对将最大值保存到变量中
          for(int x=1; x<arr.length; x++) {
              if(arr[x] > max) {
                  max = arr[x];
              }
          }
          //循环结束后打印变量的值
          System.out.println("max:" + max);
      }
  }
  ```



# day05-方法

## 1. 方法概述

### 1.1 方法的概念（理解）

​	方法（method）是将具有独立功能的代码块组织成为一个整体，使其具有特殊功能的代码集

* 注意：
  * 方法必须先创建才可以使用，该过程成为方法定义
  * 方法创建后并不是直接可以运行的，需要手动使用后，才执行，该过程成为方法调用

## 2. 方法的定义和调用

### 2.1 无参数方法定义和调用（掌握）

* 定义格式：

  ```java
  public static void 方法名 (   ) {
  	// 方法体;
  }
  ```

* 范例：

  ```java
  public static void method (    ) {
  	// 方法体;
  }
  ```

* 调用格式：

  ```java
  方法名();
  ```

* 范例：

  ```java
  method();
  ```

* 注意：

  ​	方法必须先定义，后调用，否则程序将报错

### 2.2 方法调用过程图解（理解）

![Dq6W3.png](https://s1.328888.xyz/2022/05/18/Dq6W3.png)

* 总结：每个方法在被调用执行的时候，都会进入栈内存，并且拥有自己独立的内存空间，方法内部代码调用完毕之后，会从栈内存中弹栈消失。

### 2.3 无参数方法的练习（应用）

* 需求：设计一个方法用于打印两个数中的较大数 
* 思路：
  * ①定义一个方法，用于打印两个数字中的较大数，例如getMax() 
  * ②方法中定义两个变量，用于保存两个数字 
  * ③使用分支语句分两种情况对两个数字的大小关系进行处理 
  * ④在main()方法中调用定义好的方法 
* 代码：

```java
public class MethodTest {
    public static void main(String[] args) {
        //在main()方法中调用定义好的方法
        getMax();
    }

    //定义一个方法，用于打印两个数字中的较大数，例如getMax()
    public static void getMax() {
        //方法中定义两个变量，用于保存两个数字
        int a = 10;
        int b = 20;

        //使用分支语句分两种情况对两个数字的大小关系进行处理
        if(a > b) {
            System.out.println(a);
        } else {
            System.out.println(b);
        }
    }
}
```

## 3. 带参数方法定义和调用

### 3.1 带参数方法定义和调用（掌握）

* 定义格式：

  参数：由数据类型和变量名组成 -  数据类型 变量名

  参数范例：int a

  ```java
  public static void 方法名 (参数1) {
  	方法体;
  }
  
  public static void 方法名 (参数1, 参数2, 参数3...) {
  	方法体;
  }
  ```

* 范例：

  ```java
  public static void isEvenNumber(int number){
      ...
  }
  public static void getMax(int num1, int num2){
      ...
  }
  ```

  * 注意：

    	方法定义时，参数中的数据类型与变量名都不能缺少，缺少任意一个程序将报错
    	
    	方法定义时，多个参数之间使用逗号( ，)分隔

* 调用格式：

  ```java
  方法名(参数)；
  
  方法名(参数1,参数2);
  ```

* 范例：

  ```java
  isEvenNumber(10);
  
  getMax(10,20);
  ```

  * 方法调用时，参数的数量与类型必须与方法定义中的设置相匹配，否则程序将报错 

### 3.2 形参和实参（理解）

1. 形参：方法定义中的参数

​          等同于变量定义格式，例如：int number

2. 实参：方法调用中的参数

​          等同于使用变量或常量，例如： 10  number

### 3.3 带参数方法练习（应用）

* 需求：设计一个方法用于打印两个数中的较大数，数据来自于方法参数 }
* 思路：
  * ①定义一个方法，用于打印两个数字中的较大数，例如getMax() 
  * ②为方法定义两个参数，用于接收两个数字 
  * ③使用分支语句分两种情况对两个数字的大小关系进行处理 
  * ④在main()方法中调用定义好的方法（使用常量）
  * ⑤在main()方法中调用定义好的方法（使用变量） 
* 代码：

```java
public class MethodTest {
    public static void main(String[] args) {
        //在main()方法中调用定义好的方法（使用常量）
        getMax(10,20);
        //调用方法的时候，人家要几个，你就给几个，人家要什么类型的，你就给什么类型的
        //getMax(30);
        //getMax(10.0,20.0);

        //在main()方法中调用定义好的方法（使用变量）
        int a = 10;
        int b = 20;
        getMax(a, b);
    }

    //定义一个方法，用于打印两个数字中的较大数，例如getMax()
    //为方法定义两个参数，用于接收两个数字
    public static void getMax(int a, int b) {
        //使用分支语句分两种情况对两个数字的大小关系进行处理
        if(a > b) {
            System.out.println(a);
        } else {
            System.out.println(b);
        }
    }
}
```

## 4. 带返回值方法的定义和调用

### 4.1 带返回值方法定义和调用（掌握）

* 定义格式

  ```java
  public static 数据类型 方法名 ( 参数 ) { 
  	return 数据 ;
  }
  ```

* 范例

  ```java
  public static boolean isEvenNumber( int number ) {           
  	return true ;
  }
  public static int getMax( int a, int b ) {
  	return  100 ;
  }
  ```

  * 注意：
    * 方法定义时return后面的返回值与方法定义上的数据类型要匹配，否则程序将报错

* 调用格式

  ```java
  方法名 ( 参数 ) ;
  数据类型 变量名 = 方法名 ( 参数 ) ;
  ```

* 范例

  ```java
  isEvenNumber ( 5 ) ;
  boolean  flag =  isEvenNumber ( 5 ); 
  ```

  * 注意：
    * 方法的返回值通常会使用变量接收，否则该返回值将无意义

### 4.2 带返回值方法练习（应用）

* 需求：设计一个方法可以获取两个数的较大值，数据来自于参数

* 思路：

  * ①定义一个方法，用于获取两个数字中的较大数 
  * ②使用分支语句分两种情况对两个数字的大小关系进行处理 
  * ③根据题设分别设置两种情况下对应的返回结果 
  * ④在main()方法中调用定义好的方法并使用变量保存 
  * ⑤在main()方法中调用定义好的方法并直接打印结果 

* 代码：

  ```java
  public class MethodTest {
      public static void main(String[] args) {
          //在main()方法中调用定义好的方法并使用变量保存
          int result = getMax(10,20);
          System.out.println(result);
  
          //在main()方法中调用定义好的方法并直接打印结果
          System.out.println(getMax(10,20));
      }
  
      //定义一个方法，用于获取两个数字中的较大数
      public static int getMax(int a, int b) {
          //使用分支语句分两种情况对两个数字的大小关系进行处理
          //根据题设分别设置两种情况下对应的返回结果
          if(a > b) {
              return a;
          } else {
              return b;
          }
      }
  }
  ```

## 5. 方法的注意事项

### 5.1 方法的注意事项（掌握）

* 方法不能嵌套定义

  * 示例代码：

    ```java
    public class MethodDemo {
        public static void main(String[] args) {
    
        }
    
        public static void methodOne() {
    		public static void methodTwo() {
           		// 这里会引发编译错误!!!
        	}
        }
    }
    ```

* void表示无返回值，可以省略return，也可以单独的书写return，后面不加数据

  * 示例代码：

    ```java
    public class MethodDemo {
        public static void main(String[] args) {
    
        }
        public static void methodTwo() {
            //return 100; 编译错误，因为没有具体返回值类型
            return;	
            //System.out.println(100); return语句后面不能跟数据或代码
        }
    }
    ```

### 5.2 方法的通用格式（掌握）

* 格式：

  ```java
  public static 返回值类型 方法名(参数) {
     方法体; 
     return 数据 ;
  }
  ```

* 解释：

  * public static 	修饰符，目前先记住这个格式

    返回值类型	方法操作完毕之后返回的数据的数据类型

    ​			如果方法操作完毕，没有数据返回，这里写void，而且方法体中一般不写return

     方法名		调用方法时候使用的标识

     参数		由数据类型和变量名组成，多个参数之间用逗号隔开

     方法体		完成功能的代码块

     return		如果方法操作完毕，有数据返回，用于把数据返回给调用者

* 定义方法时，要做到两个明确

  * 明确返回值类型：主要是明确方法操作完毕之后是否有数据返回，如果没有，写void；如果有，写对应的数据类型
  * 明确参数：主要是明确参数的类型和数量

* 调用方法时的注意：

  * void类型的方法，直接调用即可
  * 非void类型的方法，推荐用变量接收调用

## 6. 方法重载

### 6.1 方法重载（理解）

* 方法重载概念

  方法重载指同一个类中定义的多个方法之间的关系，满足下列条件的多个方法相互构成重载

  * 多个方法在同一个类中
  * 多个方法具有相同的方法名
  * 多个方法的参数不相同，类型不同或者数量不同

* 注意：

  * 重载仅对应方法的定义，与方法的调用无关，调用方式参照标准格式
  * 重载仅针对同一个类中方法的名称与参数进行识别，与返回值无关，换句话说不能通过返回值来判定两个方法是否相互构成重载

* 正确范例：

  ```java
  public class MethodDemo {
  	public static void fn(int a) {
      	//方法体
      }
      public static int fn(double a) {
      	//方法体
      }
  }
  
  public class MethodDemo {
  	public static float fn(int a) {
      	//方法体
      }
      public static int fn(int a , int b) {
      	//方法体
      }
  }
  ```

* 错误范例：

  ```java
  public class MethodDemo {
  	public static void fn(int a) {
      	//方法体
      }
      public static int fn(int a) { 	/*错误原因：重载与返回值无关*/
      	//方法体
      }
  }
  
  public class MethodDemo01 {
      public static void fn(int a) {
          //方法体
      }
  } 
  public class MethodDemo02 {
      public static int fn(double a) { /*错误原因：这是两个类的两个fn方法*/
          //方法体
      }
  }
  ```

### 6.2 方法重载练习（掌握）

* 需求：使用方法重载的思想，设计比较两个整数是否相同的方法，兼容全整数类型（byte,short,int,long） 

* 思路：

  * ①定义比较两个数字的是否相同的方法compare()方法，参数选择两个int型参数
  * ②定义对应的重载方法，变更对应的参数类型，参数变更为两个long型参数
  * ③定义所有的重载方法，两个byte类型与两个short类型参数 
  * ④完成方法的调用，测试运行结果 

* 代码：

  ```java
  public class MethodTest {
      public static void main(String[] args) {
          //调用方法
          System.out.println(compare(10, 20));
          System.out.println(compare((byte) 10, (byte) 20));
          System.out.println(compare((short) 10, (short) 20));
          System.out.println(compare(10L, 20L));
      }
  
      //int
      public static boolean compare(int a, int b) {
          System.out.println("int");
          return a == b;
      }
  
      //byte
      public static boolean compare(byte a, byte b) {
          System.out.println("byte");
          return a == b;
      }
  
      //short
      public static boolean compare(short a, short b) {
          System.out.println("short");
          return a == b;
      }
  
      //long
      public static boolean compare(long a, long b) {
          System.out.println("long");
          return a == b;
      }
  
  }
  ```

## 7. 方法的参数传递

### 7.1 方法参数传递基本类型（理解）

* 测试代码：

  ```java
  public class ArgsDemo01 {
      public static void main(String[] args) {
          int number = 100;
          System.out.println("调用change方法前：" + number);
          change(number);
          System.out.println("调用change方法后：" + number);
      }
  
      public static void change(int number) {
          number = 200;
      }
  }
  
  ```

* 结论：

  * 基本数据类型的参数，形式参数的改变，不影响实际参数 

* 结论依据：

  * 每个方法在栈内存中，都会有独立的栈空间，方法运行结束后就会弹栈消失

    ![DqMn4.png](https://s1.328888.xyz/2022/05/18/DqMn4.png)

### 7.2 方法参数传递引用类型（理解）

* 测试代码：

  ```java
  public class ArgsDemo02 {
      public static void main(String[] args) {
          int[] arr = {10, 20, 30};
          System.out.println("调用change方法前：" + arr[1]);
          change(arr);
          System.out.println("调用change方法后：" + arr[1]);
      }
  
      public static void change(int[] arr) {
          arr[1] = 200;
      }
  }
  
  ```

* 结论：

  * 对于引用类型的参数，形式参数的改变，影响实际参数的值 

* 结论依据：

  * 引用数据类型的传参，传入的是地址值，内存中会造成两个引用指向同一个内存的效果，所以即使方法弹栈，堆内存中的数据也已经是改变后的结果 

    ![DqSUB.png](https://s1.328888.xyz/2022/05/18/DqSUB.png)

### 7.3 数组遍历（应用）

* 需求：设计一个方法用于数组遍历，要求遍历的结果是在一行上的。例如：[11, 22, 33, 44, 55] 

* 思路：

  * ①因为要求结果在一行上输出，所以这里需要在学习一个新的输出语句System.out.print(“内容”);

    System.out.println(“内容”); 输出内容并换行

    System.out.print(“内容”); 输出内容不换行

    System.out.println(); 起到换行的作用

  * ②定义一个数组，用静态初始化完成数组元素初始化

  * ③定义一个方法，用数组遍历通用格式对数组进行遍历

  * ④用新的输出语句修改遍历操作

  * ⑤调用遍历方法

* 代码：

  ```java
  public class MethodTest01 {
      public static void main(String[] args) {
          //定义一个数组，用静态初始化完成数组元素初始化
          int[] arr = {11, 22, 33, 44, 55};
  
          //调用方法
          printArray(arr);
      }
  
      //定义一个方法，用数组遍历通用格式对数组进行遍历
      /*
          两个明确：
              返回值类型：void
              参数：int[] arr
       */
      public static void printArray(int[] arr) {
          System.out.print("[");
          for(int x=0; x<arr.length; x++) {
              if(x == arr.length-1) {
                  System.out.print(arr[x]);
              } else {
                  System.out.print(arr[x]+", ");
              }
          }
          System.out.println("]");
      }
  }
  ```

### 7.4 数组最大值（应用）

* 需求：设计一个方法用于获取数组中元素的最大值 

* 思路：

  * ①定义一个数组，用静态初始化完成数组元素初始化
  * ②定义一个方法，用来获取数组中的最大值，最值的认知和讲解我们在数组中已经讲解过了
  * ③调用获取最大值方法，用变量接收返回结果
  * ④把结果输出在控制台

* 代码：

  ```java
  public class MethodTest02 {
      public static void main(String[] args) {
          //定义一个数组，用静态初始化完成数组元素初始化
          int[] arr = {12, 45, 98, 73, 60};
  
          //调用获取最大值方法，用变量接收返回结果
          int number = getMax(arr);
  
          //把结果输出在控制台
          System.out.println("number:" + number);
      }
  
      //定义一个方法，用来获取数组中的最大值
      /*
          两个明确：
              返回值类型：int
              参数：int[] arr
       */
      public static int getMax(int[] arr) {
          int max = arr[0];
  
          for(int x=1; x<arr.length; x++) {
              if(arr[x] > max) {
                  max = arr[x];
              }
          }
          return max;
      }
  }
  ```

  

  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
