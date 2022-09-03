# js（上）

<a id='top'></a>

[最底部](#buttom)

[一、JavaScript简介](#1.0)

[二、JavaScript的特点](#2.0)

​		[1、动态改变页面内容](#2.1)

​		[2、动态改变网页的外观](#2.2)

​		[3、验证表单数据](#2.3)

​		[4、响应事件](#2.4)

[三、内容](#3)

​		[1、JavaScript简介](#3.1)

​				[一、JavaScript是什么？](#3.1.1)

​				[二、JavaScript编辑工具](#3.1.2)

​				[三、JavaScript在HTML的引用方式](#3.1.3)

​				[四、JavaScript和Java的关系](#3.1.4)

​		[2、JavaScript入门基础](#3.2)

​				[一、数据结构](#3.2.1)

​				[二、JavaScript数据类型](#3.2.2)

​				[三、运算符](#3.2.3)

​				[四、typeof运算符](#3.2.4)

​				[五、表达式](#3.2.5)

​				[六、类型转换](#3.2.6)

​				[七、JavaScript基本语法](#3.2.7)

​				[八、JavaScript注释](#3.2.8)

​		[3、流程控制](#3.3)

​				[一、选择结构](#3.3.1)

​				[二、循环结构](#3.3.2)

​				[三、跳转语句](#3.3.3)

​		[4.函数](#3.4)

​				[一、函数是什么？](#3.4.1)

​				[二、函数的定义](#3.4.2)

​				[三、函数的调用](#3.4.3)

​				[四、特殊函数](#3.4.4)

​				[五、JavaScript函数中的参数（arguments）](#3.4.5)

​		[5、内置函数](#3.5)

​				[一、eval()函数](#3.5.1)

​				[二、isFinite()函数](#3.5.2)

​				[三、isNaN()函数](#3.5.3)

​				[四、parseInt()函数和parseFloat()函数](#3.5.4)

​				[五、escape函数和unescape函数](#3.5.5)

​		[6、字符串对象](#3.6)

​				[一、JavaScript字符串对象简介](#3.6.1)

​				[二、length属性简介](#3.6.2)

​				[三、match()方法简介](#3.6.3)

​				[四、search()方法简介](#3.6.4)

​				[五、indexOf()方法简介](#3.6.5)

​				[六、replace()方法简介](#3.6.6)

​				[七、charAt()方法简介](#3.6.7)

​				[八、字符串英文大小写转化](#3.6.8)

​				[九、连接字符串](#3.6.9)

​				[十、比较字符串](#3.6.10)

​				[十一、split()方法](#3.6.11)

​				[十二、从字符串提取字符串](#3.6.12)

​		[7、日期对象](#3.7)

​				[一、创建日期对象](#3.7.1)

​				[二、日期对象方法](#3,7,2)













#### <a id='1.0' style='text-decoration:none'>一、JavaScript简介</a>

JavaScript，就是我们通常所说的JS，是一种嵌入到HTML页面中的脚本语言，由浏览器一边解释一边执行。

我们在“[HTML入门教程](http://www.lvyestudy.com/les_hj/html_list.aspx)”中的“[前端技术简介](http://www.lvyestudy.com/les_hj/hj_1.1.aspx)”中深入浅出地讲解了HTML、CSS和JavaScript之间的关系，这一篇文章分量很重，大家没看过的记得回去看一下。

HTML、CSS和JavaScript的关系如下：

“HTML是网页的结构，CSS是网页的外观，而JavaScript是页面的行为。

我们都知道单纯的HTML页面是静态的（只供浏览），而JavaScript的出现，把静态的页面转换成支持用户交互并响应相应事件的动态页面。那么在我们平常的浏览的网页中，都有哪些地方用到了JavaScript呢？

我们就拿绿叶学习网来说，导航、tabs选项卡、回顶部这些地方都用到了JavaScript。HTML只是一门描述性的语言，这些地方单纯地使用HTML是无法实现的，而必须使用编程的方式来实现，那就必须使用JavaScript了。



#### <a id='2.0' style='text-decoration:none'>**二、JavaScript的特点**</a>

HTML页面是静态的，而JavaScript可以弥补HTML语言的缺陷，实现Web页面客户端的动态效果。JavaScript的作用有以下几点：

<a id='2.1' style='text-decoration:none'>1、动态改变页面内容</a>

HTML页面是静态的，一旦编写，内容是无法改变的。JavaScript可以弥补这个不足，可以将内容动态地显示在网页中。

<a id='2.2' style='text-decoration:none'>2、动态改变网页的外观</a>

JavaScript通过修改网页元素的CSS样式，达到动态地改变网页的外观。

<a id='2.3 ' style='text-decoration:none'>3、验证表单数据</a>

我们常见的在各大网站中的注册中的验证功能，就是JavaScript实现的。

<a id='2.4' style='text-decoration:none'>4、响应事件</a>

JavaScript是基于事件的语言。例如点击一个按钮弹出一个对话框，就是鼠标点击触发的事件，例如绿叶学习网教程文章中的点赞效果：

对于JavaScript的理解，就一句话：如果没有使用JavaScript，网页就是静态的，唯一的功能就是给用户浏览。加入了JavaScript，网页变得绚丽多彩起来。



#### <a id='3' style='text-decoration:none'>三、**简介**</a>

<a id='3.1' style='text-decoration:none'>1、JavaScript简介</a>

<a id='3.1.1' style='text-decoration:none'>一、JavaScript是什么？</a>

1、HTML是网页的结构，CSS是网页的外观，而JavaScript是页面的行为。

2、HTML页面是静态的（只供浏览），平常我们所见到的各种网页特效就是使用JavaScript实现的。

<a id='3.1.2'>二、JavaScript编辑工具</a>

常用的JavaScript编辑工具有：

（1）记事本；

（2）Dreamweaver；

（3）UltraEdit-32；

（4）Visual Studio；

（5）sublime Text

<a id='3.1.3'>三、JavaScript在HTML的引用方式</a>

JavaScript在HTML的引用方式共有4种：

（1）页头引入（head标签内）；

（2）页中引入（body标签内）；

（3）元素事件中引入（标签属性中引入）；

（4）引入外部JS文件；

<a id='3.1.4'>四、JavaScript和Java的关系</a>

JavaScript和Java只有一毛钱的关系，无他。

JavaScript和Java虽然名字相似，但是本质上是不同的。

（1）JavaScript往往都是在网页中使用，而Java却可以在软件、网页、手机App等各个领域中使用；

（2）Java是一门面向对象的语言，而从本质上讲，JavaScript更像是一门函数式编程语言；


#### <a id='3.2'>2、JavaScript入门基础</a>

<a id='3.2.1' style='text-decoration:none'>一、数据结构</a>

JavaScript的数据结构包括：标识符、关键字、常量、变量等。

**1、标识符**

标识符，说白了，就是一个名字。在JavaScript中，变量和函数等都需要定义一个名字，这个名字就可以称为“标识符”

JavaScript语言中标识符最重要的3点就是：

（1）第一个字符必须是字母、下划线（_）或美元符号这3种其中之一，其后的字符可以是字母、数字或下划线、美元符号；

（2）变量名不能包含空格、加号、减号等符号；

（3）标识符不能和JavaScript中用于其他目的的关键字同名；

**2、关键字**

JavaScript关键字是指在JavaScript语言中有特定含义，成为JavaScript语法中一部分的那些字。

**3、常量**

常量，顾名思义就是指不能改变的量。常量的指从定义开始就是固定的，一直到程序结束。

常量主要用于为程序提供固定和精确的值，包括数值和字符串，如数字、逻辑值真（true）、逻辑值假（false）等都是常量。

**4、变量**

变量，顾名思义，就是指在程序运行过程中，其值是可以改变的。

<a id='3.2.2'>二、JavaScript数据类型</a>

JavaScript数据类型有2大分类：一是“基本数据类型”，二是“特殊数据类型”。

其中，基本数据类型包括以下3种：

- （1）数字型（Number型）：如整型84，浮点型3.14；
- （2）字符串型（String型）：如"绿叶学习网"；
- （3）布尔型（Boolean型）：true或fasle；



特殊数据类型有3种：

- （1）空值（null型）；
- （2）未定义值（undefined型）；
- （3）转义字符；

根据个人的开发经验中，只需要记忆\n、\'\"这3个就已经够初学者走很远了，其他的转义字符我们完全没必要去记忆，到时候需要的时候再回来查表就行了，

<a id='3.2.3' style='text-decoration:none'>三、运算符</a>

JavaScript的运算符按运算符类型可以分为以下5种：

（1）算术运算符；

（2）比较运算符；

（3）赋值运算符；

（4）逻辑运算符；

（5）条件运算符；

<a id='3.2.4' style='text-decoration:none'>四、typeof运算符</a>>

ypeof运算符用于返回它的操作数当前所容纳的数据的类型，这对于判断一个变量是否已被定义特别有用

例如：typeof(1)返回值是number，typeof("javascript")返回值是string。

<a id='3.2.5' style='text-decoration:none'>五、表达式</a>

表达式是一个语句的集合，计算结果是个单一值。

在JavaScript中，常见的表达式有4种

（1）赋值表达式；

（2）算术表达式；

（3）布尔表达式；

（4）字符串表达式；

<a id='3.2.6' style='text-decoration:none'>六、类型转换</a>

**1、字符串型转换为数值型**

在JavaScript中，将字符串型数据转换为数值型数据有parseInt()和parseFloat()这2种方法。其中，parseInt()可以将字符串转换为整型数据；parseFloat()可以将字符串转换为浮点型数据。

语法：

```js
parseInt()//将字符串转化成整形
parseFloat()//将字符串转化成浮点形
```

**2、数值型转换为字符串型**

在JavaScript中，将数值型数据（整型或浮点型）转换为字符串，都是使用toString()方法。

语法：

```js
.toString();
```

<a id='3.2.7' style='text-decoration:none'>七、JavaScript基本语法</a>

**1、执行顺序**

JavaScript程序按照在HTML文档中出现的顺序逐行执行。如果需要在整个HTML文件中执行，最好将其放在HTML文件的标签中。某些代码，如函数体内的代码，不会被立即执行，只有当所在的函数被其他程序调用时，该代码才会被执行。

**2、区分大小写**

JavaScript是严格区分大小写的。例如str和Str这是两个完全不同的变量。

**3、分号和空格**

在JavaScript中，语句的分号“;”是可有可无的。但是我们强烈要求大家在每一句语句后面加一个分号“;”，这是一个非常重要的代码编写习惯。

另外，JavaScript会忽略多余的空格，用户可以向脚本添加空格，来提高代码的可读性，说白了就是让代码“漂亮点”，读得舒服一点。

例如：

```js
var str="绿叶学习网JavaScript教程";
var str = "绿叶学习网JavaScript教程";  //这一行代码读起来舒服一点
```

<a id='3.2.8' style='text-decoration:none'>**八、JavaScript注释**</a>

在编写JavaScript代码时，我们经常要在一些关键代码旁做一下注释，这样做的好处很多。

语法：

```js
//单行注释内容
/*多行注释内容*/
```

“//”是单行注释方式，如果你的注释内容只占一行就应该使用这种注释方式。“/**/”是多行注释方式，如果你的注释内容占多行建议使用这种注释方式。



**<a id='3.3' style='text-decoration:none'>3、流程控制</a>**

JavaScript对程序流程的控制跟其他编程语言是一样的，主要有3种：

（1）顺序结构；

（2）选择结构；

（3）循环结构；

​		

<a id='3.3.1' style='text-decoration:none'>一、选择结构</a>

在JavaScript中，选择结构共有5种

（1）if语句;

（2）if……else语句;

（3）if……else if……语句;

（4）if语句的嵌套;

（5）switch语句;



<a id='3.3.2' style='text-decoration:none'>二、循环结构</a>

在JavaScript中，循环结构总有3种：

（1）while语句；

（2）do……while语句；

（3）for语句；

​	

<a id='3.3.3' style='text-decoration'>三、跳转语句</a>

JavaScript支持的跳转语句主要有2种：

（1）break语句；

（2）continue语句；

break语句与continue语句的主要区别是：break是彻底结束循环，而continue是结束本次循环。在这一点跟其他编程语言（如C和Java）相同。

[4.**函数**](#3.4)

[](#3.4.1)

<a id='3.4.1' style='text-decoration:none'>一、函数是什么？</a>

函数，就是一个一系列JavaScript语句的集合，这是为了完成某一个会重复使用的特定功能。在需要该功能的时候，直接调用函数即可，而不必每次都编写一大堆重复的代码。并且在需要修改该功能的时候，也只要修改和维护这一个函数即可。

总之，将语句集合成函数，好处就是方便代码重用。并且，一个好的函数名，可以让人一眼就知道这个函数实现的是什么功能，方便维护。

函数的使用只需要2步：

（1）定义函数；

（2）调用函数；



<a id='3.4.2' style='text-decoration:none'>二、函数的定义</a>

在JavaScript中，使用函数前，必须用function关键字来定义函数。

函数常用方式有2种：

（1）不指定函数名的函数；

（2）指定函数名的函数；

**1、不指定函数名的函数**

语法：

```js
function(参数1,参数2,….,参数n)
{
    //函数体语句
}
```

说明：

定义函数必须使用function关键字。

**2、指定函数名的函数**

“指定函数名的函数”是JavaScript中使用最广泛的方法，反而“不指定函数名的函数”用得比较少。

语法：

```js
function 函数名(参数1,参数2,….,参数n)
{
    //函数体语句
    return 表达式;
}
```

说明：

定义函数必须使用function关键字来定义。

函数名必须是唯一的，尽量通俗易懂，并且跟你定义的代码有关。

函数可以使用return语句将某个值返回，也可以没有返回值。

参数是可选的，可以不带参数，也可以带多个参数。如果是多个参数的话，参数之间要用英文逗号隔开

<a id='3.4.3' style='text-decoration:none'>三、函数的调用</a>

常用的函数调用方式有4种：

（1）简单调用；

（2）在表达式中调用；

（3）在事件响应中调用；

（4）通过链接调用；



<a id='3.4.4'>四、特殊函数</a>

JavaScript特殊函数有3种：

- （1）嵌套函数；
- （2）递归函数；
- （3）内置函数；

下面详细给大家讲解一下这3中函数调用方式。

**1、嵌套函数**

嵌套函数，顾名思义，就是在一个函数的内部定义另外一个函数。不过在内部定义的函数只能在内部调用，如果在外部调用，就会出错。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        //定义阶乘函数

         function fun(a)

         {

             //嵌套函数定义，计算平方值的函数

             function multi (x)

             {

                 return x*x;

             }

             var m=1;

             for(var i=1;i<=multi(a);i++)

             {

                 m=m*i;

             }

             return m;

         }

         var sum =fun(2)+fun(3);

         document.write(sum);

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript嵌套函数](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNC0xLnBuZw?x-oss-process=image/format,png) 

分析：

上面定义的multi函数只能在fun函数内部使用，如果在fun函数外部调用就会出错，大家可以在“在线测试”中自己修改代码测试一下。



**2、递归函数**

递归函数是一种非常重要的编程技术，当年我在学习其他编程技术（如C、C++、Java等）都经常用到。

递归函数用于让一个函数从其内部调用其本身。不过需要注意的是，如果递归函数处理不当，就会使程序陷入“死循环”。为了防止“死循环”的出现，可以设计一个做自加运算的变量，用于记录函数自身调用的次数，如果次数太多就让它自动退出循环。

语法：

```js
function 递归函数名(参数1)
{
    递归函数名(参数2)
}
```

说明：

在定义递归函数时，需要2个必要条件：

（1）首先包括一个结束递归的条件；

（2）其次包括一个递归调用的语句；

举例：

```js
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

         var msg="\n函数的递归调用：\n\n";

         //响应按钮的点击事件

         function Test()

         {

             var result;

             msg+="调用语句：\n";

             msg+="    result=sum(20);\n";

             msg+="调用步骤：\n";

             result=sum(20);

             msg+="计算结果：\n";

             msg+="    result="+result+"\n";

             alert(msg);

         }

         //计算当前步骤加和值

         function sum(m)

         {

             if(m==0)

             {

                 return 0;

             }

             else

             {

                 msg+="    result="+m+"+sum("+(m-2)+ ");\n";

                 result=m+sum(m-2);

             }

             return result;

         }

    </script>

</head>

<body>

    <input type="button" value="测试" onclick="Test()"/>

</body>

</html>
```

在浏览器预览效果如下：

![JavaScript递归函数](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNC0yLnBuZw?x-oss-process=image/format,png) 

分析：

在上述代码中，为了求取20以内的偶数和，定义了递归函数sum(m)，而函数Test()对其进行调用，并使用alert()方法弹出相应的提示信息。

递归函数对于初学者来说可能比较难以理解，如果实在不会，可以直接忽略它。因为在JavaScript中是比较少用到递归函数的，递归函数往往都是在其他编程语言中用得比较多。到时候需要的时候我们回来翻翻就OK了

**3、内置函数**

JavaScript中有2种函数：一种是用户自定义函数，另外一种是JavaScript语言内部已经定义好了，可以直接供我们调用的函数（也就是内置函数）。

内置函数由于已经在JavaScript语言内部定义好了的，也就是我们不需要自己定义就能用了。这样极大方便了我们的编程。



<a id='#3.4.5'>五、JavaScript函数中的参数（arguments）</a>

argument是JavaScript中的一个关键字，用于指向调用者传入的所有参数。

```js
function example(x){
    alert(x); //1
    alert(arguments.length); //3
    for(var i=0; i<arguments.length; i++){
        alert(arguments[i]);  //1,2,3   
    }      
}
example(1,2,3);
```

即使不定义参数，也可以取到调用者的参数。

```js
function abs() {
    if (arguments.length === 0) {
        return 0;
    }
    var x = arguments[0];
    return x >= 0 ? x : -x;
}
 
abs(); // 0
abs(10); // 10
abs(-9); // 9
```

**REST**

由于JavaScript函数允许接收任意个参数，所以不得不用arguments来获取函数定义a以外的参数。

```js
function exm(a) {
    var rest = [];
    if (arguments.length > 1) {
        for (var i = 1; i<arguments.length; i++) {
            rest.push(arguments[i]);
        }
    }
}
```

其实ES6给了新的rest参数，用在函数最后，多余的参数以数组的形式交给变量rest，如果传入的参数未填满函数定义的参数，rest会是一个空数组。

```js
function exm(a, b, ...rest) {
    console.log('a = ' + a);
    console.log('b = ' + b);
    console.log(rest);
}
 
exm(1, 2, 3, 4, 5);
// 结果:
// a = 1
// b = 2
// Array [ 3, 4, 5 ]
 
exm(1);
// 结果:
// a = 1
// b = undefined
// Array []
```

```js
<script>
		function say() {
	
			console.log('Hello' + arguments[0] + arguments[1]);
	
			console.log(arguments.length);
	
		}
	
		say('World！', 'ByeBye！');
	</script>
```

![img](https://img-blog.csdnimg.cn/20191228183845938.png) 

六、练习题

（1）

题目：在页面中添加两个单行文本框，在两个文本框中输入两个数字，使用[JavaScript函数](http://www.lvyestudy.com/les_js/js_4.1.aspx)比较这两个函数大小，并使用对话框输出最大数。

实现代码如下：

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        function maxNum()

        {

            //获取两个文本框的值

            var x = document.getElementById("num1").value;

            var y = document.getElementById("num2").value;

            //强制转换为数值型

            x = parseFloat(x);

            y = parseFloat(y);

            if(x<y)

            {

                alert("最大数是："+y);

            }

            else

            {

                alert("最大数是："+x);

            }

        }

    </script>

</head>

<body>

    第一个数是：<input type="text" id="num1"/><br/>

    第二个数是：<input type="text" id="num2"/><br/>

    <input type="button" onclick="maxNum()" value="计算"/>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript比较两个数大小并输出最大数](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNi0xLnBuZw?x-oss-process=image/format,png) 

我们随便输入两个数字如“50和100”，然后点击“计算”按钮即可输出最大数，效果如下：

![img](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNi0yLnBuZw?x-oss-process=image/format,png) 



分析：

这一个程序非常简单，但是包含的信息量不少。

document.getElementById()类似于CSS中的id选择器，而document.getElementById("num1").value表示选取id为num1的元素并获取它的值。这个方法经常用到，大家要记一下。我们在后续课程会给大家详细讲解。

这里用到了函数调用的其中一个方式“在事件中调用函数”。<input type="button" οnclick="maxNum()"/>表示在按钮点击的时候执行函数maxNum()。

此外，还有一点要注意的是：有些同学呀，在定义这个函数的时候定义的函数名是max，然后发现出错了！oh~，其实那是你忽略了很基础的一点，那就是自己定义的函数名是不能与JavaScript内部定义的函数名相同。


（2）

题目：写一个函数，输入一个4位数字，要求使用对话框输出这4个数字字符，但每两个数字之间留一个空格，如输入1992，应输出“1 9 9 2”。

代码实现如下：

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        function strNum()

        {

            //获取输入文本框中的值，这里获取的值是一个字符串

            var s = document.getElementById("num").value;

            var s1="";

            for(var i=0;i<4;i++)

            {

                //如果获取的不是最后一个字符

                if(i!=3)

                {

                    s1+=s.charAt(i)+ " ";

                }

                //如果获取的是最后一个字符

                else

                {

                    s1+=s.charAt(i);

                }

            }

            alert(s1);

        }

    </script>

</head>

<body>

    输入数字是：<input type="text" id="num"/><br/>

    <input type="button" onclick="strNum()" value="提交"/>

</body>

</html>
```

在浏览器预览效果如下：

![img](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNy0xLnBuZw?x-oss-process=image/format,png) 

 在文本框输入2015，然后点击“提交”按钮，效果如下：

![img](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzQtNy0yLnBuZw?x-oss-process=image/format,png) 

分析：

这里再一次用到了document.getElementById()，而字符串操作的[charAt()方法](http://www.lvyestudy.com/les_js/js_6.7.aspx)我们在上一章的练习中也接触了，详细内容我们在字符串对象这一章会讲解。程序还是比较简单的，大家琢磨一下。

[5、内置函数](#3.5)

在JavaScrit中，常用的内置函数的有7个

（1）eval()函数

（2）isFinite()函数

（3）isNaN()函数

（4）parseInt()函数

（5）parseFloat()函数

（6）escape()函数

（7）unescape()函数



<a id='3.5.1'>一、eval()函数</a>

在JavaScript中，[eval()函数](http://www.lvyestudy.com/les_js/js_5.2.aspx)可以把一个字符串当做一个JavaScript表达式一样去执行它。例如：

```js
eval("document.write('<strong>JavaScript入门教程</strong> ')");
```

上面语句说白了就是执行“document.write('**JavaScript入门教程** ')”,eval()函数用了等于没用一样。这是这种“多此一举”的做法，在实际开发很少用到eval()函数。



<a id='3.5.2'>二、isFinite()函数</a>

在JavaScript中，[isFinite()函数](http://www.lvyestudy.com/les_js/js_5.3.aspx)用来确定某一个数是否是一个有限数值。

语法：

```js
isFinite(number)
```

说明：

number参数是必选的，可以是任意的数值，例如整型、浮点型数据。

如果该参数为非数字、正无穷数和负无穷数，则返回false；否则的话，返回true。如果是字符串类型的数字，就会自动转化为数字型。



<a id='3.5.3' style='text-decoration:none'>三、isNaN()函数</a>

语法：

```js
isNaN(参数)
```

说明：

这里的参数可以是任何类型的数据，例如数字型、字符串型、日期时间型等。不过得注意一点，当参数是“字符串类型的数字”，就会自动转换为数字型。

```js
123 //这不是NaN值

"123"  //这也不是NaN值，因为“字符串类型的数字”会被自动转换为数字型

"abc123"  //这是NaN值
```

[](#3.5.4)

<a id='3.5.4'>四、parseInt()函数和parseFloat()函数</a>

在JavaScript中，将字符串型数据转换为数值型数据有[parseInt()和parseFloat()](http://www.lvyestudy.com/les_js/js_5.5.aspx)这2种方法。其中，parseInt()可以将字符串转换为整型数据；parseFloat()可以将字符串转换为浮点型数据。

语法：

```js
parseInt()  //将字符串型转换为整型
parseFloat()  //将字符串型转换为浮点型
```

说明：

将字符串型转换为整型，前提是字符串一定要是数值字符串。那什么叫数值字符串呢？“123”、“3.1415”这些只有数字的字符串就是数值字符串，而“hao123”、“360cn”等就不是数值字符串。



<a id='3.5.5'>五、escape函数和unescape函数</a>

escape()函数主要作用就是对字符串进行编码，以便它们能在所有计算机上可读。

[unescape()函数和escape()函数](http://www.lvyestudy.com/les_js/js_5.6.aspx)是刚好反过来的，escape()函数是编码，unescape()函数是解码

**1、escape函数**

escape()函数主要作用就是对字符串进行编码，以便它们能在所有计算机上可读。

语法：

```js
escape(charString)
```

说明：

charString是必选参数，表示要进行编码的字符串或文字。escape()函数返回一个包含charString内容的字符串值（Unicode格式）。除了个别如“*@”之类的符号外，其余所有空格、标点符号以及其他非ASCII字符均可用“%xx”这种形式的编码代替，其中xx等于表示该字符的十六进制数。

举例：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        document.write(escape("hello lvye!"))
    </script>
</head>
<body>
</body>
</html>
```

在浏览器预览效果如下：

![JavaScript escape函数](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzUtNi0xLnBuZw?x-oss-process=image/format,png) 

分析：

空格符对应的编码是“%20”，感叹号对应的编码是“%21”，因此执行escape("hello lvye!")后结果为“hello%20lvye%21”

**2、unescape()函数**

escape()函数和unescape()函数是刚好反过来的，前者是编码，后者是解码。

语法：

```js
unescape(charString)
```

说明：

charString是必选参数，表示要进行解码的字符串。unescape()函数返回指定值的ASCII字符串。与escape()函数相反，unescape()函数返回一个包含charString内容的字符串值，所有以“%xx”十六进制形式编码的字符都用ASCII字符集中等价的字符代替。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        document.write(unescape("hello%20lvye%21"))

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript unescape函数](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzUtNi0yLnBuZw?x-oss-process=image/format,png) 

分析：

空格符对应的编码是“%20”，感叹号对应的编码是“%21”，因此执行unescape("hello%20lvye%21")后结果为“hello lvye!”。

**六、训练题**

**在线escape加解密工具制作**

代码实现如下：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title></title>

    //定义基本样式

    <style type="text/css">

        #txt-input,#txt-output

        {

            height:60px;

        }

    </style>

    <script type="text/javascript">

        //定义加密函数

        function encrypt()

        {

            //获取输入框的值

            var str = document.getElementById("txt-input").value;

            //将输入框的值加密，并赋给输出框

            document.getElementById("txt-ouput").value = escape(str);

        }

        //定义解密函数

        function decrypt()

        {

            //获取输入框的值

            var str = document.getElementById("txt-input").value;

            //将输入框的值加密，并赋给输出框

            document.getElementById("txt-ouput").value = unescape(str);

        }

    </script>

</head>

<body>

    <form>

        <textarea id="txt-input" cols="20"></textarea><br />

        <input id="btn-encrypt" type="button" value="加密" onclick="encrypt()"/>

        <input id="btn-decrypt" type="button" value="解密" onclick="decrypt()"/>

        <input id="Reset1" type="reset" value="清空" /><br />

        <textarea id="txt-ouput" cols="20"></textarea>
    </form>
</body>
</html>
```

在浏览器预览效果如下（IE浏览器）

![img](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzUtOC0yLnBuZw?x-oss-process=image/format,png) 

分析：

（1）重置按钮的作用域是同一个form标签内部的文本框，这一点请参考“HTML入门教程”中的“按钮button”这一节；

（2）这里再次用到了document.getElementById()这一JavaScript的id选择器，这次大家打死都要记住这一个语句了，在之前都讲解了3次以上了；

（3）这个在线工具逻辑已经实现，界面还比较粗糙，剩下的就交给大家润色了。


<a id='3.6'>6、字符串对象</a>

<a id='3.6.1'>一、JavaScript字符串对象简介</a>

字符串，是程序设计中经常使用的一种数据类型，在每一种编程语言中都非常非常的重要。

这一章我们给大家详细地介绍JavaScript中的字符串对象string，然后给大家讲解一下各种操作字符串的技巧。有可能这些技巧一时半会你用不上，但是学习知识有一种说法是：你只有接触了某个知识点，即使将来你已经忘记了这个知识点具体是怎样的了，不过你却能想到用这么一个知识去帮你解决某些问题。但是，如果你没有接触这个知识点，你大脑是完全对这个知识没有概念，你连翻书的份都没，还谈解决什么问题？额，说得有点拗口，不过也是我作为程序猿多年的经验。

字符串对象string有很多方法，例如match()方法、search()方法、replace()方法等。有可能这些方法你学了一阵子都忘记具体语法是怎样的了，其实你不要埋怨自己笨，因为不经常用的知识，我们往往都容易忘记。等你需要用到这些语法了，再回来翻翻就可以了。然后经历过多次使用了，这些语法就根深蒂固了。

不过呢，在此说一下，在这一章包括之前或之后的章节，对象都有很多方法或属性，不要求每一种都掌握，但是至少我们要去看看，这样我们在以后开发中需要用到的时候，大脑“仅存”的记忆都能提醒我们要用到哪些知识点，然后我们回来翻翻就行了。
[](#3.6.2)

<a id='3.6.2'>二、length属性简介</a>

在JavaScript中，对于字符串来说，要掌握的属性就只有一个，那就是length属性。我们可以通过length属性来获取字符串的长度。

语法：

```js
字符串名.length
```

说明：

length属性很简单，但是在字符串操作中经常要用到，这个大家一定要记住。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str="I love lvye!";

        document.write("字符串长度是："+str.length);

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript字符串length属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtMi0xLnBuZw?x-oss-process=image/format,png) 

[](#3.6.3)

<a id='3.6.3' style='text-decoration:none'>三、match()方法简介</a>

在JavaScript中，使用match()方法可以从字符串内索引指定的值，或者找到一个或多个正则表达式的匹配。

语法：

```html
stringObject.match(字符串)    //匹配字符串;
stringObject.match(正则表达式)  //匹配正则表达式
```

说明：

stringObject指的是字符串对象。match()方法类似于[indexOf()方法](http://www.lvyestudy.com/les_js/js_6.3.aspx)，但是它返回的是指定的值，而不是字符串的位置。

下面来看一个例子，大家就懂了。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str="Hello World!";

        document.write(str.match("world")+"<br/>");

        document.write(str.match("World")+"<br/>");

        document.write(str.match("worlld")+"<br/>");

        document.write(str.match("world!"));

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript match()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtMy0xLnBuZw?x-oss-process=image/format,png) 

分析：

说白了，match()方法就是用来检索一个字符串是否存在。如果存在的话，返回要检索的字符串；如果不存在的话，返回null。



<a id='3.6.4' style='text-decoration:none'>四、search()方法简介</a>

在JavaScript中，search() 方法用于检索字符串中指定的子字符串，或检索与[正则表达式](http://www.lvyestudy.com/regex/regex_list.aspx)相匹配的子字符串。

语法：

```html
stringObject.search(字符串)      //检索字符串;
stringObject.search(正则表达式)  //检索正则表达式
```



说明：

stringObject指的是字符串对象。search()方法返回的是子字符串的起始位置，如果没有找到任何匹配的子串，则返回-1。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str = "I love lvyestudy!";

        document.write(str.search("lvye")+"<br/>");

        document.write(str.search("html"));

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript search()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtNC0xLnBuZw?x-oss-process=image/format,png) 

分析：

str.search("lvye")表示检索字符串"I love lvyestudy!"是否存在子字符串"lvye"，由于存在，所以返回"lvye"在字符串"I love lvyestudy!"中的起始位置7（字符串索引从0开始）。

str.search("html")表示检索字符串"I love lvyestudy!"是否存在子字符串"html"，由于不存在，因此返回-1。


<a id='3.6.5' style="text-decoration:none">五、indexOf()方法简介</a>

在JavaScript中，可以使用indexOf() 方法可返回某个指定的字符串值在字符串中首次出现的位置。

语法：

```html
stringObject.indexOf(字符串)
```

说明：

stringObject表示字符串对象。indexOf()方法跟search()方法差不多，跟match()方法类似，不同的是indexOf()方法返回的是字符串的位置，而match()方法返回的是指定的字符串。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str="Hello World!";

        document.write(str. indexOf ("world")+"<br/>");

        document.write(str. indexOf ("World")+"<br/>");

        document.write(str. indexOf ("worlld")+"<br/>");

        document.write(str. indexOf ("world!"));

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript indexOf()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtNS0xLnBuZw?x-oss-process=image/format,png) 

[六、replace()方法简介](#3.6.6)

在JavaScript中，replace()方法常常用于在字符串中用一些字符替换另一些字符，或者替换一个与[正则表达式](http://www.lvyestudy.com/regex/regex_list.aspx)匹配的子串。

语法

```js
stringObject.replace(原字符,替换字符)   
stringObject.replace(正则表达式,替换字符)  //匹配正则表达式
```

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str ="I love javascript!";

        var str_new=str.replace("javascript","lvyestudy");

        document.write(str_new);

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript replace()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtNi0xLnBuZw?x-oss-process=image/format,png) 

分析：

str.replace("javascript","lvyestudy")表示用"lvyestudy"替换str中的"javascript"。



<a id='3.6.7'>七、charAt()方法简介</a>

在JavaScript中，可以使用charAt()方法来获取字符串中的某一个字符。这个方法我们在之前的教程中已经多次接触了。这个方法非常好用，在实际开发中也经常用到。

语法：

```js
StringObject.charAt(n)
```

说明：

string.Object表示字符串对象。n是数字，表示字符串中第几个字符。注意，字符串中第一个字符的下标是0，第二个字符的下标是1，以此类推。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str = "Hello lvye!";

        document.write(str.charAt(0)+"<br/>");
        document.write(str.charAt(4));
    </script>
</head>
<body>
</body>
</html>

```



在浏览器预览效果如下：

![JavaScript charAt()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtNy0xLnBuZw?x-oss-process=image/format,png) 



​	[](#3.6.8)

<a id='3.6.8'>八、字符串英文大小写转化</a>

在JavaScript中，使用toLowerCase()和toUpperCase()这两种方法来转化字符串的大小写。其中，toLowerCase()方法将大写字符串转换为小写字符串；toUpperCase()将小写字符串转换为大写字符串。

语法：

```js
字符串名. toLowerCase()    //将大写字符串转换为小写字符串
字符串名. toUpperCase()    //将小写字符串转换为大写字符串
```

说明：

此外，还有2种大小写转化方法：toLocaleLowerCase()和toLocaleUpperCase()。这两个方法我们有可能一辈子都用不到，大家要是别的书籍中看到，可以直接忽略。

举例：

```html
	<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str="Hello Wordl!";

        document.write("以正常方式显示为："+str+"<br/>");

        document.write("以小写方式显示为："+str. toLowerCase()+"<br/>");

        document.write("以大写方式显示为："+str. toUpperCase());

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript英文大小写转换](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtOC0xLnBuZw?x-oss-process=image/format,png) 



<a id='3.6.9'>九、连接字符串</a>

在JavaScript中，可以使用concat()方法来连接2个或多个字符串。

语法：

```js
字符串1.concat(字符串2,字符串3,…,字符串n);
```

说明：

concat()方法将“字符串2,字符串3,…,字符串n”按照顺序连接到字符串1的尾部，并返回连接后的字符串

举例：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        var str1="毛扇指千阵，";
        var str2="铁马踏冰河，";
        var str3="黄沙破楼兰。";
        var str4=str1+str2+str3;
        var str5=str1.concat(str2,str3);
        document.write(str4+"<br/>");
        document.write(str5);
    </script>
</head>
<body>
</body>
</html>
```

在浏览器预览效果如下：

![JavaScript连接字符串concat()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtOS0xLnBuZw?x-oss-process=image/format,png) 

分析：

大家可以看到，原来连接字符串可以有2种方式，一种是使用concat()方法，另外一种更加简单，使用“+”运算符就可以了。在这里大家也明白我的良苦用心了吧。就是说，以后大家连接字符串别傻乎乎地用concat()方法，直接将字符串相加就可以了。

​	[](#3.6.10)

<a id='3.6.10' style='text-decoration:none'>十、比较字符串</a>

在javascript中，可以使用localeCompare()方法用本地特定的顺序来比较两个字符串。

语法：

```js
字符串1.localeCompare(字符串2)
```

说明：

比较完成后，返回值是一个数字。

（1）如果字符串1小于字符串2，则返回小于0的数字；

（2）如果字符串1大于字符串2，则返回数字1；

（3）如果字符串1等于字符串2，则返回数字0；

举例:

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str1= "JavaScript";

        var str2 = "javascript";

        var str3 = str1.localeCompare(str2);

        document.write(str3);

    </script>

</head>

<body>

</body>

</html>

```



在浏览器预览效果如下：

![JavaScript localeCompare()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtMTAtMS5wbmc?x-oss-process=image/format,png) 



<a id='3.6.11'>十一、split()方法</a>>

在javascript中，可以使用split()方法把一个字符串分割成字符串数组。

语法：

```js
字符串.split(分割符)
```

说明：

分割符可以是一个字符、多个字符或一个[正则表达式](http://www.lvyestudy.com/regex/regex_list.aspx)。分割符并不作为返回数组元素的一部分。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str ="I love lvyestudy!";

        var arr=new Array();

        arr=str.split(" ");

        document.write(arr);

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript分割字符串 split()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtMTEtMS5wbmc?x-oss-process=image/format,png) 

分析：

str.split(" ")表示字符串以空格作为分割符，而arr其实就是一个数组。。split()方法虽然简单，但是在实际开发中经常会用到，大家一定要记住喔。

对于数组，我们会在数组对象那一章详细讲解。

[十二、从字符串提取字符串](#3.6.12)

在JavaScript中，可以使用substring()方法来提取字符串中的某一部分字符串。

语法：

```js
字符串.substring(开始位置,结束位置)
```

说明：

开始位置是一个非负的整数，表示从哪个位置开始截取。结束位置也是一个非负的整数，表示在哪里结束截取。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        var str1="绿叶学习网JavaScript教程";

        var str2=str1.substring(5,15);

        document.write(str2);

    </script>

</head>

<body>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript截取字符串 substring()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzYtMTItMS5wbmc?x-oss-process=image/format,png) 



​		[](#3.7)

<a id='3.7' style='text-decoration:none'>7、日期对象</a>

<a id='3.7.1'>一、创建日期对象</a>

在JavaScript中，创建日期对象必须使用“new语句”。使用关键字new新建日期对象时，常用的有2种：

方法一：

```js
var 日期对象名 = new Date();
```

方法二：

```js
var 日期对象名 = new Date(日期字符串);
```

方法一用于获取当前系统的时间，输出格式为如下：

![img](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEtMy0yLnBuZw?x-oss-process=image/format,png) 

方法二的日期字符串可以是以下几种形式：

- （1）"2015-5-3"

- （2）"May 3,2015"

- （3）"2015/5/3"

  

其实创建日期对象不止这2种形式，不过根据个人经验，其他的创建方式大家可以直接忽略，没必要增加记忆负担。

举例：

```js
var dt1 = new Date("2015-5-3");
var dt2 = new Date("May 3,2015");
var dt3 = new Date("2015/5/3");
```



<a id='#3.7.2'>二、日期对象方法</a>

这一章学习了很多日期对象的方法。日期对象Date的方法主要分为三大组：setXxx、getXxx和toXxx。

setXxx用于设置时间和日期值；getXxx用于获取时间和日期值；toXxxx主要是将日期转换为指定格式。

用于获取日期时间的getXXX

| 方法          | 说明                                          |
| ------------- | --------------------------------------------- |
| getFullYear() | 返回一个表示年份的4位数字                     |
| getMonth()    | 返回值是0（一月）到11（十二月）之间的一个整数 |
| getDate()     | 返回值是1~31之间的一个整数                    |
| getHours()    | 返回值是0~23之间的一个整数，来表示小时数      |
| getMinutes()  | 返回值是0~59之间的一个整数，来表示分钟数      |
| getSeconds()  | 返回值是0~59之间的一个整数，来表示秒数        |

用于设置日期时间的setXXX

| 方法          | 说明                     |
| ------------- | ------------------------ |
| setFullYear() | 可以设置年、月、日       |
| setMonth()    | 可以设置月、日           |
| setDate()     | 可以设置日数             |
| setHours()    | 可以设置时、分、秒、毫秒 |
| setMinutes()  | 可以设置分、秒、毫秒     |
| setSeconds()  | 可以设置秒、毫秒         |

表3 将日期时间转换为字符串的toXxx

| 方法             | 说明                                        |
| ---------------- | ------------------------------------------- |
| toString()       | 将日期时间转换为普通字符串                  |
| toUTCString()    | 将日期时间转换为世界时间（UTC）格式的字符串 |
| toLocaleString() | 将日期时间转换为本地时间格式的字符串        |





[回到顶端](#top)

<a id='buttom'></a>







