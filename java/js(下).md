# js（下）

<a id='top'></a>

[最底部](#buttom)

[1、数组对象](#1)

​		[一、数组基础](#1.1)

​		[二、数组的属性和方法](#1.2)

[2、数值对象](#2)

[3、窗口对象](#3)

​		[一、窗口对象简介](#3.1)

​		[二、打开和关闭窗口](#3.2)

​		[三、改变窗口大小](#3.3)

​		[四、窗口历史](#3.4)

​		[五、定时器](#3.5)

[4、JavaScript对话框](#4)

​		[一、alert()](#4.1)

​		[二、confirm()](#4.2)

​		[三、prompt()](#4.3)

[5、文档对象](#5)

​		[一、document对象简介](#5.1)

​		[二、训练题（1）网页动态标题](#5.2)

[6、DOM对象](#6)

​		[一、DOM节点属性](#6.1)

​		[二、DOM节点操作](#6.2)

[7、JavaScript对象](#7)

​		[一、事件是什么？](#7.1)

​		[二、JavaScript事件](#7.2)













<a id='1'>1、数组对象</a>

<a id='1.1'>一、数组基础</a>>

**1、数组是什么？**

在JavaScript中，我们可以使用“数组”来存储一组“相同数据类型”的数据结构。

**2、创建数组**

在JavaScript中，创建数组共有3种方法：

（1）新建一个长度为0的数组

举例：

```js
var myArr = new Array();
```

（2）新建长度为n的数组

举例:

```js
var myArr = new Array(3);
myArr[0]="HTML";
myArr[1]="CSS";
myArr[2]="JavaScript";
```

（3）新建指定长度的数组，并赋值

举例：

```js
var myArr = new Array(1,2,3,4);
```

注意，在JavaScript中，数组的索引是从0开始的，而不是从1开始的。

**3、数组元素的赋值与获取**

在JavaScript中，数组元素的赋值与获取都是通过数组下标来实现。

<a id='1.2' style='text-decoration:none'>二、数组的属性和方法</a>

**1、数组的属性**

在Array对象中有3个属性，分别是length、constructor和prototype。在初学者阶段，我们仅仅掌握length这个属性就可以了。

**2、数组的方法**

Array对象常用的方法

| 方法       | 说明                     |
| ---------- | ------------------------ |
| slice()    | 获取数组中的某段数组元素 |
| unshift()  | 在数组开头添加元素       |
| push()     | 在数组末尾添加元素       |
| shift()    | 删除数组中第一个元素     |
| pop()      | 删除数组最后一个元素     |
| toString() | 将数组转换为字符串       |
| join()     | 将数组元素连接成字符串   |
| concat()   | 多个数组连接为字符串     |
| sort()     | 数组元素正向排序         |
| reverse()  | 数组元素反向排序         |

<a id='2'>2、数值对象</a>

下面都是这一章所讲解到的Math对象比较重要的方法：

Math对象的方法

| 方法     | 说明                       |
| -------- | -------------------------- |
| max(x,y) | 返回x和y的最大值           |
| min(x,y) | 返回x和y的最小值           |
| pow(x,y) | 返回x的y次幂               |
| abs(x)   | 返回x的绝对值              |
| round(x) | 把数四舍五入为最接近的整数 |
| random() | 返回0~1之间的随机数        |
| ceil(x)  | 对一个数进行上舍入         |
| floor(x) | 对一个数进行下舍入         |



**<a id='3' style='text-decoration:none'>3、窗口对象</a>**

现在大家都知道了，假如我们要学习一个“XXX对象”，那肯定学习它的属性和方法。window对象也是同样的道理。

关于window对象的属性很多，但是我们在[JavaScript入门](http://www.lvyestudy.com/les_js/js_list.aspx)阶段一个都用不着！所以这一章大家只需要认真掌握window对象的方法即可。

window对象方法







<a id='3.1'>一、窗口对象简介</a>>

之前几个章节都是JavaScript的基础部分，大家要真想掌握JavaScript，就必须得把基础给打扎实。这一章我们进入JavaScript的核心技术，其实核心技术部分也是比较简单的，大家不要一看到就退缩。

在之前我们接触过很多JavaScript对象，例如什么数组对象Array、日期对象Date等。.这一章我们来学习JavaScript最核心的对象之一：window对象。

在JavaScript中，一个浏览器窗口就是一个window对象。window对象主要用来控制由窗口弹出的对话框、打开窗口或关闭窗口、控制窗口的大小和位置等等。一句话，window对象就是用来操作“浏览器窗口”的一个对象。
。
**1、window对象属性**

市面上很多教程在讲解window、document等对象时，不管是常用的还是不常用的属性和方法，先一上来就帮你全部列出来，读者看得头都大。其实在JavaScript入门阶段，对于window对象的属性和方法，我们只需要掌握一些常用的就行，其他需要深入的我们在JavaScript进阶再给大家详细探讨。

关于window对象的属性很多，但是我们在JavaScript入门教程阶段一个都用不着！所以这一章大家只需要认真掌握window对象的方法即可。
**2、window对象方法**

| 方法                          | 说明                             |
| ----------------------------- | -------------------------------- |
| open(),close()                | 打开窗口，关闭窗口               |
| resizeBy(),resezeTo()         | 改变窗口大小                     |
| moveBy(),moveTo()             | 移动窗口                         |
| setTimeout(),clearTimeout()   | 设置或取消‘一次性’执行的定时器   |
| setInterval(),clearInterval() | 设置或去取消‘重复性’执行的定时器 |

上面，我把window对象属性去掉，并且筛选出最常用的方法。在JavaScript入门之时，只需要掌握这些就已经足够我们走很远了。



<a id='3.2'>二、打开和关闭窗口</a>

在JavaScript中，打开和关闭新的窗口，这是很常见的一种操作。

在绿叶学习网的JavaScript在线测试工具中，当点击“调试代码”按钮时，就会打开一个新的窗口，并把HTML文档输出到新的页面中去。这里面涉及的方法，就是这一节我们要说到的“使用JavaScript打开和关闭窗口”。
**1、JavaScript打开窗口**

在JavaScript中，我们可以使用window对象中的open()方法来打开一个新窗口。

语法：

```js
window.open(URL, 窗口名称, 参数);
```

说明：

URL：指的是打开窗口的地址，如果URL为空字符串，则浏览器打开一个空白窗口，并且可以使用document.write()方法动态输出HTML文档。

窗口名称：指的是window对象的名称，可以是a标签或form标签中target属性值。如果指定的名称是一个已经存在的窗口名称，则返回对该窗口的引用，而不会再新打开一个窗口。

参数：对打开的窗口进行属性设置。

| 方法       | 说明                                     |
| ---------- | ---------------------------------------- |
| top        | 窗口顶部距离屏幕顶部的距离，默认单位为px |
| left       | 窗口左边距离屏幕左边的距离，默认单位为px |
| width      | 窗口的宽度，默认单位为px                 |
| height     | 窗口的高度，默认单位为px                 |
| scrollbars | 是否显示滚动条                           |
| resizable  | 窗口大小是否固定                         |
| toolbar    | 浏览器工具条，包括前进或后退按钮         |
| menubar    | 菜单条，一般包括文件、编辑及其它一些条目 |
| location   | 地址栏，是可以输入URL的浏览器文本区      |

这些可选参数都不是那么常用，大家不记住也没啥关系，以后需要的时候回到这里查询一下就OK了。

下面举几个常用的窗口打开的例子：

（1）打开一个新窗口：

```js
window.open("http://www.lvyestudy.com","","");
```

上面是打开一个新窗口，并且在新窗口加载绿叶学习网首页。

（2）打开一个指定位置的窗口：

```js
window.open("http://www.lvyestudy.com ","","top=200,left=200");
```

（3）打开一个指定大小的窗口：

```js
window.open("http://www.lvyestudy.com ","","width=200,height=200");
```

（4）打开一个固定大小的窗口：

```js
window.open("http://www.lvyestudy.com ","","width=200,height=200,resizable");
```

（5）打开一个显示滚动条的窗口：

```js
window.open("http://www.lvyestudy.com ","","width=200,height=200,scrollbars");
```

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        function openWindow() {

            window.open("http://www.lvyestudy.com ", "", "width=200,height=200,resizable");

        }

    </script>

</head>

<body>

    <input id="btn" type="button" value="打开窗口" onclick="openWindow()"/>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript打开窗口](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTItMS5wbmc?x-oss-process=image/format,png) 

分析：

![JavaScript window.open()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTItMi5wbmc?x-oss-process=image/format,png) 

此外还需要注意一点，window.open()方法中的参数width和height设置的时候是不需要加单位（px）的，浏览器默认就已经给我们添加单位。

**2、JavaScript关闭窗口**

在JavaScript中，我们可以使用window对象中的close()方法来关闭一个窗口。

（1）、关闭当前窗口

在JavaScript中，如果想要关闭当前的窗口，有3种方式：

```js
window.close();
close();
this.close();
```

（2）、关闭子窗口

所谓的“关闭子窗口”就是关闭之前使用window.open()方法动态创建的子窗口。

语法：

```js
窗口名.close();
```

说明：

使用window.open()方法动态创建的窗口时，我们可以将窗口以变量形式保存，然后再使用close()方法关闭动态创建的窗口。

举例：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        var newWindow = window.open("http://www.lvyestudy.com","","width=200,height=200");
        function closeWindow()
        {
            newWindow.close();
        }
    </script>
</head>
<body>
<input type="button" value="关闭窗口" onclick="closeWindow()"/>
</body>
```

在浏览器预览效果如下：

![JavaScript关闭窗口](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTItMy5wbmc?x-oss-process=image/format,png) 

![JavaScript window.close()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTItNC5wbmc?x-oss-process=image/format,png) 

分析：

你会看到，浏览器会打开2个窗口。当我们点击“关闭窗口”按钮后，被打开的“子窗口”就会被关闭。

[(#3.3)

<a id='3.3'>三、改变窗口大小]</a>

在JavaScript中，可以使用window对象的resizeTo()方法或resizeBy()方法来改变窗口的大小。

**1、resizeTo()方法**

语法：

```js
window.resizeTo(x,y)
```

说明：

x表示改变后的水平宽度，y表示改变后的垂直高度。x和y的单位都是px，浏览器自带单位，我们只需要使用数值即可。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        function resizeWindow()

        {
            window.resizeTo(200,200);
        }
    </script>
</head>
<body>
    <input type="button" value="改变大小" onclick="resizeWindow()"/>
</body>
</html>
```

在浏览器预览效果如下：

![JavaScript resizeTo()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTMtMS5wbmc?x-oss-process=image/format,png) 

分析：

当我们点击“改变大小”按钮之后，当前窗口的的宽度为200px，而高度变为200px。注意resizeTo(x,y)方法中的x和y是不需要加px作为单位的，因为浏览器默认已经带有px作为单位。

**2、resizeBy()方法**

语法：

```js
window.resizeBy(x, y)
```

说明：

当x、y的值大于0时为扩大，小于0时为缩小。其中x和y的单位都是px。

x表示窗口水平方向每次扩大或缩小的数值，y表示垂直方向窗口每次扩大或缩小的数值。

resizeTo(x,y)与resizeBy(x,y)不同在于：resizeTo(x,y)中的x、y是“改变后”的数值，而resizeBy(x,y)中的x、y是“增加或减少”的数值。“to”表示一个结果，“by”表示一个过程，大家好好琢磨“to”和“by”的英文含义就懂了。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        function resizeToWindow() {

            window.resizeTo(200,200);

        }

        function resizeByWindow() {

            window.resizeBy(50,50);

        }

    </script>

</head>

<body>

    <input type="button" value="resizeTo" onclick="resizeToWindow()"/>

    <input type="button" value="resizeBy" onclick="resizeByWindow()"/>

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript resizeBy()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTMtMi5wbmc?x-oss-process=image/format,png) 

分析：

我们首先点击“resizeTo”按钮把当前窗口宽度设置为200px，而高度也设置为200px。然后每当我们点击1次“resizeBy”按钮，我们会发现当前窗口的宽度和高度都会增加50px。这样都是由于window.resizeBy(50,50)的结果。



<a id='3.4'>四、窗口历史</a>

平常在使用浏览器当中，我们都会经常使用浏览器中的“前进”和“后退”。其实浏览器都会帮我们保存浏览的历史（即窗口历史）。那么在JavaScript中，我们该如何来操作这些窗口历史呢？

在JavaScript中，我们使用window对象中的history对象进行访问窗口历史。很多人对“window对象中的history对象”这一句不太理解，其实“对象里面也可以有子对象”的。看过JSON教程的读者都知道，我们可以在一个对象里面再定义一个子对象。

我们在JavaScript进阶教程的“JavaScript对象”这一节再详细为大家探讨。

既然提到对象，那肯定少不了还是按照“对象的属性”和“对象的方法”这两个套路来给大家讲解了
**1、history对象属性**

在JavaScript中，hisotry对象常用的属性如下：

history对象属性

| 属性     | 说明                      |
| -------- | ------------------------- |
| current  | 当前窗口的URL             |
| next     | 历史列列表的中的下一个url |
| previous | 历史列表中的前一个url     |
| length   | 历史列表的长度            |

这些history对象属性比较少用

**2、history对象方法**

在JavaScript中，hisotry对象常用的方法如下：



| 方法      | 说明         |
| --------- | ------------ |
| go()      | 进入指定网页 |
| back()    | 返回上一页   |
| forward() | 进入下一页   |

我们常见的“上一页”与“下一页”实现代码如下：

语法：

```html
<a href="javascript:window.history.forward();">下一页</a>
<a href="javascript:window.history.back();">上一页</a>
```

注意一下，这种“上一页”与“下一页”是针对浏览器历史记录而言，不能用来制作类似绿叶学习网那种分页特效。两者是完全不同的概念

![JavaScript窗口历史](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTUtMS5wbmc?x-oss-process=image/format,png) 

当然，我们还可以使用hisotry.go()方法指定要访问的历史记录。若参数为正数，则向前移动；若参数为负数，则向后移动，例如：

```html
<a href="javascript:window.history.go(-1);">向后退1次</a>
<a href="javascript:window.history.back(2);">向后前进2次</a>
```

使用history.length属性能够访问history数组的长度，可以很容易地转移到列表的末尾，例如：

```html
<a href="javascript:window.history.length-1;">末尾</a>
```

在JavaScript中，操作窗口历史语法很简单，也不是那么常用。一般情况下，在404页面中，为了用户体验，往往会有一个提供“返回上一页”的选项，这其中就用到了下面这种语法：

```html
<a href="javascript:window.history.go(-1);">返回上一页</a>
```



<a id='3.5'>五、定时器</a>>

什么叫定时器？我们可以看到绿叶学习网首页有一个“图片轮播”特效，每隔2s图片变换一次，这里就用到了定时器。啊，定时器，太重要了！天塌下来，大家都要扛着把它学会先。

定时器用途非常广，在图片轮播、在线时钟、弹窗广告等地方大显身手。凡是自动执行的东西，很大可能都是跟定时器有关。

在JavaScript中，关于定时器的实现，我们有2组方法：

- （1）setTimeout()和clearTimeout()；
- （2）setInterval()和clearInterval()；

这一节的例子使用“在线测试”不会有效果，请大家自行把代码复制到本地编辑器进行测试预览。下面我们详细分析这2组方法的用法与不同

**1、setTimeout()和clearTimeout()**

在JavaScript中，我们可以使用setTimeout()方法来设置“一次性”调用的函数。其中clearTimeout()可以用来取消执行setTimeout()方法。

语法：

```js
var 变量名 = setTimeout(code , time);
```

说明：

参数code可以是一段代码，也可以是一个调用的函数名；

参数time表示时间，表示要过多长时间才执行code中的内容，单位为毫秒。

举例：参数code是一段代码

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        window.onload = function () {

            setTimeout("alert('欢迎来到绿叶学习网');", 2000);

        }

    </script>

</head>

<body>
    <p>2秒后提示欢迎语。</p>
</body>
</html>
```

在浏览器预览效果如下：

![setTimeout()和clearTimeout()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTYtMS5wbmc?x-oss-process=image/format,png) 

分析：

打开页面2秒后，浏览器会弹出欢迎语。由于setTimeout()方法只会执行一次，所以只会弹出一次对话框。弹出对话框如下图：

![JavaScript定时器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTYtMi5wbmc?x-oss-process=image/format,png) 

举例2：参数code是一个函数名

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">
        window.onload = function () {
            setTimeout("welcome()", 2000);
        }
        function welcome() {
            alert("欢迎来到绿叶学习网");
        }
    </script>
</head>
<body>
    <p>2秒后提示欢迎语。</p>
</body>
</html>
```

在浏览器预览效果如下：

![JavaScript setTimeout()和clearTimeout()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTYtMy5wbmc?x-oss-process=image/format,png) 

分析：

举例1和举例2实际效果是相同的，只不过参数code不一样罢了。

**2、setInterval()和clearInterval()**

在JavaScript中，我们可以使用setInterval()方法来设置“重复性”调用的函数。其中clearInterval()可以用来取消执行setTimeout()方法。

语法：

```js
var 变量名 = setInterval (code , time);
```

说明：

参数code可以是一段代码，也可以是一个调用的函数名；

参数time表示时间，表示要过多长时间才执行code中的内容，单位为毫秒。

setTimeout()方法与setInterval()方法的语法很相似，实际上这两者在用法方面区别非常大。其中setTimeout()方法内的代码只会执行一次，而setInterval()方法内的代码会重复性执行，除非你使用clearInterval()方法来取消执行。
举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title></title>

    <script type="text/javascript">

        //定义全局变量，用于记录秒数

        var n = 5;

        window.onload = function () {

            //设置定时器，重复执行函数countDown()

            var t = setInterval("countDown()", 1000);

        }

        //定义函数

        function countDown() {

            //判断n是否大于0，因为倒计时不可能有负数

            if (n > 0){

                n--;

                document.getElementById("num").innerHTML = n;

            }

        }

    </script>

</head>

<body>

    <p>新年倒计时：<span id="num">5</span></p>

</body>

</html>

```

在浏览器预览效果如下：

![setInterval()和clearInterval()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTYtNC5wbmc?x-oss-process=image/format,png) 

分析：

window.onload表示在页面加载完毕执行，在“JavaScript页面相关事件”我们会详细讲解到。

setInterval()方法会重复执行某一段代码或函数。如果这个例子使用setTimeout方法就不能实现了，因为setTimeout()方法只会执行一次，而setInterval()会重复执行。
举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        //定义全局变量，用于记录秒数

        var n = 0;

        window.onload = function () {

            //设置定时器，重复执行函数add()

            var t = setInterval("add()", 1000);

            //点击“暂停”按钮事件

            document.getElementById("btn_pause").onclick = function () {

                clearInterval(t);

            }

            //点击“继续”按钮事件

            document.getElementById("btn_continue").onclick = function () {

                if (confirm("你还要继续装逼？")){

                    t = setInterval("add()", 1000);

                }

            }

        }

        //定义计时函数

        function add() {

            n++;

            document.getElementById("num").innerHTML = n;

        }

    </script>

</head>

<body>

    <p>你已经装了<span id="num">0</span>秒的“逼”，赶紧暂停吧！</p>

    <input id="btn_pause" value="暂停" type="button"/>

    <input id="btn_continue" value="继续" type="button" />

</body>

</html>

```

在浏览器预览效果如下：

![JavaScript setInterval()和clearInterval()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEwLTYtNS5wbmc?x-oss-process=image/format,png) 

分析：

这里我做了一个小程序，其中使用setInterval()方法重复执行计时函数，并且利用按钮点击事件配合clearInterval()方法来进行“暂停”。

对于初学者来说，这个程序可能有点复杂，涉及了JavaScript对话框、DOM操作和JavaScript事件。请大家学习了后续课程再来看看。

这一节，我们把定时器的语法简单给大家做个介绍，在后面课程或者以后开发中，你们会经常见到定时器的身影。
总结

1、在JavaScript中，关于定时器的实现，我们有2组方法：

（1）setTimeout()和clearTimeout()；
（2）setInterval()和clearInterval()；
2、setTimeout()方法内的代码只会执行一次，而setInterval()方法内的代码会重复性执行。



<a id='4'>4、JavaScript对话框</a>>

在JavaScript中，对话框共有3种，这3种对话框分别使用以下3种方法定义：

- （1）alert()；
- （2）confirm()；
- （3）prompt()；

其中前两种用得比较多，最后一种在实际开发中用得比较少。



<a id='4.1'>一、alert()</a>

在JavaScript中，我们可以使用[window对象](http://www.lvyestudy.com/les_js/js_10.1.aspx)中的[alert()方法](http://www.lvyestudy.com/les_js/js_11.2.aspx)来弹出一个提示框。该对话框效果如下

![JavaScript alert()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzExLTUtMS5wbmc?x-oss-process=image/format,png) 

语法：

```js
alert(message)
```

说明：

该对话框只是用于提示，并不能对JavaScript脚本产生任何影响。message是必选参数，即提示框的信息，这是一个字符串。alert()方法没有返回值。



<a id='4.2' style='text-decoration:none'>二、confirm()</a>

在JavaScript中，[confirm()方法](http://www.lvyestudy.com/les_js/js_11.3.aspx)对话框一般用于确认信息，它只有一个参数，返回值为true或false。该对话框效果如下：

![JavaScript confirm()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzExLTUtMi5wbmc?x-oss-process=image/format,png) 

语法：

```js
confirm(message)
```

说明：

message是必选项，表示弹出对话框中的文本，这是一个字符串。如果用户点击“确定”，则confirm()返回true。如果用户点击“取消”按钮，则confirm()返回false。confirm()方法往往都是和按钮结合使用。

<a id='4.3' style='text-decoration:none'>三、prompt()</a>

在JavaScript中，prompt()方法对话框用于输入并返回用户输入的字符串。该对话框效果如下

![JavaScript prompt()方法](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzExLTUtMy5wbmc?x-oss-process=image/format,png) 

语法：

```js
prompt(message);
```

说明：

参数message表示对话框提示内容，这是一个字符串。

总结

1、这3种对话框特点如下：

（1）alert()：仅有提示文字，没有返回值；

（2）confirm()：具有提示文字，返回“布尔值”（true或false）；

（3）prompt()：具有提示文字，返回“字符串”；




<a id='5' style='text-decoration:none'>5、文档对象</a>

<a id='5.1' style='text-decoration:none'>一、document对象简介</a>

**1、document对象属性**

| 属性             | 说明                      |
| ---------------- | ------------------------- |
| title            | 文档标题，即title标签内容 |
| URL              | 文档地址                  |
| fileCreateDate   | 文档创建日期              |
| fileModifiedDate | 文档修改时间（精确到天）  |
| lastModified     | 文档修改时间（精确到秒）  |
| fileSize         | 文档大小                  |
| fgColor          | 定义文档的前景色          |
| bgColor          | 定义文档的背景色          |
| linkColor        | 定义“未访问”的超链接颜色  |
| alinkColor       | 定义“被激活”的超链接颜色  |
| vlinkColor       | 定义“访问过”的超链接颜色  |

**2、document对象方法**

| 方法                        | 说明                                         |
| --------------------------- | -------------------------------------------- |
| document.write()            | 输入文本到当前打开的文档                     |
| document.writeIn()          | 输入文本到当前打开的文档，并且添加换行符'\n' |
| document.getElementById()   | 获取某个id的元素                             |
| document.getElementByName() | 获取某个name值的元素，用于表单元素           |

上面列出了document对象常用的属性和方法，跟window对象的学习一样，在[JavaScript入门](http://www.lvyestudy.com/les_js/js_list.aspx)阶段，站长只会给大家讲解最实用的。对于那种压根儿用不上的，我也懒得花时间去写。



<a id='#5.2' style='text-decoration:none'>二、训练题（1）网页动态标题</a>

在浏览网页的时候，我们经常看到不少网页标题在闪动。这一节我们给大家讲解一个实际开发中的技巧“网页动态标题”。

实现代码如下：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <script type="text/javascript">

        //定义全局变量，用于标识

        var flag = 0;

        window.onload = function () {

            //定时器

            setInterval("titleChange()", 1000);

        }

        //定义函数

        function titleChange() {

            if(flag==0)

            {

                document.title = "★☆★绿叶学习网★☆★";

                flag = 1;

            }

            else

            {

                document.title = "☆★☆绿叶学习网☆★☆";

                flag = 0;

            }

        }
    </script>
</head>
<body>
</body>
</html>
```

在浏览器预览效果如下：

![JavaScript实现网页动态标题_](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEyLTgtMS5wbmc?x-oss-process=image/format,png) 

分析：

这个例子使用在线测试不会有效果，请大家在本地编辑器中测试预览。

这里主要使用了页面加载事件window.onload和[JavaScript定时器](http://www.lvyestudy.com/les_js/js_10.6.aspx)。算法很简单，只要使用了一个全局变量作为标识



<a id='6'>5、DOM对象</a>

DOM，全称“Document Object Model（文档对象模型）”，它是由W3C组织定义的一个标准。

很多书籍一上来就大篇幅地展开说明DOM的历史和定义，看了老半天也不知道DOM是什么鬼。在这里，关于DOM的风流逸事就不展开了，免得初学者看得一头雾水，也浪费时间。

在前端开发时，我们往往需要在页面某个地方添加一个元素或者删除元素，这种添加元素、删除元素的操作就是通过DOM来实现的。

说白了，DOM就是一个接口，我们可以通过DOM来操作页面中各种元素，例如添加元素、删除元素、替换元素等。这下大家就懂了吧。

记住，DOM就是文档对象模型，文档对象模型就是DOM，很多人在学习DOM的时候看到“文档对象模型”还不知道是什么？= =||

在DOM学习中，记住最重要的一句话：每一个元素节点都看成一个“对象”。由于元素节点也是一个对象，因此他们有自身的属性和方法。




<a id='6.1' style='text-decoration:none'>一、DOM节点属性</a>

| 属性            | 说明                         |
| --------------- | ---------------------------- |
| parentNode      | 获得当前节点的父节点         |
| childNode       | 获得当前节点的子节点集合     |
| firstChild      | 获取当前节点的一个子节点     |
| lastChild       | 获取当前节点的最后一个子节点 |
| previousSibling | 获取当前节点的前一个兄弟节点 |
| nextSibling     | 获取当前节点的后一个兄弟节点 |
| attributes      | 元素的属性列表               |

### 

<a id='6.2' style='text-decoration:none'>二、DOM节点操作</a>

在JavaScript中，可以通过以下2种方式来选中指定元素：

（1）getElementById()；

在JavaScript中，如果想通过id来选中元素，我们可以使用document对象的getElementById()方法。

getElementById()方法类似于CSS中的id选择器。

语法：

```js
document.getElementById('元素id')
```

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

</head>

<body>

    <div id="lvye">绿叶学习网JavaScript入门教程</div>

    <script type="text/javascript">

        var e = document.getElementById("lvye");

        e.style.color = "red";

    </script>

</body>

</html>

```

在浏览器预览效果如下：

![getElementById()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEzLTQtMS5wbmc?x-oss-process=image/format,png) 

分析：

这里使用document.getElementById()的方法获取id为lvye的div元素，然后把这个DOM对象赋值给变量e，然后使用DOM对象的style对象来设置div元素颜色为红色。

（2）getElementsByName()；

在JavaScript中，如果想通过name来选中元素，我们可以使用document对象的getElementsByName()方法。

语法：

```js
document.getElementsByName("表单元素name值");
```

说明：

getElementsByName()方法都是用于获取表单元素。

与getElementById()方法不同的是，使用该方法的返回值是一个数组，而不是一个元素。因此，我们想要获取具体的某一个表单元素，就必须通过数组下标来获取。

注意，是getElementsByName()而不是getElementByName()。数组嘛，当然是复数。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

</head>

<body>

    <input name="web" id="radio1" type="radio" value="HTML"/>

    <input name="web" id="radio2" type="radio" value="CSS"/>

    <input name="web" id="radio3" type="radio" value="JavaScript"/>

    <input name="web" id="radio4" type="radio" value="jQuery"/>

    <script type="text/javascript">

        alert(document.getElementsByName("web")[0].value);

    </script>

</body>

</html>

```

在浏览器预览效果如下：

![getElementsByName()](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzEzLTQtMi5wbmc?x-oss-process=image/format,png) 

分析：

getElementsByName()方法在实际开发中比较少用，大家了解一下即可。

其实可以这样说， getElementById()和getElementsByName()这两种方法是“JavaScript选择器”。

除了getElementById()和getElementsByName()这两种方法，JavaScript还提供另外一种getElementByTagName()方法，这个方法类似于CSS中的元素选择器。但是getElementByTagName()方法有个很大缺点，它会把整个页面中相同的元素都选中。用起来也比较麻烦，实际开发中很少用到。
1、创建节点

在JavaScript中，创建新节点都是先用document对象中的createElement()和createTextNode()这2种方法创建一个元素节点，然后再通过appendChild()、insertBefore()等方法把新元素节点插入现有的元素节点中去。

语法：

```js
var e = document.createElement("元素名");
var txt = document.createTextNode("元素内容");
e.appendChild(t);    //把元素内容插入元素中去
```

**2、插入节点**

在JavaScript中，插入节点有2种方法：appendChild()和insertBefore()。

（1）appendChild()

在JavaScript中，我们可以使用appenChild()方法把新的节点插入到当前节点的“内部”。

语法：

```js
obj.appendChild(new)
```

说明：

obj表示当前节点，new表示新节点。

（2）insertBefore()

在JavaScript中，我们可以使用insertBefore()方法将新的子节点添加到当前节点的“末尾”。

语法：

```js
obj.insertBefore(new,ref)
```

说明：

obj表示父节点；

new表示新的子节点；

ref指定一个节点，在这个节点前插入新的节点。

**3、删除节点**

在JavaScript中，我们可以使用removeChild()方法来删除当前节点下的某个子节点。

语法：

```js
obj.removeChild(oldChild);
```

**4、复制节点**

在JavaScript中，我们可以使用cloneNode()方法来实现复制节点。

语法：

```js
obj.cloneNode(bool)
```

说明：

参数obj表示被复制的节点，而参数bool是一个布尔值，取值如下：

（1）1或true：表示复制节点本身以及复制该节点下的所有子节点；

（2）0或false：表示仅仅复制节点本身，不复制该节点下的子节点；

**5、替换节点**

在JavaScript中，我们可以使用replaceChild()方法来实现替换节点。

语法：

```js
obj.replaceChild(new,old)
```

说明：

obj，表示被替换节点的父节点；

new，表示替换后的新节点；

old，需要被替换的旧节点。

6、innerHTML和innerText

在JavaScript中，我们可以使用innerHTML和innerText这2个属性很方便地获取和设置某一个元素内部子元素或文本。

innerHTML属性被多数浏览器所支持，而innerText只能被IE、chrome等支持而不被Firefox支持。

7、JavaScript操作CSS样式

在JavaScript中，对于元素的CSS操作，我们使用的是DOM对象中的style对象来操作。

语法：

```js
obj.style.属性名;
```

说明：

obj指的是DOM对象，也就是通过document.getElementById()等获取而来的DOM元素节点。



**<a id='7'>7、JavaScript对象</a>**

<a id='7.1' style='text-decoration:none'>一、事件是什么？</a>

​	在JavaScript中，事件往往是页面的一些动作引起的，例如当用户按下鼠标或者提交表单，甚至在页面移动鼠标时，事件都会出现。

### 

<a id='7.2' style='text-decoration:none'>二、JavaScript事件</a>

在JavaScript中，调用事件的方式共有2种：

（1）在script标签中调用；

在script标签中调用事件，也就是在<script></script>标签内部调用事件。

语法：

```js
var 变量名 = document.getElementById("元素id");//获取某个元素，并赋值给某个变量

变量名.事件处理器 = function()

{

    ……

}
```

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

</head>

<body>

    <input id="btn" type="button" value="提交" />

    <script type="text/javascript">

        var e = document.getElementById("btn");

        e.onclick = function () {

            alert("绿叶学习网");

        }

    </script>

</body>

</html>
```

在浏览器预览效果如下：

![JavaScript事件调用方式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzE0LTItMS5wbmc?x-oss-process=image/format,png) 

分析：

当点击了按钮之后，JavaScript就会调用鼠标的点击（onclick）事件，效果如下：

![JavaScript调用事件](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzE0LTItMi5wbmc?x-oss-process=image/format,png) 

很多人觉得很奇怪，document.getElementById()获取的是一个元素，能赋值给一个变量吗？答案是可以的。那问题又来了，为什么要使用document.getElementById()来获取一个元素赋值给一个变量呢？用以下代码不行么？

```js
<script type="text/javascript">

    document.getElementById("btn").onclick = function{

        alert("绿叶学习网");

    }

</script>
```

其实上述代码也是可行的，只不过呢，如果不使用document.getElementById()来获取一个元素赋值给一个变量，以后我们如果要对该元素进行多次不同操作，岂不是每次都要写document.getElementById()？这样的话，代码就会显得很冗余。

（2）在元素中调用；

在元素事件中引入JS，就是指在元素的某一个属性中直接编写JavaScript程序或调用JavaScript函数，这个属性指的是元素的“事件属性”。

举例1：（在元素事件属性中直接编写JavaScript）

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <input type="button" onclick="alert('绿叶学习网')" value="按钮"/>
<body>
</html>
```

在浏览器预览效果如下（点击按钮后的效果）：

![在元素中调用JavaScript事件](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2pzLzE0LTItMy5wbmc?x-oss-process=image/format,png) 

分析：

那么这两种方法有什么本质的区别呢？其实，第2种方法不需要使用getElementById()等方法来获取DOM，然后才调用函数或方法。因为它是直接在JavaScript元素中调用的。

这2种调用JavaScript事件的方式，大家刚刚开始看不理解没关系，我们只是给大家说个语法，留个印象。在接下来的章节中，我们会经常接触。

1、鼠标事件

| 事件        | 说明         |
| ----------- | ------------ |
| onclick     | 鼠标单击事件 |
| ondbclick   | 鼠标双击事件 |
| onmouseover | 鼠标移入事件 |
| onmouseout  | 鼠标移出事件 |
| onmousemove | 鼠标移动事件 |
| onmousedown | 鼠标按下事件 |
| onmouseup   | 鼠标松开事件 |
|             |              |
|             |              |

**2、键盘事件**

JavaScript键盘事件只有3个





| 方法       | 说明                             |
| ---------- | -------------------------------- |
| onkeydown  | 按下键事件（包括数字键，功能键） |
| onkeypress | 按下键事件(只包含数字键)         |
| onkeyup    | 放开键事件（包括数字键，功能键） |
|            |                                  |



三个事件的执行顺序如下：onkeydown -> onkeypress ->onkeyup。

**3、表单事件**

在JavaScript中，常用的表单事件有4种：

| 事件     | 说明         |
| -------- | ------------ |
| onfucus  | 获取焦点事件 |
| onblur   | 失去焦点事件 |
| onchange | 状态改变事件 |
| onselect | 选中文本事件 |

**4.编辑事件**

在JavaScript中，常见的编辑事件有3种：

| 方法    | 说明     |
| ------- | -------- |
| oncopy  | 复制事件 |
| oncut   | 剪切事件 |
| onpaste | 粘贴事件 |

这3个事件都对应有一个“onbeforeXXX”事件，表示发生在该事件之前的事件。



**5、页面相关事件**

在JavaScript中，常用的页面相关事件有3种：

| 方法     | 说明                   |
| -------- | ---------------------- |
| onload   | 页面加载事件           |
| onresize | 页面大小事件           |
| onerror  | 页面或图片加载出错事件 |



[回到顶端](#top)

<a id='buttom'></a>







