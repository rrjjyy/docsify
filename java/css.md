# css

<a id='top'></a>

[最底部](#buttom)

[一、CSS简介](#1.0)

[二、内容](#2.0)

​	[1.css的引入方式](#2.1)

​	[2.元素的id和class](#2.2)

​	[3、CSS选择器](#2.3)

​	[4、文本样式总结](#2.4)

​	[5.CSS段落属性](#2.5)

​	[6、边框样式](#2.6)

​	[7、 背景样式概述](#2.7)

​	[8、超链接样式](#2.8)

​	[9、图片样式](#2.9)

   [10、列表样式](#2.10)

​	[11、表格样式](#2.11)

​	[12、CSS盒子模型](#2.12)

​	[13、浮动布局](#2.13)

​	[14、定位布局](#2.14)











**<a id='1.0' style='text-decoration:none'>一、CSS简介</a>**

CSS是什么？CSS，即“Cascading Style Sheet（层叠样式表）”，是用来控制网页的外观的一门技术。

我们知道，HTML、CSS和JavaScript是前端技术中最核心的三个元素。HTML控制网页的结构，CSS控制网页的外观，而JavaScript控制网页的行为。我们已经在HTML入门教程中的前端技术简介这一节详细讲解了这三者的区别，大家可以回去查看一下。

HTML、CSS和JavaScript的关系如下：

“HTML是网页的结构，CSS是网页的外观，而JavaScript是页面的行为。”





**<a id = '2.1' style='text-decoration:none'>1.css的引入方式</a>**

在HTML中引入CSS共有3种方式：

（1）外部样式表； （2）内部样式表； （3）内联样式表；

1、外部样式表

外部样式表是最理想的CSS引用方式，在实际开发当中，为了提升网站的性能和维护性，一般都是使用外部样式表。所谓的“外部样式表”，就是把CSS代码和HTML代码都单独放在不同文件中，然后在HTML文档中使用link标签来引用CSS样式表。 当样式需要被应用到多个页面时，外部样式表是最理想的选择。使用样式表，你就可以通过更改一个CSS文件来改变整个网站的外观。 外部样式表在单独文件中定义，并且在标签对中使用link标签来引用。 举例：

```html
<!DOCTYPE html>
 <html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
 <title></title>
    <!--在HTML页面中引用文件名为index的css文件-->
<link href="index.css" rel="stylesheet" type="text/css" />
</head>
<body>   
     <div></div>
</body>
</html>
```

**说明**：外部样式表都是在head标签内使用link标签来引用的。



2、内部样式表

内部样式，指的就是把CSS代码和HTML代码放在同一个文件中，其中CSS代码放在标签对是放在标签对内的。 举例：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
  <title></title>    
  <!--这是内部样式表，CSS样式在style标签中定义-->    
  <style type="text/css">
          p{color:Red;}      
   </style>
 </head>
 <body>   
  <p>绿叶学习网</p>  
  <p>绿叶学习网</p>
 </body>
```

3.内联样式表

内联样式表，也是把CSS代码和HTML代码放在同一个文件中，但是跟内部样式表不同，CSS样式不是在<style></style>标签对中定义，而是在标签的style属性中定义。

```html
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <p style="color:Red; ">绿叶学习网</p>
    <p style="color:Red; ">绿叶学习网</p>
    <p style="color:Red; ">绿叶学习网</p>
</body>
</html>
```



**<a id='2.2' style='text-decoration:none'>2.元素的id和class</a>>**

id和class是HTML元素中两个最基本的公共属性。

**一、元素的id属性**

id属性被赋予了标识页面元素的唯一身份。如果一个页面出现了多个相同id属性取值，[CSS选择器](http://www.lvyestudy.com/les_cj/cj_2.2.aspx)或者JavaScript就会因为无法分辨要控制的元素而最终报错。

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="css/css_reset.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="first">绿叶学习网</div>
    <p id="first">绿叶学习网</p>
</body>
</html>

```

说明：

上面HTML代码是错误的，因为在同一个HTML页面中，不允许出现两个相同的id。不过要注意一下，在不同页面是可以出现相同id的元素。

**二、元素的class属性**

class，顾名思义，就是“类”。它采用的思想跟其他C、Java等编程语言的“类”相似。我们可以为同一个页面的相同元素或者不同元素设置相同的class，然后使得相同的class具有相同的CSS样式。

如果你要为两个元素或者两个以上元素定义相同的样式，建议使用class属性。

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title></title>
    <link href="css/css_reset.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="first">绿叶学习网</div>
    <p class="first">绿叶学习网</p>
</body>
</html>

```

说明：

这段HTML代码是正确的，因为在同一个HTML页面中，允许相同的元素或者不同的元素设置相同的class属性，以便我们可以统一对具有相同的class属性的元素定义相同的CSS样式。

id和class就像你的身份证号和姓名，身份证号是全国唯一的，id号也就是唯一的，class（类名）就是姓名，两个人的姓名就有可能一样。

此外，需要注意一下：

（1）一个标签可以同时定义多个class；
（2）id也可以写成name，区别在于name是HTML中的标准，而id是XHTML中的标准，现在网页的标准都是使用id，所以大家尽量不要用name属性；

<a id='2.3' style='text-decoration:none'>3、CSS选择器</a>

我们先看一段代码：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>什么叫CSS选择器？</title>
</head>
<body>
    <div>绿叶学习网</div>
    <div>绿叶学习网</div>
    <div>绿叶学习网</div>
</body>
</html>

```

在浏览器下预览效果如下：

![CSS选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItMi0xLnBuZw?x-oss-process=image/format,png) 

如果我们只想要第二个div文本颜色为红色，怎么办呢？我们必须通过一种方式来“选中”第二个div（因为其他的div不能选中），然后把它的CSS属性颜色color改为红色，这样才行。像这种把某一个你想要的标签选中的方式就是所谓的“选择器”，也就是说选择器就是一种选择元素的方式。

![什么叫CSS选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItMi0yLnBuZw?x-oss-process=image/format,png) 

选择器，说白了就是用一种方式把你想要的那一个标签选中！把它选中了，你才能操作这个标签的CSS样式。这样够简单了吧。CSS有很多把你所需要的标签选中的方式，这些不同的方式就是不同的选择器。

选择器的不同，在于它选择方式不同，但是他们的目的都是相同的，那就是把你需要的标签选中，然后让你定义该标签的CSS样式。当然，你也有可能会用某一种选择器代替另一种选择器，这仅仅是由于选择方式不一样罢了，目的还是一样的。
CSS选择器的格式：

```html
选择器
{
    样式属性1:取值1;
    样式属性2:取值2;
    ……
}
```

**一、基本选择器**

**1、元素选择器**

元素选择器，就是“选中”相同的元素，然后对相同的元素设置同一个CSS样式。

语法：

![CSS元素选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItMy0xLnBuZw?x-oss-process=image/format,png) 

**2、id选择器**

我们可以为元素设置一个id，然后针对这个id的元素进行CSS样式操作。注意，在同一个页面中，不允许出现两个相同的id，这个就像没有哪两个人的身份证号是相同的道理一样。

语法：

![CSS的id选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItMy0zLnBuZw?x-oss-process=image/format,png) 

说明：

id名前面必须要加上前缀“#”，否则该选择器无法生效。id名前面加上“#”，表明这是一个id选择器。

**3、class选择器**

class选择器，也就是“类选择器”。我们可以对“相同的元素”或者“不同的元素”设置一个class（类名），然后针对这个class的元素进行CSS样式操作。

语法：

![CSS的class选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItMy01LnBuZw?x-oss-process=image/format,png) 

说明：

class名前面必须要加上前缀“.”（英文点号），否则该选择器无法生效。类名前面加上“.”，表明这是一个class选择器。

**4、子元素选择器**

子元素选择器，就是选中某个元素下的子元素，然后对该子元素设置CSS样式。

语法：

![CSS子元素选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItNC0xLnBuZw?x-oss-process=image/format,png) 

说明：

父元素与子元素必须用空格隔开，从而表示选中某个元素下的子元素。

**5、相邻选择器**

相邻选择器，就是选中该元素的下一个兄弟元素，在这里注意一点，相邻选择器的操作对象是该元素的同级元素。

语法：

![CSS相邻选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItNC0zLnBuZw?x-oss-process=image/format,png) 

举例；

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        #lv+div{color:red;}
    </style>
</head>
<body>
    <div>绿叶学习网</div>
    <div id="lv">
        <p>绿叶学习网</p>
    </div>
    <div>绿叶学习网</div>
    <div>绿叶学习网</div>
</body>
</html>

```

在浏览器预览效果如下：

![CSS相邻选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItNC00LnBuZw?x-oss-process=image/format,png) 

分析：

“#lv+div{…}”表示选择“id为lv的元素”的相邻的下一个兄弟元素div，也就是第3个div元素。

6、群组选择器

群组选择器，就是同时对几个选择器进行相同的操作。常常，我们的CSS 样式中会有好几个地方需要使用到相同的设定时，一个一个分开写会是一件满累人的工作，重覆性太高且显得冗长，更不好管理....在CSS 语法的基本设定中，就可以把这几个相同设定的选择器合并在一起，原本可能是写了7~8 行相同的语法，合在一起后就只要短短的一小行，怎么看都让人心旷神怡啊~

语法：

![CSS群组选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItNC01LnBuZw?x-oss-process=image/format,png) 

说明：对于群组选择器，两个选择器之间必须用“,”（英文逗号）隔开，不然群组选择器无法生效。

举例：

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        h3,div,p,span{color:red;}
    </style>
</head>
<body>
    <h3>绿叶学习网</h3>
    <div>绿叶学习网</div>
    <p>绿叶学习网</p>
    <span>绿叶学习网</span>
</body>
</html>
```

在浏览器预览效果如下：

![CSS群组选择器](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzItNC02LnBuZw?x-oss-process=image/format,png) 

### 

<a id='2.4' style='text-decoration:none'>4、文本样式总结</a>

![CSS文本样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzMtOC0xLnBuZw?x-oss-process=image/format,png) 

| 属性        | 说明     |
| :---------- | -------- |
| font-family | 字体类型 |
| font-size   | 字体大小 |
| font-weight | 字体粗细 |
| font-style  | 字体斜体 |
| color       | 字体颜色 |

**一、字体类型font-family**

语法：

font-family:字体名;

说明：

字体名指的是“微软雅黑”、“宋体”、“Times New Roman”等。

举例：“font-family:微软雅黑;”

**二、字体大小font-size**

语法：

font-size:像素值;

说明：

初学者尽量使用像素来作为单位，因此我们不会在初学者阶段介绍太多的其他单位，比如百分比、em等。

举例：“font-size:15px;”



**三、字体颜色color**

语法：color:关键字/颜色值;

说明：

color共有2种取值，一种是关键字取值，例如“color:red;”；另外一种是十六进制颜色值，例如“color:#F1F1F1;”。对于十六进制颜色值，我们可以使用绿叶学习网的“在线调色板”选取你喜欢的颜色。

举例：“color:blue;”



**四、字体粗细font-weight**

语法：

font-weight:取值;

说明：

对于中文网页来说，font-weight属性一般仅用到bold、normal这两个属性值完全就可以了，粗细值不建议使用数值（100~900）。

举例：“font-weight:bold;”



**五、字体斜体font-style**

在CSS中，使用font-style属性来定义字体倾斜效果

语法：

font-style:取值;

说明：

font-style属性的取值如下表：

表1 font-style属性
font-style属性值	说明
normal	默认值，正常体
italic	斜体，这是一个属性
oblique	将字体倾斜，将没有斜体变量（italic）的特殊字体，要应用oblique
举例：“font-style:italic;”

font-style属性取值如下表

| font-style属性值 | 说明                                                         |
| ---------------- | ------------------------------------------------------------ |
| normal           | 默认值，正常体                                               |
| italic           | 斜体，这是一个属性                                           |
| oblique          | 将字体倾斜，将没有斜体变量（italic）的特殊字体，要应用oblique |

**六，CSS注释**

语法：

/*注释的内容*/

说明：

“/*”表示注释的开始，“*/”表示注释的结束



<a id='2.5'>**5.CSS段落属性**</a>

| 属性            | 说明                           |
| --------------- | ------------------------------ |
| text-decoration | 下划线，删除线，顶划线         |
| text-transform  | 文本大小写                     |
| font-varient    | 将英文文本转换为“小型”大写字母 |
| text-indent     | 段落首行缩进                   |
| text-align      | 文本水平对齐方式               |
| line-height     | 行高                           |
| letter-spacing  | 字距                           |
| word-spacing    | 词距                           |

**1、text-decoration**

在CSS中，使用[text-decoration属性](http://www.lvyestudy.com/les_cj/cj_4.2.aspx)来定义字体下划线、删除线和顶划线。

语法：

text-decoration:属性值;

说明：

text-decoration属性取值如下表：

| 属性值       | 说明                                                         |
| ------------ | ------------------------------------------------------------ |
| none         | 默认值，可以用这个属性值去掉已有的下划线，删除线，顶划线的样式 |
| underline    | 下划线                                                       |
| line-through | 删除线                                                       |
| overline     | 顶划线                                                       |

使用“text-decoration:none”这个属性值可以去除a标签的默认样式。

**2、text-transform**

在CSS中，使用[text-transform属性](http://www.lvyestudy.com/les_cj/cj_4.3.aspx)来转换文本的大小写，这个是针对英文而言，因为中文不存在大小写之分。

语法：

text-transform:属性值;

说明：

text-transform属性取值如下表：

| none       | 默认值，没有任何转换                             |
| ---------- | ------------------------------------------------ |
| uppercase  | 转化成大写                                       |
| lowercase  | 转化成小写                                       |
| capitalize | 将每个英文单词的首字母转换成大写，其余无转换发生 |

**3、font-variant**

使用[font-variant属性](http://www.lvyestudy.com/les_cj/cj_4.4.aspx)只有一个作用：把文本设置成小型大写字母，这也是针对英文而言，因为中文不存在大小写之分。

语法：

font-variant：normal/small-caps;

说明：

font-variant属性取值如下表：



| normal | 默认值             |
| ------ | ------------------ |
| small  | 小型大写字母的字体 |

**4、text-indent**

我们可以使用CSS的[text-indent属性](http://www.lvyestudy.com/les_cj/cj_4.5.aspx)来控制文本首行的缩进。

语法：

text-indent:像素值;

说明：

在CSS初学阶段，全部都是使用像素作单位，在CSS进阶阶段我们会深入讲解其他CSS单位



**5、text-align**

在CSS中，使用[text-align属性](http://www.lvyestudy.com/les_cj/cj_4.6.aspx)控制文本的水平方向的对齐方式：左对齐、居中对齐、右对齐。

语法：

text-align:属性值;

说明：

text-align属性取值如下表：



| text-align属性 | 说明           |
| -------------- | -------------- |
| left           | 默认值，左对齐 |
| center         | 居中对齐       |
| right          | 右对齐         |

注意：该标签只能地文本文字和<img>标签有效，对其他标签无效



**6、line-height**

[line-height属性](http://www.lvyestudy.com/les_cj/cj_4.7.aspx)指的是行高，而不是行间距。

语法：

line-height:像素值;

说明：

在CSS初学者阶段，我们都是采用像素做单位。



7、letter-spacing

语法：

letter-spacing:像素值;

说明：

letter-spacing控制的是字间距，每一个中文文字作为一个“字”，而每一个英文字母也作为一个“字”！大家要细心留意一下。

默认情况下，letter-spacing我们几乎都用不上，我们直接采用浏览器默认样式就可以了。大家完全可以忽略掉这个属性。



8、word-spacing

语法：

word-spacing:像素值;

说明：

定义词间距，以空格为基准进行调节，如果多个单词被连在一起，则被word-spacing视为一个单词；如果汉字被空格分隔，则分隔的多个汉字就被视为不同的单词，word-spacing属性此时有效。




**<a id='2.6' style='text-decoration:none'>6、边框样式</a>**

**一、边框属性**

要设置一个元素的边框必须要设置以下3个方面：

- （1）边框的宽度；
- （2）边框的外观（实线，或者虚线）；
- （3）边框的颜色；



| 属性         | 说明       |
| ------------ | ---------- |
| border-width | 边框的宽度 |
| border-style | 边框的外观 |
| boder-color  | 边框的颜色 |

**1、border-width**

语法：

border-width:像素值;

说明：

在CSS初学者阶段，我们都是建议采用像素做单位



**3、border-color**

border-color属性用来定义边框的颜色。

语法：

border-color:颜色值

border-style属性用于设置边框的外观，例如实线边框和虚线边框。

语法：

border-style:属性值;

说明：

虽然border-style属性值很多，但是大部分我们都用不上。一般情况下，我们用到solid和dashed这两个属性值就够了，别浪费时间去记忆其他属性值，不听老人言，吃亏在眼前呀！



**3、border-color**

border-color属性用来定义边框的颜色。

语法：

border-color:颜色值



**二、边框属性简洁写法**

设置一个元素的边框就要设置3个属性：border-width、border-style和border-color。如下：

```html
border-width:1px
border-style:solid
border-color:red
```

简洁写法

border:1px solid red;

**三、CSS边框局部样式**

![CSS边框局部样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzUtNC0xLnBuZw?x-oss-process=image/format,png) 

在CSS中，我们可以分别针对上下左右四条边框设置单独的样式。

**1、上边框border-top**

```html
border-top-width:1px;
border-top-style:solid;
border-top-style:red
```

简洁写法：border-top:1px solid red;

**2,下边框border-bottom**

```html
border-bottom-width:1px;
border-bottom-style:solid;
border-bottom-style:red
```

简洁写法：border-bottom:1px solid orange;

**3、左边框-left**

```html
border-left-width:1px;
border-left-style:solid;
border-left-color:blue;
```

简洁写法：border-left:1px solid blue;

4.**右边框border-right**

```html
border-right-width:1px;
border-right-style:solid;
border-right-color:red;
```

简洁写法：border-right:1px solid red;

### 

<a id="2.7" style="text-decoration:none">7、 背景样式概述</a>

**1、背景颜色**

在CSS中，使用[background-color属性](http://www.lvyestudy.com/les_cj/cj_6.2.aspx)来控制元素的背景颜色。

**2、背景图像**

在CSS中，为元素设置背景图像，往往涉及到以下属性：	

CSS背景图像属性



| 属性                  | 说明                                           |
| --------------------- | ---------------------------------------------- |
| background-image      | 定义背景图像路径                               |
| background-repeat     | 定义背景图片的显示方式：例如纵向平铺，横向平铺 |
| background-position   | 定义背景图像在元素那个位置                     |
| background-attachment | 定义背景图像是否随内容而滚动                   |

**二、背景颜色background-color**

在CSS中，使用background-color属性来定义元素的背景颜色。

语法：

background-color:颜色值;

说明：

颜色值是一个关键字或一个16进制的RGB值。关键字指的就是颜色的英文名称，如red、blue、green等。所谓的16进制RGB值指的就是类似“#FBF9D0”这种形式的值。


```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-color属性</title>

    <style type="text/css">

        /*设置所有div元素的共同样式*/

        div

       {

           width:100px;

           height:60px;

       }

        /*设置3个div元素的个别样式*/

        #div1{background-color:red;}

        #div2{background-color: #F3DE3F;}

        #div3{background-color: #0AF7FB;}

    </style>
</head>
<body>
    <div id="div1">背景颜色值为red</div>
    <div id="div2">背景颜色值为#F3DE3F </div>
    <div id="div3">背景颜色值为#0AF7FB </div>
</body>
</html>
```



预览图

![background-color属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtMi0xLnBuZw?x-oss-process=image/format,png) 

**2、color和background-color区别**

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>color和background-color区别</title>

    <style type="text/css">

    #p1

    {

        width:290px;

        color:white;

        background-color:red;

     }

    </style>

</head>
<body>
    <p id="p1">
        p元素文本颜色color值为white<br/>
        p元素背景颜色background-color值为red
    </p>
</body>
</html>
```



预览图

![background-color属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtMi0yLnBuZw?x-oss-process=image/format,png) 

**1、background-image**

[background-image属性](http://www.lvyestudy.com/les_cj/cj_6.4.aspx)是控制元素的必选属性，它定义了图像的来源，跟HTML的img标签一样，必须定义图像的来源路径，图像才能显示。



**2、background-repeat**

[background-repeat属性](http://www.lvyestudy.com/les_cj/cj_6.5.aspx)定义背景图像的显示方式，例如不平铺、横向平铺和两个方向都平铺。

![background-repeat属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtMy0xLnBuZw?x-oss-process=image/format,png) 

如上图，第一部分就是背景图像在纵向和横向两个方向都平铺，第二部分只是在横向平铺，而第三部分只是在纵向平铺。



**3、background-position**

[background-position属性](http://www.lvyestudy.com/les_cj/cj_6.6.aspx)定义了背景图像在该元素的位置。

![background-position属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtMy0yLnBuZw?x-oss-process=image/format,png) 

定义背景图像在元素的位置，一般需要定义背景图像的横向位置和纵向位置，例如上图定义了背景图像在横向距离元素左边80px，在纵向距离元素顶边40px。

**4、background-attachment**

在CSS中，使用背景附件[background-attachment属性](http://www.lvyestudy.com/les_cj/cj_6.7.aspx)可以设置背景图像是随对象滚动还是固定不动。

<img src="https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtMy0zLnBuZw?x-oss-process=image/format,png" alt="background-attachment属性" style="zoom:50%;" /> 

如上图，使用background-attachment属性设置背景图像固定不动，然后你拖动浏览器滚动条的时候会惊奇发现，图像在固定在浏览器的某个位置，而不随滚动条滚动而变化！



**四、background-image属性**

在CSS中，使用background-image属性来定义元素的背景图片。

语法：

background-image:url("图像地址");

说明：

图像地址可以是相对地址，也可以是绝对地址。请看“[相对地址和绝对地址](http://www.lvyestudy.com/les_hj/hj_7.2.aspx)”。



```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-image属性</title>

    <style type="text/css">

        #div1

       {

            width:143px;

            height:220px;

            background-image:url("../App_images/lesson/run_cj/one piece.jpg");
        }
    </style>
</head>
<body>
    <div id="div1">这是一张海贼王图片</div>
</body>
</html>
```

预览图

![background-image属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNC0xLnBuZw?x-oss-process=image/format,png) 

分析：

给某个元素设置背景图像，元素要有一定的宽度和高度，背景图片才会显示出来。因此在这里设置了div元素的宽width和height，其中width值和height值跟图片实际的宽度和高度一样。

在上面例子中，如果我们没有id="div1"的元素设置高度，则在浏览器预览效果如下：
![CSS background-image属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNC0yLnBuZw?x-oss-process=image/format,png) 

这样的话，背景图片就无法完整地显示出来了。大家在上面例子的在线测试中修改div元素width和height这两个的属性值看看效果。

**五、background-repeat属性**

在CSS中，使用background-repeat属性可以设置背景图像是否平铺，并且可以设置如何平铺。

语法：

background-repeat:取值;

说明：

background-repeat属性取值如下：



| 属性值    | 说明                                                 |
| --------- | ---------------------------------------------------- |
| no-repeat | 表示不平铺                                           |
| repeat    | 默认，表示在水平方向（x轴）和垂直方向（y轴）同时平铺 |
| repeat-x  | 表示在水平方向（x轴平铺）                            |
| repeat-y  | 表示在垂直方向（y轴平铺）                            |

举例：

这里有一张25px×25px的图片，我们设置3个div元素为200px×100px，并且把div元素背景图像设置为该图片

![background-repeat属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNS0xLnBuZw?x-oss-process=image/format,png) 

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-repeat属性</title>

    <style type="text/css">

        /*设置div元素的共同样式*/

        div

        {

            width:200px;

            height:100px;

            background-image:url("../App_images/lesson/run_cj/flower.jpg");

            text-align:center;

            border:1px dashed gray;

        }

        /*设置3个div元素的个别样式*/

        #div2{background-repeat:repeat-x;}

        #div3{background-repeat:repeat-y;}

        #div4{background-repeat:no-repeat;}

        hr{border-color:red;}

    </style>

</head>

<body>

    <div id="div1">

        <h3>静夜思</h3>

        <p>窗前明月光，疑似地上霜。<br/>举头望明月，低头思故乡。</p>

    </div>

    <hr/>

    <div id="div2">

        <h3>静夜思</h3>

        <p>窗前明月光，疑似地上霜。<br/>举头望明月，低头思故乡。</p>

    </div>

    <hr/>

    <div id="div3">

        <h3>静夜思</h3>

        <p>窗前明月光，疑似地上霜。<br/>举头望明月，低头思故乡。</p>

    </div>

    <hr/>

    <div id="div4">
        <h3>静夜思</h3>
        <p>窗前明月光，疑似地上霜。<br/>举头望明月，低头思故乡。</p>
    </div>
</body>
</html>
```

在浏览器预览效果如下：

![background-repeat属性实例](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNS0yLnBuZw?x-oss-process=image/format,png) 

分析：

因为第一个div元素没有设置background-repeat属性值，因为浏览器会采用background-repeat默认值“repeat”，背景图片会在水平和垂直两个方向同时平铺。第二个div元素background-repeat属性值为“repeat-x”，因此背景图片会在水平方向（x轴）平铺。第三个div元素background-repeat属性值为“repeat-y”，因此背景图片会在垂直方向（y轴）平铺

大家可能对hr元素的属性设置很奇怪，为什么设置hr的border-color属性值为red，hr的颜色就会改变，而不是设置hr的color属性为red或者background-color为red呢？这跟hr本身特点有关，在CSS进阶“hr的CSS设置”这一节我们会详细讲解到。

注意：设置有背景图片的元素的宽或高大于背景图片本身的宽或高，才会有平铺效果。

**六、background-position属性**

背景位置属性用于设置背景图像的位置，这个属性只能应用于块级元素和替换元素。其中替换元素包括img、input、textarea、select和object。

语法：

background-positon:像素值/关键字;

说明：

语法中的取值包括两种，一种是采用像素值，另一种是关键字描述。


**1、background-position取值为“像素值”**

background-position取值为像素值时，要设置水平方向数值（x轴）和垂直方向数值（y轴）。例如：“background-position：12px 24px;”表示背景图片距离该元素左上角的水平方向位置是12px，垂直方向位置是24px。注意，这两个取值之间要用空格隔开。

在[CSS入门教程](http://www.lvyestudy.com/les_cj/css_list.aspx)中，全部都是使用像素作单位，在CSS进阶阶段我们会深入讲解其他CSS单位。

举例：

​	

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-position属性</title>

    <style type="text/css">

        #div1

        {

            width:400px;

            height:300px;

            border:1px solid gray;

            background-image:url("../App_images/lesson/run_cj/one piece.jpg");

            background-repeat:no-repeat;

            background-position:80px 40px;

        }

    </style>

</head>

<body>
    <div id="div1"></div>
</body>
</html>
```



![background-position属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNi0xLnBuZw?x-oss-process=image/format,png) 

注：预览图中红色字体是注释，方便读者理解。

分析：

在这个例子中，我们为id="div1"的元素设置了宽度width和高度height，并且设置了一个边框。

background-position属性设置的水平方向距离和垂直方向距离是相对该元素的左上角而言的，大家细细体会一下上面的例子就很容易理解了。
**2、background-position取值为“关键字”**

当background-position取值为关键字时，也需要设置水平方向和垂直方向的值，只不过值不是使用px为单位的数值，而是使用关键字代替。

![23AWP.jpg](https://s1.328888.xyz/2022/04/23/23AWP.jpg)

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-position属性</title>

    <style type="text/css">

        #div1

        {

            width:240px;

            height:160px;

            border:1px solid gray;

            background-image:url("../App_images/lesson/run_cj/cartoongirl.gif");

            background-repeat:no-repeat;

            background-position:right center;

        }

    </style>

</head>

<body>

    <div id="div1"></div>

</body>
</html>
```

预览图

![background-position属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNi0yLnBuZw?x-oss-process=image/format,png) 

分析：

“background-position:right center;”中“right center;”表示水平方向在右边（right），垂直方向在中间（center）。还有，由于图片是gif格式的动态图片，在浏览器还能看到图片在动喔。

**七、background-attachment属性**

在CSS中，使用背景附件属性background-attachment可以设置背景图像是随对象滚动还是固定不动。

语法：

background-attachment:scroll/fixed;

说明：

background-attachment 属性只有2个属性值。scroll表示背景图像随对象滚动而滚动，是默认选项；fixed表示背景图像固定在页面不动，只有其他的内容随滚动条滚动。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>background-attachment属性</title>

    <style type="text/css">

        #div1

        {

            width:160px;

            height:1200px;

            border:1px solid gray;

            background-image:url("../App_images/lesson/run_cj/cartoongirl.gif");

            background-repeat:no-repeat;

            background-attachment:fixed;

        }

    </style>

</head>

<body>

    <div id="div1"></div>

</body>

</html>

```

预览图

<img src="https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzYtNy0xLnBuZw?x-oss-process=image/format,png" alt="background-attachment属性" style="zoom:50%;" />  

分析：

大家在浏览器中拖动右边的滚动条会发现，背景图片在页面固定不动。

在IE或者360中设置background-attachment之后不能设置background-position属性，不然图片没办法在浏览器显示。大家可以测试一下google浏览器、Firefox浏览器。

<a id='2.8' style='text-decoration:none'>8、超链接样式</a>

**一、超链接伪类简介**

在所有浏览器中，超链接的样式如下：

![超链接样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMi0xLnBuZw?x-oss-process=image/format,png) 

我们可以看出链接在鼠标点击不同时期的样式是不一样的。

- （1）默认情况：字体为蓝色，带有下划线；
- （2）鼠标点击时：字体为红色，带有下划线；
- （3）鼠标点击后：字体为紫色，带有下划线；

注：点击时，指的是点击超链接的一瞬间，字体是红色的。这个样式变化是一瞬间的事情。

**1、如何去除超链接下划线**

超链接默认情况下带有下划线，看起来挺难看的，而且用户体验也不好。在CSS中，一般使用“text-decoration:none”来去除超链接下划线，我们在“下划线、删除线和顶划线”这一节已经详细讲解了[text-decoration属性](http://www.lvyestudy.com/les_cj/cj_4.2.aspx)。

语法：

text-decoration:none;

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>去掉超链接默认样式</title>

    <style type="text/css">
        .a2{text-decoration:none;}
    </style>
</head>
<body>
    <a href="http://www.lvyestudy.com" class="a1">绿叶学习网</a><br/>
    <a href="http://www.lvyestudy.com" class="a2">绿叶学习网</a>
</body>
</html>
```



在浏览器预览效果如下：

![去掉超链接默认样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMi0yLnBuZw?x-oss-process=image/format,png) 

分析：

由于第二个a标签应用了“text-decoration:none”，因此它的下划线被去掉了。

**2、如何定义超链接伪类**

在CSS中，我们使用超链接伪类来定义超链接在不同时期的不同样式。

语法：

```html
a :link{css样式}
a:visited{css样式}
a:hover{css样式}
a:actived{css样式}
```

说明

定义这四个伪类，必须按照“link、visited、hover、active”的顺序进行，不然浏览器可能无法正常显示这4种样式。请记住，这4种样式定义顺序不能改变！

大家可能觉得比较难把这个样式顺序记忆。没关系，对于掌握俺有一个挺好的方法。“love hate”，看到了么，这样就记住了。我们把超链接伪类的顺序规则称为“爱恨原则”。大家以后写代码的时候想起“爱恨原则”，自然而然就写出来了。

举例



```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>超链接伪类</title>

    <style type="text/css">

        #div1

        {

            width:100px;

            height:30px;

            line-height:30px;

            border:1px solid #CCCCCC;

            text-align:center;

            background-color: #40B20F;

        }

        a{text-decoration:none;font-size:18px;}

        a:link{color:white}

        a:visited{color: purple; }

        a:hover{color:yellow;text-decoration:underline;}

        a:active{color:red;}

    </style>

</head>

<body>

    <div id="div1">

        <a href="http://www.lvyestudy.com">绿叶学习网</a>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![超链接伪类](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMi0zLnBuZw?x-oss-process=image/format,png) 

鼠标经过样式如下：

![鼠标经过样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMi00LnBuZw?x-oss-process=image/format,png) 

点击链接时样式如下：

![点击链接时样式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMi01LnBuZw?x-oss-process=image/format,png) 

**3、深入了解超链接伪类**

大家可能开始有疑问了，是不是每一个超链接都必须要定义4种状态的样式呢？答案是否定的。一般情况下，我们只用到2种状态：未访问状态和鼠标经过状态。大家仔细观察一下绿叶学习网的导航就知道了，绿叶导航也只是定义了这2种状态。

未访问状态，我们直接在a标签定义就行了，没必要使用“a:link”。

```html
a{CSS样式}
a:hover{CSS样式}
```

**二、深入了解:hover伪类**

在“超链接伪类”这一节，我们知道“a:hover”是定义鼠标经过超链接（a标签）时的样式。不仅是初学者，甚至包括很多学习CSS很久的人都以为“:hover”只限于a标签，都觉得“:hover”唯一的作用就是定义鼠标经过超链接（a标签）时的样式。

你要是那样理解，那你就埋没了一个功能强大的CSS技巧了！请记住，“:hover”伪类可以定义任何一个元素在鼠标经过时的样式！

语法：

元素:hover{}

说明：

“元素”可以是任意的[块元素和行内元素](http://www.lvyestudy.com/les_hj/hj_4.9.aspx)。

举例1：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>:hover伪类</title>

    <style type="text/css">

        #div1

        {

            width:100px;

            height:30px;

            line-height:30px;

            border:1px solid #CCCCCC;

            text-align:center;

            color:white;

            background-color: #40B20F;

        }

        #div1:hover{background-color: #286E0A;}

        img:hover{border:1px solid red;}

    </style>

</head>

<body>

    <div id="div1">绿叶学习网</div>

    <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

</body>

</html>

```

在浏览器预览效果如下：

![:hover伪类](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMy0xLnBuZw?x-oss-process=image/format,png) 

鼠标经过时样式如下：

![CSS :hover伪类](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctMy0yLnBuZw?x-oss-process=image/format,png) 

分析：

鼠标经过div层时，我们改变了它的背景颜色，而鼠标经过img图片时，我们为图片添加了一个红色边框。

“:hover”伪类应用非常广泛，在绿叶学习网中也大量使用，大家仔细观察一下绿叶学习网就知道了

**三、鼠标样式**

1、cursor属性

在CSS中，使用cursor属性来定义鼠标的样式。

语法：

cursor:属性值;

说明：

cursor属性取值如下，默认值为default。大家可能会惊呆，我晕，cursor属性值这么多，怎么记呀？其实大家不用担心，在实际开发中，我们一般只用到“default”和“pointer”这两个属性值，其他的一般都很少用得上。如果实在没办法还需要其他的，那就回来查这种表就行了。

![cursor属性值列表](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctNC0xLnBuZw?x-oss-process=image/format,png) 

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>cursor属性</title>

    <style type="text/css">

        div

        {
            width:100px;
            height:30px;
            line-height:30px;
            text-align:center;
            border:1px solid #CCCCCC;
            background-color: #40B20F;
            color:white;
            font-size:14px;
            font-weight:bold;
        }
        #div_default{cursor:default;}
        #div_pointer{cursor:pointer;}
    </style>
</head>
<body>
    <div id="div_default">鼠标默认样式</div>
    <div id="div_pointer">鼠标手状样式</div>
</body>
</html>
```

在浏览器预览效果如下：

![cursor属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzctNC0yLnBuZw?x-oss-process=image/format,png) 

分析：

我们可以看到，默认情况下鼠标是斜箭头。

大家请记住，一般情况下，我们只需要采用浏览器默认的鼠标样式就可以了，如果实在特别需要的时候可以用“cursor:pointer;”。对于cursor的其他属性值，我们一般用不上。因此大家无需花力气去记忆这些没用的属性。

<a id='2.9' style='text-decoration:none'>9、图片样式</a>

在之前的课程例子中，我们接触了width和height这两个属性，这两个属性分别是用来设置元素的宽度和高度的。

在CSS中，对于图片的大小，我们也是用width和height来定义。

语法：

```html
width:像素值
height:像素值
```

说明：

在CSS初学阶段，全部都是使用像素作单位，在CSS进阶阶段我们会深入讲解其他CSS单位

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <style type="text/css">
        img{width:60px;height:60px;}
    </style>
</head>
<body>
    <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>
</body>
</html>
```



在浏览器预览效果如下：

![图片width和height属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtMS0xLnBuZw?x-oss-process=image/format,png) 

分析：

不管图片的实际大小是多少，你都可以使用width和height来定义你想要的高度和宽度。大家别傻乎乎的还用PS做好高度和宽度才敢把那张图片用到页面上。

**二、图片边框border**

在“[CSS边框border](http://www.lvyestudy.com/les_cj/cj_5.2.aspx)”这一节我们详细讲解了边框border属性。在CSS中，对于图片的边框，我们也是使用border属性来定义。

语法：

```html
border-width:像素值
border-style:属性值
border-color:颜色值
```

简洁写法 

```html
border:1px solid red;
```

举例1：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>图片边框border</title>

    <style type="text/css">

        img

        {

            width:60px;

            height:60px;

            border:1px solid red;

        }

    </style>

</head>

<body>

    <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

</body>

</html>

```

在浏览器预览效果如下：

![CSS图片边框](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtMi0xLnBuZw?x-oss-process=image/format,png) 

举例2：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>图片边框border</title>

    <style type="text/css">

        img{width:60px;height:60px;}

        img:hover{border:1px solid gray;}

    </style>

</head>

<body>

    <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

</body>

</html>

```

在浏览器预览效果如下：

![图片边框border属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtMi0yLnBuZw?x-oss-process=image/format,png) 

分析：

在这个例子中，我们使用了“[:hover伪类](http://www.lvyestudy.com/les_cj/cj_7.3.aspx)”，来定义鼠标经过图片时会出现灰色边框。

**三、图片水平对齐text-align**

在“文本水平对齐text-align”这一节我们详细讲解了text-align属性。大家请记住，text-align一般只用在两个地方：文本水平对齐和图片水平对齐。也就是说，text-align只对文本和img标签有效，对其他标签无效。

语法：

text-align:属性值;

说明：

text-align属性取值如下表：


| 属性值 | 说明          |
| ------ | ------------- |
| left   | 默认值,左对齐 |
| center | 居中对齐      |
| right  | 右对齐        |

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>图片水平对齐</title>

    <style type="text/css">

        div

        {

            width:300px;

            height:80px;

            border:1px solid gray;

        }

        .div_img1{text-align:left;}

        .div_img2{text-align:center;}

        .div_img3{text-align:right;}

        img{width:60px;height:60px;}

    </style>

</head>

<body>

    <div class="div_img1">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

    <div class="div_img2">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

    <div class="div_img3">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS图片水平对齐](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtMy0xLnBuZw?x-oss-process=image/format,png) 

**四、CSS图片垂直对齐****vertical-align属性**

在上一节我们介绍了使用[text-align属性](http://www.lvyestudy.com/les_cj/cj_4.6.aspx)来定义图片水平对齐方式，我们看一下上一节的预览图：

![vertical-align属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNC0xLnBuZw?x-oss-process=image/format,png) 

大家就开始有疑问了，图片水平对齐我们实现了，那如果想对图片进行垂直对齐呢？

在CSS中，我们可以使用vertical-align属性来定义图片的垂直对齐方式。

语法：

vertical-align:属性值;

说明：

vertical即“垂直的”，align即“使排整齐”。大家记忆CSS属性要跟在HTML入门教程中记忆HTML标签一样，根据英文意思去记忆就事半功倍了。

vertical-align属性取值如下表：




| 属性     | 说明     |
| -------- | -------- |
| middle   | 顶部对齐 |
| middle   | 中部对齐 |
| baseline | 基线对齐 |
| bottom   | 底部对齐 |

vertical-align还有sub、super等一些属性值，对于这些我们不需要去理会，因为在实际开发中压根儿用不上。我们只需要使用以上这4个属性值就完全足够了。

举例1：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>vertical-align属性</title>

    <style type="text/css">

        img{width:80px;height:80px;}

        #img_1{vertical-align:top;}

        #img_2{vertical-align:middle;}

        #img_3{vertical-align:bottom;}

        #img_4{vertical-align:baseline;}

    </style>

</head>

<body>

    绿叶学习网<img id="img_1" src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>绿叶学习网（<strong>top</strong>）

    <hr/>

    绿叶学习网<img id="img_2" src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>绿叶学习网（<strong>middle</strong>）

    <hr/>

    绿叶学习网<img id="img_3" src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>绿叶学习网（<strong>bottom</strong>）

    <hr/>

    绿叶学习网<img id="img_4" src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>绿叶学习网（<strong>baseline</strong>）

</body>

</html>

```

在浏览器预览效果如下：

![CSS图片垂直对齐](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNC0yLnBuZw?x-oss-process=image/format,png) 

分析：

大家仔细观察一下，“vertical-align:baseline”和“vertical-align:bottom”是有区别的。

举例2：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>vertical-align属性</title>

    <style type="text/css">

        div

        {

            width:100px;

            height:80px;

            border:1px solid gray;

        }

        .div_img1{vertical-align:top;}

        .div_img2{vertical-align:middle;}

        .div_img3{vertical-align:bottom;}

        img{width:60px;height:60px;}

    </style>

</head>

<body>

    <div class="div_img1">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

    <div class="div_img2">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

    <div class="div_img3">

        <img src="../App_images/lesson/run_cj/cartoongirl.gif" alt=""/>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![vertical-align属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNC0zLnBuZw?x-oss-process=image/format,png) 

分析：

咦？！怎么回事？怎么图片没有按照预期的进行垂直对齐？啊，其实大家误解了vertical-align属性了，vertical-align属性定义是：vertical-align属性定义行内元素相对于该元素的垂直对齐方式。

在这里，大家可能就会想，那怎么在一个元素内设置该元素中的img标签相对于该元素垂直对齐呢？这个问题，我们就留在“CSS进阶教程”中给大家详细讲解。

大家若不知道行内元素是什么东西，请点击这里→“[块元素和行内元素](http://www.lvyestudy.com/les_hj/hj_4.9.aspx)”

疑问

其实vertical-align属性top、middle、bottom、baseline这4个属性值并不是你想象中的那么简单易懂，有了一定CSS基础，你可以深入去了解vertical-align属性。
**五、文字环绕效果-初识float**

1、float属性

在网页布局的过程中，常常遇到图文混排的效果。图文混排，也就是文字环绕着图片进行布局。文字环绕图片的方式在实际页面中的应用非常广泛，如果再配合内容、背景等多种手段便可以实现各种绚丽的效果。

在CSS中，使用浮动属性float可以设置文字在某个元素的周围，它能应用于所有的元素。

语法：

float:取值;

说明：

float属性的取值很简单也很容易记忆，就2个属性值：


| 属性值 | 说明         |
| ------ | ------------ |
| left   | 元素向左浮动 |
| right  | 元素向右浮动 |

默认情况下，元素是不浮动的。这个表忽略“none”和“inherit”这2个一辈子派不上场的属性值，大家也不需要花心思去理会“none”和“inherit”这2个属性值。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS浮动float属性</title>

    <style type="text/css">

       img{float:left;}

       p{font-size:16px;text-indent:28px;}

    </style>

</head>

<body>

    <img src="images/ailianshuo.jpg" alt=""/>

    <p>水陆草木之花，可爱者甚蕃。晋陶渊明独爱菊。自李唐来，世人甚爱牡丹。予独爱莲之出淤泥而不染，濯清涟而不妖，中通外直，不蔓不枝，香远益清，亭亭净植，可远观而不可亵玩焉。予谓菊，花之隐逸者也；牡丹，花之富贵者也；莲，花之君子者也。噫！菊之爱，陶后鲜有闻；莲之爱，同予者何人? 牡丹之爱，宜乎众矣。</p>

</body>

</html>

```

在浏览器预览效果如下：

<img src="https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNS0xLnBuZw?x-oss-process=image/format,png" alt="float属性" style="zoom:50%;" /> 

分析：

细心的读者可能会发现，文本的顶部与图片的顶部怎么不水平对齐，就像下图那样呢？

![CSS float属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNS0yLnBuZw?x-oss-process=image/format,png) 

这是由于在某些浏览器下，p元素具有默认样式，就像strong元素默认加粗一样。要实现上图那样的效果，这就要去除元素的浏览器默认样式。对于如何去除元素的浏览器默认样式，我们可以在“CSS进阶教程”的“CSS reset”这一节学习到。现在大家不需要理会，循序渐进地跟着学习就行了。

此外，大家可以在上面例子的“在线代码测试工具”中，将“float:left;”改为“float:right”，看看效果是怎样的。


**2、设置图片与文字的间距**

文字紧紧环绕在图片周围，如果希望图片本身与文字有一定的距离，只需要给<img>标签添加margin属性即可。margin指的是“外边距”，我们在接下来的“CSS盒子模型”会详细讲解到。

margin属性包括margin-top（上外边距）、margin-bottom（下外边距）、margin-left（左外边距）、margin-right（右外边距）。

语法：

```html
margin-top:像素值
margin-bottom:像素值
margin-left：像素值
margin-right：像素值
```



举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS浮动float属性</title>

    <style type="text/css">

       img{margin-right:20px;margin-bottom:20px;float:left;}

    </style>

</head>

<body>

    <img src="../App_images/lesson/run_cj/ailianshuo.jpg" alt=""/>
    <p>水陆草木之花，可爱者甚蕃。晋陶渊明独爱菊。自李唐来，世人甚爱牡丹。予独爱莲之出淤泥而不染，濯清涟而不妖，中通外直，不蔓不枝，香远益清，亭亭净植，可远观而不可亵玩焉。予谓菊，花之隐逸者也；牡丹，花之富贵者也；莲，花之君子者也。噫！菊之爱，陶后鲜有闻；莲之爱，同予者何人? 牡丹之爱，宜乎众矣。</p>
</body>
</html>

```

浏览器预留效果如下

![CSS浮动](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzgtNS0zLnBuZw?x-oss-process=image/format,png) 

分析：

“img{margin-right:20px;margin-bottom:20px;}”表示设置图片img元素的右边距为20px，下边距也是20px。

在“CSS[盒子模型](https://so.csdn.net/so/search?q=盒子模型&spm=1001.2101.3001.7020)”这一章，我们会详细讲解margin属性。





<a id='2.10' style='text-decoration:none'>10,列表样式</a>

**一、元素中定义列表项符号list-style-type**

在[HTML入门教程](http://www.lvyestudy.com/les_hj/html_list.aspx)中，[有序列表](http://www.lvyestudy.com/les_hj/hj_5.2.aspx)和[无序列表](http://www.lvyestudy.com/les_hj/hj_5.3.aspx)的列表项符号都是使用type属性来定义的。我们先来回顾一下。

**1、有序列表**

语法

```html
<ol type='属性值'>
    <li>1</li>
    <li></li>
    <li></li>
</ol>
```

有序列表的type属性





| 属性值 | 列表项的序号类型           |
| ------ | -------------------------- |
| 1      | 数字1，2，3                |
| a      | 小写英文字母a,b,c          |
| A      | 大写英文字母A,B,C          |
| i      | 小写罗马数字i,ii,iii,..... |
| l      | 大写罗马数字l,ll,lll,..... |

**2、无序列表**

语法：

```html
<ul type="属性值">
    <li>有序列表项</li>
    <li>有序列表项</li>
    <li>有序列表项</li>
</ul>
```



无序列表type属性

| 属性值 | 列表行的序号类型 |
| ------ | ---------------- |
| disc   | 默认值，实心圆   |
| circle | 空心圆           |
| square | 实心正方形       |

**二、CSS中定义列表项符号**

type属性来定义列表项符号，那是在元素属性中定义的。但是我们之前说过，标签和样式是应该分离的，那在CSS中怎么定义列表项符号呢？

在CSS中，不管是有序列表还是无序列表，都统一使用list-style-type属性来定义列表项符号。

语法：

list-style-type:属性值;

说明：

list-style-type属性取值如下：


| list-style-type属性值 | 说明               |
| --------------------- | ------------------ |
| decimal               | 默认值数字1，2，3  |
| lower-roman           | 小罗马数字i,ii,iii |
| upper-roman           | 大写罗马数字       |
| lower-alpha           | 小写英文字母       |
| upper-alpha           | 大写英文字母       |



去除列表符号

| none | 去除列表项符号 |
| ---- | -------------- |

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>list-style-type属性</title>

    <style type="text/css">

        ol{list-style-type: lower-roman ;}

        ul{list-style-type: circle ;}

    </style>

</head>

<body>

    <p>有序列表</p>

    <ol>

        <li>HTML</li>

        <li>CSS</li>

        <li>JavaScript</li>

    </ol>

    <p>无序列表</p>

    <ul>

        <li>HTML</li>

        <li>CSS</li>

        <li>JavaScript</li>

    </ul>

</body>

</html>

```

![list-style-type属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzktMi0xLnBuZw?x-oss-process=image/format,png) 

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>list-style-type属性</title>

    <style type="text/css">

        ol,ul{list-style-type:none;}

    </style>

</head>

<body>

    <p>有序列表</p>

    <ol>

        <li>HTML</li>

        <li>CSS</li>

        <li>JavaScript</li>

    </ol>

    <p>无序列表</p>

    <ul>

        <li>HTML</li>

        <li>CSS</li>

        <li>JavaScript</li>

    </ul>

</body>

</html>

```

![list-style-type属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzktMi0yLnBuZw?x-oss-process=image/format,png) 

分析：

“ol,ul{list-style-type:none;}”使用的是CSS选择器中的群组选择器。多个不同元素定义了相同的CSS样式，就可以使用群组选择器。在群组选择器中，元素之间是用逗号隔开，记住是英文的逗号，中文逗号无效。

使用“list-style-type:none”这个小技巧可以去除列表项默认的符号，在实际开发中，我们经常要用到。

**二、自定义列表项符号list-style-image**

不管是[有序列表](http://www.lvyestudy.com/les_hj/hj_5.2.aspx)，还是[无序列表](http://www.lvyestudy.com/les_hj/hj_5.3.aspx)，都有它们自身的列表项符号。但是默认的列表项符号都比较丑，那如果我们想自定义列表项符号，那该怎么实现呢？

在CSS中，我们可以使用list-style-image属性来自定义列表项符号

语法：

list-style-image:url(图像地址);

说明：

图像地址可以是相对地址，也可以是绝对地址。请查看“[相对路径和绝对路径](http://www.lvyestudy.com/les_hj/hj_7.2.aspx)”

举例：

我们把下面这个小图标自定义为列表项符号：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>list-style-image属性</title>

    <style type="text/css">

        ul{list-style-image:url("../App_images/lesson/run_cj/list.png");}

    </style>

</head>

<body>

    <ul>

        <li>HTML</li>

        <li>CSS</li>

        <li>JavaScript</li>

    </ul>

</body>

</html>

```

在浏览器预览效果如下：

![list-style-image属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzktMy0yLnBuZw?x-oss-process=image/format,png) 

分析：

自定义列表项符号，实际上就是列表项符号改为一张图片，而引用一张图片就要给出它的引用路径。



### 

<a id='2.11' style='text-decoration:none'>11、表格样式</a>

**一、表格边框合并border-collapse**

在了解什么叫“表格边框合并”之前，我们先来看一下在默认情况下表格加入边框是怎样的一个效果。

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title></title>

    <style type="text/css">

        table,th,td{border:1px solid gray;}

    </style>

</head>

<body>

    <table>

        <caption>表格标题</caption>

        <!--表头-->

        <thead>

            <tr>

                <th>表头单元格1</th>

        <th>表头单元格2</th>

            </tr>

        </thead>

        <!--表身-->

        <tbody>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tbody>

        <!--表脚-->

        <tfoot>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tfoot>

    </table>

</body>

</html>

```

在浏览器浏览效果

![border-collapse属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEwLTEtMS5wbmc?x-oss-process=image/format,png) 

<thead>、<tbody>和<tfoot>都是表格中语义化结构标签，这三个标签也是HTML代码语义化中非常重要的标签。详细内容请看“[表格语义化标签](http://www.lvyestudy.com/les_hj/hj_6.4.aspx)”。

大家可以看到了，表格加入边框的默认情况下，单元格与单元格之间有一定的空隙。那如果我们要去除单元格之间的空隙，那该怎么办呢？

在CSS中，我们可以使用border-collapse属性来去除单元格之间的空隙。

语法：

border-collapse:属性值;

说明：

border-collapse是表格独有的属性。除了表格，在其他地方是用不上的。

border-collapse属性取值如下：





| 属性值   | 说明                               |
| -------- | ---------------------------------- |
| separate | 默认值，边框分开，不合并           |
| collapse | 边框合并，如果相邻，则公用一个边框 |



举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>border-collapse属性</title>

    <style type="text/css">

        table,th,td{border:1px solid gray;}

        table{border-collapse:collapse;}

    </style>

</head>

<body>

    <table>

        <caption>表格标题</caption>

        <!--表头-->

        <thead>

            <tr>

                <th>表头单元格1</th>

        <th>表头单元格2</th>

            </tr>

        </thead>

        <!--表身-->

        <tbody>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tbody>

        <!--表脚-->

        <tfoot>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tfoot>

    </table>

</body>

</html>

```

在浏览器预览效果如下：

![border-collapse属性举例](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEwLTEtMi5wbmc?x-oss-process=image/format,png) 

分析：

只需要在table元素中设置border-collapse属性值就行，没必要在th、td这些元素也设置，造成代码冗余。

**二、表格边框间距border-spacing**

我们知道表格加入边框默认情况下是如下图那样的：

![表格插入边框](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEwLTItMS5wbmc?x-oss-process=image/format,png) 

我们在上一节讲解了如何合并表格边框（消除表格边框间距）。但是在实际开发中，我们有可能要设置一下表格边框的间距。

在CSS中，我们使用border-spacing属性来定义表格边框间距。

语法：

border-spacing:像素值;

说明：

该属性指定单元格边界之间的距离。当只指定了1个像素值时，这个值将作用于横向和纵向上的间距；当指定了2个length值时，第1个作用于横向间距，第2个作用于纵向间距。

在CSS初学阶段，全部都是使用像素作单位，在CSS进阶中我们会深入讲解其他CSS单位。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>border-spacing属性</title>

    <style type="text/css">

        table,th,td{border:1px solid gray;}

        table{border-spacing:5px 10px }

    </style>

</head>

<body>

    <table>

        <caption>表格标题</caption>

        <!--表头-->

        <thead>

            <tr>

                <th>表头单元格1</th>

        <th>表头单元格2</th>

            </tr>

        </thead>

        <!--表身-->

        <tbody>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tbody>

        <!--表脚-->

        <tfoot>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tfoot>

    </table>

</body>

</html>

```

在浏览器预览效果如下：

![border-spacing属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEwLTItMi5wbmc?x-oss-process=image/format,png) 

分析：

"border-spacing:5px 10px"定义了单元格之间水平方向的间距为5px，垂直方向的间距为10px。

border-spacing属性跟上节课学到的border-collapse属性一样，只需要在table元素设置就可以生效，没必要在th、td这些元素中设置，造成代码冗余。如果我们想要调整表格标题，那该怎么办呢？

在CSS中，我们使用caption-side属性来定义表格标题的位置。

语法：

caption-side:属性值;

说明：

caption-side属性取值如下：

| 属性值 | 说明               |
| ------ | ------------------ |
| top    | 默认值，标题在顶部 |
| bottom | 标题在底部         |

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>caption-side属性</title>

    <style type="text/css">

        table,th,td{border:1px solid gray;}

        caption{caption-side:bottom}

    </style>

</head>

<body>

    <table>

        <caption>表格标题</caption>

        <!--表头-->

        <thead>

            <tr>

                <th>表头单元格1</th>

        <th>表头单元格2</th>

            </tr>

        </thead>

        <!--表身-->

        <tbody>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tbody>

        <!--表脚-->

        <tfoot>

            <tr>

                <td>标准单元格1</td>

                <td>标准单元格2</td>

            </tr>

        </tfoot>

    </table>

</body>

</html>

```

在浏览器预览效果如下：

![caption-side属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEwLTMtMS5wbmc?x-oss-process=image/format,png) 

分析：

表格标题是caption元素，设置表格标题位置，我们可以在caption元素或者table元素中设置，效果是一样的。但是一般情况下我们都在caption元素中设置。



### 

<a id='2.12' style='text-decoration:none'>12、CSS盒子模型</a>

**一、CSS盒子模型简介**

在之前的[HTML入门教程](http://www.lvyestudy.com/les_hj/html_list.aspx)中，我们学习了一个很重要的理论“[块元素和行内元素](http://www.lvyestudy.com/les_hj/hj_4.9.aspx)”。在这一节中，我们将接触CSS中一个极其重要的理论，那就是“CSS盒子模型”理论。

在“CSS盒子模型”理论中，所有页面中的元素都可以看成一个盒子，并且占据着一定的页面空间。

一个页面由很多这样的盒子组成，这些盒子之间会互相影响，因此掌握盒子模型需要从两个方面来理解：一是理解单独一个盒子的内部结构，二是理解多个盒子之间的相互关系。

每个元素都看成一个盒子，盒子模型是由content（内容）、[padding](http://www.lvyestudy.com/les_cj/cj_.11.4aspx)（内边距）、[margin](http://www.lvyestudy.com/les_cj/cj_11.5.aspx)（外边距）和border（边框）这四个属性组成的。此外，在盒子模型中，还有宽度width和高度height两大辅助性属性。

记住，是所有的元素都可以看出一个盒子！

下图为一个CSS盒子模型的内部结构：

![CSS盒子模型](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTEtMS5wbmc?x-oss-process=image/format,png) 

从上图中我们可以得出盒子模型的属性如下：

| 属性    | 说明   |
| ------- | ------ |
| border  | (边框) |
| margin  | 外边框 |
| padding | 内边距 |
| content | 内容   |

其中，padding称为“内边距”，也常常称为“补白”。图1中的margin-top指的是顶部外边距、margin-right指的是右部外边距，以此类推。

**1、内容区**

内容区是CSS盒子模型的中心，它呈现了盒子的主要信息内容，这些内容可以是文本、图片等多种类型。内容区是盒子模型必备的组成部分，其他的3部分都是可选的。

内容区有3个属性：width、height和overflow。使用width和height属性可以指定盒子内容区的高度和宽度。在这里注意一点，width和height这两个属性是针对内容区而言，并不包括padding部分。

当内容信息太多时，超出内容区所占范围时，可以使用overflow溢出属性来指定处理方法。对于overflow这个属性，我们在后面会详细讲解到。

**2、内边距**

内边距，指的是内容区和边框之间的空间，可以被看做是内容区的背景区域。

关于内边距的属性有5种，即padding-top、padding-bottom、padding-left、padding-right以及综合了以上4个方向的简洁内边距属性padding。使用这5种属性可以指定内容区域各方向边框之间的距离
**3、边框**

在CSS盒子模型中，边框跟我们之前学过的边框是一样的。

边框属性有border-width、border-style、border-color以及综合了3类属性的快捷边框属性border。

其中border-width指定边框的宽度，border-style指定边框类型，border-color指定边框的颜色。

“border-width:1px;border-style:solid;border-color:gray;”等价于“border:1px solid gray;”。

4、外边距

外边距，指的是两个盒子之间的距离，它可能是子元素与父元素之间的距离，也可能是兄弟元素之间的距离。

外边距使得元素之间不必紧凑地连接在一起，是CSS布局的一个重要手段。

外边距的属性也有5种，即margin-top、margin-bottom、margin-left、margin-right以及综合了以上4个方向的简洁内边距属性margin。

同时，CSS允许给外边距属性指定负数值，当指定负外边距值时，整个盒子将向指定负值的相反方向移动，以此可以产生盒子的重叠效果。这就是传说中的“负margin技术”，我们将会在“CSS进阶教程”中给读者详细讲解这一个高大上的技术喔。

内容区、内边距、边框、外边距这几个概念可能比较抽象，对于初学者来说，一时半会还没办法全部理解。不过没关系，待我们把这一章学习完再回顾这些概念就变得很简单了。


**二、CSS盒子模型实例**

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS盒子模型</title>

    <style type="text/css">

        #main

        {

            display:inline-block;/*将块元素转换为inline-block元素*/

            border:1px solid #CCCCCC;

        }

        .lvye

        {

            display:inline-block; /*将块元素转换为inline-block元素*/

            padding:20px;

            margin:40px;

            border:1px solid red;

            background-color:#FCE9B8;

        }

        span{border:1px solid blue;background-color:#C5FCDF;}

    </style>

</head>

<body>

    <div id="main">

        <div class="lvye"><span>绿叶学习网</span></div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS盒子模型实例](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTEtMi5wbmc?x-oss-process=image/format,png) 

我们把class为lvye的div层看做一个盒子，则浅蓝色部分为“内容区”，浅红色部分为“内边距区”，红色边框与灰色边框之间的空白为“外边距区”，红色的边框为该盒子的边框。

![盒子模型内容区](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTEtMy5wbmc?x-oss-process=image/format,png) 

当然，我们也可以把最外层的id为main的div层看做一个盒子（因为所有HTML元素都可以看做一个盒子来理解），那读者自己尝试一下，为最外层的id为main的div层添加内边距和外边距，然后思考一下该盒子的“内容”、“外边距”、“内边距”和“边框”分别是什么？

我们从下面这种图可以很直观地去理解CSS盒子模型，读者要细细体会一下：
![CSS盒子模型](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTEtNC5wbmc?x-oss-process=image/format,png)

**三、宽度width和高度height**

从[CSS盒子模型](http://www.lvyestudy.com/les_cj/cj_11.1.aspx)中，我们可以看出，元素的宽度width和高度height是针对内容区而言的，大家要非常清楚这一点。很多初学者容易把补白也认为是内容区的一部分。

![CSS盒子模型](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTItMS5wbmc?x-oss-process=image/format,png) 





```html
width:像素值
height:像素值
```

说明：

只有快元素能设置width和height，行内元素无法设置width和height

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>宽度width和高度height</title>

    <style type="text/css">

        #main div

        {

            width:100px;

            height:30px;

            border:1px solid red;

        }

        #main span

        {

            width:100px;

            height:30px;

            border:1px solid blue;

        }

    </style>

</head>

<body>

    <div id="main">

        <div></div>

        <span></span>

    </div>

</body>

</html>
```

在浏览器预览效果如下：

![盒子模型的width和height](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTItMi5wbmc?x-oss-process=image/format,png) 

分析：

“#main div{}”这个选择器表示选中id为#main的元素下面的子元素div，这是一个子元素选择器；而“#main span{}”这个选择器表示选中id为#main的元素下面的子元素span，这也是一个子元素选择器，忘记了的同学，记得回去翻翻“CSS选择器”喔。

div元素是块元素，span是行内元素。因此div元素可以设置宽度width和高度height，而span元素无法设置宽度width和高度height。


举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>宽度width和高度height</title>

    <style type="text/css">

        #main

        {

            border:1px dashed gray;

            padding:15px;

            display:inline-block;

            margin-top:100px;

            margin-left:100px;

        }

        .div1

        {

            width:100px;

            height:40px;

            border:1px solid silver;

        }

        .div2

        {

            width:100px;

            height:80px;

            border:1px solid silver;

        }

    </style>

</head>

<body>

    <div id="main">

        <div class="div1">绿叶学习网</div>

        <hr />

        <div class="div2">绿叶学习网</div>

    </div>

</body>

</html>
```

在浏览器预览效果如下：

![width属性和height属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTItNC5wbmc?x-oss-process=image/format,png) 

分析：

由于span元素是行内元素，因此span元素无法设置width和height这两个属性（设置了变无效）。

如果我们想为span元素（行内元素）也设置高度和宽度，那怎么办呢？在CSS中，可以使用display属性来将行内元素转换为块元素，或者将块元素转换为行内元素。在“CSS进阶教程”，我们会详细讲解这个极其重要的属性。
**四、边框border**

在之前“边框”这一章，我们已经深入学习了边框属性。我们再次声明一下，对于border（边框）的值，我们在项目开发的时候，更多习惯用“简洁写法”。对于“border:1px solid gray;”这种简洁写法，第一个值指的是框的大小（border-width），第二个值指的是框的样式（border-style），第三个值指的是框的颜色（border-color）。


语法：

border:像素值 边框类型 颜色值

说明：

两个属性值之间一定要用空格隔开。

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS边框border</title>

    <style type="text/css">

        #main

        {

            width:100px;

            height:80px;

            border:2px dashed gray;

        }

    </style>

</head>

<body>

    <div id="main"></div>

</body>

</html>

```

在浏览器预览效果如下：

![border属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTMtMS5wbmc?x-oss-process=image/format,png) 

**五、 内边距padding**

内边距padding，又常常称为“补白”，它指的是内容区到边框之间的那一部分。

![CSS盒子模型](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTQtMS5wbmc?x-oss-process=image/format,png) 

**1、padding 局部样式**

从[CSS盒子模型](http://www.lvyestudy.com/les_cj/cj_11.1.aspx)中，我们可以看出，内边距padding分为四个方向的内边距：padding-top、padding-right、padding-bottom、padding-left。

语法：

```html
padding-top:像素值
padding-right:像素值
padding-bottom:像素值
padding-left:像素值
```

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS内边距padding属性</title>

    <style type="text/css">

        #main

        {

            display:inline-block;/*将块元素转换为inline-block元素*/

            border:1px solid #CCCCCC;

        }

        .lvye

        {

            display:inline-block; /*将块元素转换为inline-block元素*/

            padding-top:20px;

            padding-right:40px;

            padding-bottom:60px;

            padding-left:80px;

            margin:40px;

            border:1px solid red;

            background-color:#FCE9B8;

        }

        span{border:1px solid blue;background-color:#C5FCDF;}

    </style>

</head>

<body>

    <div id="main">

        <div class="lvye"><span>绿叶学习网</span></div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS内边距](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTQtMi5wbmc?x-oss-process=image/format,png) 

**2、padding简洁写法**

我们可以使用padding属性来设置四个方向的内边距。在实际编程中，我们往往使用的是padding的这种高效简洁写法来编程。

padding写法有3种，分别如下：

语法：

```html
padding:像素值
padding:像素值1 像素值2
padding:像素值1 像素值2 像素值3 像素值4
```

例如：

“padding:20px;”表示四个方向的内边距都是20px；

“padding:20px 40px;”表示padding-top和padding-bottom为20px，padding-right和padding-left为40px。

“padding:20px 40px 60px 80px;”表示padding-top为20px，padding-right为40px，padding-bottom为60px，padding-left为80px。大家按照顺时针方向记忆就可以了。

![padding属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTQtMy5wbmc?x-oss-process=image/format,png) 

举例

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS内边距padding属性</title>

    <style type="text/css">

        #main

        {

            display:inline-block;/*将块元素转换为inline-block元素*/

            border:1px solid #CCCCCC;

        }

        .lvye

        {

            display:inline-block; /*将块元素转换为inline-block元素*/

            padding:40px 80px;

            margin:40px;

            border:1px solid red;

            background-color:#FCE9B8;

        }

        span{border:1px solid blue;background-color:#C5FCDF;}

    </style>

</head>

<body>

    <div id="main">

        <div class="lvye"><span>绿叶学习网</span></div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![补白padding](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTQtNC5wbmc?x-oss-process=image/format,png) 

**六、 外边距margin**

外边距margin，指的是边框到父元素或者同级元素之间的那一部分。

![CSS盒子模型](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTUtMS5wbmc?x-oss-process=image/format,png) 

**1、margin局部样式**

从[CSS盒子模型](http://www.lvyestudy.com/les_cj/cj_11.1.aspx)中，我们可以看出，内边距分为四个方向的内边距：margin-top、margin -right、margin -bottom、margin -left。这一点跟[内边距padding](http://www.lvyestudy.com/les_cj/cj_11.4.aspx)非常相似。

语法：

```html
margin-top:像素值;

margin-right:像素值;

margin-bottom:像素值;

margin-left:像素值;
```

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS外边距margin属性</title>

    <style type="text/css">

        #main

        {

            display:inline-block;/*将块元素转换为inline-block元素*/

            border:1px solid #CCCCCC;

        }

        .lvye

        {

            display:inline-block; /*将块元素转换为inline-block元素*/

            padding:20px;

            margin-top:20px;

            margin-right:40px;

            margin-bottom:60px;

            margin-left:80px;

            border:1px solid red;

            background-color:#FCE9B8;

        }

        span{border:1px solid blue;background-color:#C5FCDF;}

    </style>

</head>

<body>

    <div id="main">

        <div class="lvye"><span>绿叶学习网</span></div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：



![margin属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTUtMi5wbmc?x-oss-process=image/format,png) 

**2、margin简洁写法**

margin跟padding一样，也有简洁写法。我们可以使用margin属性来设置四个方向的外边距。在实际编程中，我们往往使用的是margin的这种高效简洁写法来编程。

margin写法有3种，分别如下：

语法：

```html
margin:像素值;

margin:像素值1 像素值2;

margin:像素值1 像素值2 像素值3 像素值4;
```

例如：

“margin:20px;”表示四个方向的外边距都是20px；

“margin:20px 40px;”表示margin-top和margin-bottom为20px，margin-right和margin-left为40px。

“margin:20px 40px 60px 80px;”表示margin-top为20px，margin-right为40px，margin-bottom为60px，margin-left为80px。大家按照顺时针方向记忆就可以了

![margin属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTUtMy5wbmc?x-oss-process=image/format,png) 

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS外边距margin属性</title>

    <style type="text/css">

        #main

        {

            display:inline-block;/*将块元素转换为inline-block元素*/

            border:1px solid #CCCCCC;

        }

        .lvye

        {

            display:inline-block; /*将块元素转换为inline-block元素*/

            padding:20px;

            margin:40px 80px;

            border:1px solid red;

            background-color:#FCE9B8;

        }

        span{border:1px solid blue;background-color:#C5FCDF;}

    </style>

</head>

<body>

    <div id="main">

        <div class="lvye"><span>绿叶学习网</span></div>

    </div>

</body>

</html>

```



在浏览器预览效果如下：

![CSS外边距](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzExLTUtNC5wbmc?x-oss-process=image/format,png) 

### 

<a id='2.13' style="text-decoration:none">13、浮动布局</a>

**一、文档流简介**

**1、什么是“正常文档流”？**

在学习[浮动布局](http://www.lvyestudy.com/les_cj/cj_12.2.aspx)之前，我们先来认识一下什么叫“正常文档流”？深入了解正常文档流，对后续的浮动布局和定位布局是非常重要的一个前提，希望读者一定不要错过这一节的学习。

什么叫文档流？简单来说，就是元素在页面出现的先后顺序。

那什么叫“正常文档流”呢？我们先来看一下正常文档流的简单定义：正常文档流，将窗体自上而下分成一行一行，块元素独占一行，相邻行内元素在每行中按从左到右地依次排列元素

![CSS文档流](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTEtMS5wbmc?x-oss-process=image/format,png) 

上面的HTML代码的文档流如下：

```html
<div><div>

<span></span><span><span>

<p></p>

<span></span><i><i><img/>

<hr/>
```

我们再好好看看下图就很容易理解了：

![CSS正常文档流](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTEtMi5wbmc?x-oss-process=image/format,png) 

说明：

因为div、p、hr都是块元素，因此独占一行。而span、i、img都是行内元素，因此如果两个行内元素相邻，就会会位于同一行，并且从左到右排列。

**2、什么叫“脱离正常文档流”？**

脱离文档流是相对正常文档流而言的。正常文档流就是我们没有用CSS样式去控制的HTML文档结构，你写的界面的顺序就是网页展示的顺序。比如写了5个div元素。正常文档流就是按照依次显示这5个div元素。由于div元素是块元素，因此每个div元素独占一行：

HTML代码：

```html
<div id="div1"></div>

<div id="div2"></div>

<div id="div3"></div>

<div id="div4"></div>

<div id="div5"></div>
```

![正常文档流显示](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTEtMy5wbmc?x-oss-process=image/format,png) 

上图1就是按照正常文档流显示的效果图。

然后，所谓的脱离文档流就是指它所显示的位置和文档代码的顺序不一致了，比如可以用CSS控制，把最后一个div元素显示在第一个div元素的位置，如下图

![脱离文档流显示](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTEtNC5wbmc?x-oss-process=image/format,png) 

在图2中，在不改变HTML代码顺序的前提下，我们可以通过CSS来将id="div5"的div元素从正常文档流“抽”出来，然后显示在其他div元素之前。在这种情况下，id="div5"的div元素就已经“脱离正常文档流”了。

在CSS布局中，我们可以使用浮动或者定位这两种技术来实现“脱离正常文档流”，从而随心所欲地控制着页面的布局。

“正常文档流”概念以及“脱离文档流的工作原理”在CSS中，也是非常重要的理论。这些理论比较抽象，大家在接下来课程的学习和训练中，要慢慢体会，并且要经常回来复习一下这些理论知识。

**二、浮动float简介**

在“[文字环绕效果-初识float](http://www.lvyestudy.com/les_cj/cj_8.5.aspx)”这一节，我们已经接触过浮动是怎样一回事了。

在传统的印刷布局中，文本可以按照实际需要来围绕图片。一般把这种方式称为“文本环绕”。在网页设计中，应用了CSS的float属性的页面元素就像在印刷布局里被文字包围的图片一样。

浮动属性float是CSS布局的最佳利器，我们可以通过不同的浮动属性值灵活地定位div元素，以达到布局网页的目的。我们可以通过CSS的属性float使元素向左或向右浮动。也就是说，让盒子及其中的内容浮动到文档的右边或者左边。以往这个属性总应用于图像，使文本围绕在图像周围，不过在CSS中，任何元素都可以浮动。


浮动元素会生成一个块级框，而不论它本身是何种元素。

语法：

float:取值;

说明：

float属性的取值很简单也很容易记忆，就2个属性值：

float属性

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS浮动float属性</title>

    <style type="text/css">

        /*定义父元素样式*/

        #father

        {

            width:400px;

            background-color:#0C6A9D;

            border:1px solid silver;

        }

        /*定义子元素样式*/

        #father div

        {

            padding:10px;

            margin:15px;

            border:2px dashed red;

            background-color:#FCD568;

        }

        /*定义文本样式*/

        #father p

        {

            margin:15px;

            border:2px dashed red;

            background-color:#FCD568;

        }

        #son1

        {

            /*这里设置son1的浮动方式*/

        }

        #son2

        {

            /*这里设置son2的浮动方式*/

        }

        #son3

        {

            /*这里设置son3的浮动方式*/

        }

    </style>

</head>

<body>

    <div id="father">

        <div id="son1">box1</div>

        <div id="son2">box2</div>

        <div id="son3">box3</div>

        <p>这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，</p>

    </div>

</body>

</html>

```

上面代码定义了4个div块，一个是父块，另外3个是它的子块。为了便于观察，将各个块都加上了边框以及背景颜色，并且让body以及各个div有一定的margin（外边距）。

如果3个子块都没有设置浮动方式，在父盒子中，由于div元素是块元素，因此4个盒子各自向右伸展，并且自上而下排列，如下图
![CSS浮动，float属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTItMS5wbmc?x-oss-process=image/format,png) 

**1、设置第1个div浮动**

```css
#son1
{
    /*这里设置son1的浮动方式*/
    float:left;

}
```

在浏览器预览效果如下：

![设置第1个div浮动](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTItMi5wbmc?x-oss-process=image/format,png) 

分析：

由于box1设置为左浮动，box1变成了浮动元素，因此此时box1的宽度不再延伸，其宽度为容纳内容的最小宽度，而相邻的下一个div元素（box2）就会紧贴着box1，这是由于浮动引起的效果。

大家可以在“[在线代码测试工具](http://www.lvyestudy.com/tools/run_code.aspx)”工具中，设置一下box1右浮动，看看是怎样的。

**2、设置第2个div浮动**

```css
#son2
{
    /*这里设置son2的浮动方式*/
    float:left;
}
```

在浏览器预览效果如下：

![设置son2的浮动方式](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTItMy5wbmc?x-oss-process=image/format,png) 

分析：

由于box2变成了浮动元素，因此box2也跟box1一样，宽度不再延伸，而是由内容确定宽度。并且相邻的下一个div元素（box3）变成紧贴着浮动的box2。

大家会觉得很奇怪，为什么这个时候box1和box2之间有一定的距离呢？其实原因是这样的：我们在CSS中设置了box1、box2和box3都有一定的外边距（margin:15px;），如果box1为浮动元素，而相邻的box2不是浮动元素，则box2就会紧贴着box1；但是如果box1和box2同时为浮动元素，外边距就会生效。这是由于浮动元素的特性决定的。大家不需要深究这个问题。“浮动”这个复杂的性质，我们只需要多加练习，慢慢就会感性认知它的各种性质。

**3、设置第3个div浮动**



```css
#son3

{

    /*这里设置son3的浮动方式*/

    float:left;

}
```

在浏览器预览效果如下：

![float属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTItNC5wbmc?x-oss-process=image/format,png) 

分析：

由于box3变成了浮动元素，因此box3跟box2和box1一样，宽度不再延伸，而是由内容确定宽度，并且相邻的下一个p元素（box3）变成紧贴着浮动的box3。

由于box1、box2和box3都是浮动元素，box1、box2和box3之间的[margin属性](http://www.lvyestudy.com/les_cj/cj_11.5.aspx)生效。

**4、改变浮动的方向**

在这里，我们将box3浮动方式改为“float:right”，在浏览器预览效果如下：

![float:right](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTItNS5wbmc?x-oss-process=image/format,png) 

float属性是CSS布局中非常重要的属性，我们常常通过对div元素应用float浮动来进行布局，不但对整个版式进行规划，也可以对一些基本元素，如导航等进行排列。

**三、清除浮动clear简介**

在CSS中，清除浮动都是在设置左浮动或者右浮动之后的元素内设置。

语法：

clear:取值;

说明：

clear属性取值如下：



| 属性值 | 说明             |
| ------ | ---------------- |
| left   | 清除左浮动       |
| right  | 清除右浮动       |
| both   | 左右浮动一起清除 |

使用clear属性清除浮动，我们比较少使用“clear:left;”或者“clear:right;”来判断是清除左浮动，还是清除右浮动。我们往往直截了当地使用“clear:both;”来把所有浮动清除，还省事。也就是说，我们在这一节只要学会“clear:both;”这一个属性就足够啦。


举例

```html
!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS清除浮动</title>

    <style type="text/css">

        /*定义父元素样式*/

        #father

        {

            width:400px;

            background-color:#0C6A9D;

            border:1px solid silver;

        }

        /*定义子元素样式*/

        #father div

        {

            padding:10px;

            margin:15px;

            border:2px dashed red;

            background-color:#FCD568;

        }

        /*定义文本样式*/

        #father p

        {

            margin:15px;

            border:2px dashed red;

            background-color:#FCD568;

        }

        #son1

        {

            /*这里设置son1的浮动方式*/

            float:left;

        }

        #son2

        {

            /*这里设置son2的浮动方式*/

            float:left;

        }

        #son3

        {

            /*这里设置son3的浮动方式*/

            float:right;

        }

    </style>

</head>

<body>

    <div id="father">

        <div id="son1">box1</div>

        <div id="son2">box2</div>

        <div id="son3">box3</div>

        <p>这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，这里是浮动框外围的文字，</p>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS清除浮动](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTMtMS5wbmc?x-oss-process=image/format,png) 

我们添加如下CSS样式：

p{clear:both;}

这个时候在浏览器预览效果如下

![clear属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEyLTMtMi5wbmc?x-oss-process=image/format,png)

分析：

由于p元素清除了浮动，所以p元素的前一个元素产生的浮动就不会对后续元素产生影响，因此p元素的文本不会环绕在浮动元素的周围。

除了使用clear属性来清除浮动，还可以采用“overflow:hidden;”来清除浮动，在这里大家只需要了解一下即可。在“CSS进阶教程”，我们会详细讲解清除浮动都有哪些方法。





<a id='2.14' style='text-decoration:none'>14、定位布局</a>

在上一章，我们学习了CSS浮动布局。浮动布局比较灵活，但是不容易控制。而定位布局的出现，使得用户精准定位页面中的任意元素成为可能，使得网页布局变得更加随心所欲。当然由于定位布局缺乏灵活性，也给空间大小和位置不确定的版面布局带来困惑。因此，在网页布局实战中，读者应该灵活使用这两种布局方式，满足个性设计需求。


CSS定位使你可以将一个元素精确地放在页面上你指定的地方。联合使用定位和浮动，能够创建多种高级而精确地布局。

定位的方法有很多种，它们分别是[固定定位](http://www.lvyestudy.com/les_cj/cj_13.2.aspx)（fixed）、[相对定位](http://www.lvyestudy.com/les_cj/cj_13.3.aspx)（relative）、[绝对定位](http://www.lvyestudy.com/les_cj/cj_13.4.aspx)（absolute）和[静态定位](http://www.lvyestudy.com/les_cj/cj_13.5.aspx)（static）。

在接下来的学习中，我们一一为大家详细讲解这4种定位方式。



**二、CSS固定定位fixed**

固定定位是最直观而最容易理解的定位方式，先给大家介绍固定定位，来接触一下CSS定位布局是怎样一回事。

当元素的position属性设置为fixed时，这个元素就被固定了，被固定的元素不会随着滚动条的拖动而改变位置。在视野中，固定定位的元素的位置是不会改变的。

例如绿叶学习网右下方的“回顶部”。

```css
position:fixed;

top:像素值;

bottom;像素值;

left:像素值;

right:像素值;
```

说明：

“position:fixed;”是结合top、bottom、left和right这4个属性一起使用的，其中“position:fixed;”使得元素成为固定定位元素，接着使用top、bottom、left和right这4个属性来设置元素相对浏览器的位置。

top、bottom、left和right这4个属性不一定全部都用到。注意，这4个值的参考对象是浏览器的4条边。

在初学者阶段，都是使用“像素”作为单位。
举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS固定定位</title>

    <style type="text/css">

        #first

        {

            width:120px;

            height:600px;

            border:1px solid gray;

            line-height:600px;

            background-color:#B7F1FF;

        }

        #second

        {

            position:fixed;/*设置元素为固定定位*/

            top:30px;/*距离浏览器顶部30px*/

            left:160px;/*举例浏览器左部160px*/

            width:60px;

            height:60px;

            border:1px solid silver;

            background-color:#FA16C9;

        }

    </style>

</head>

<body>

    <div id="first">无定位的div元素</div>

    <div id="second">固定定位的div元素</div>

</body>

</html

```

在浏览器预览效果如下：

![CSS固定定位](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTItMS5wbmc?x-oss-process=image/format,png) 

分析：

我们尝试拖动浏览器的滚动条，固定定位的div元素不会有任何位置改变，但是无定位的div元素会改变。

![position属性](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTItMi5wbmc?x-oss-process=image/format,png) 

这里注意一下，我们在这里只使用了top和left属性来设置元素相对于浏览器顶边和左边的距离就可以设置该元素的位置了，top、bottom、left和right这4个属性不必全部用到，大家稍微想一下就懂了。

![position:fixed](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTItMy5wbmc?x-oss-process=image/format,png) 

固定定位其实很简单，就是使用“position:fixed”设置某一个元素为固定定位，接着使用top、bottom、left和right这4个属性来设置一下元素相对浏览器的位置就可以了。固定定位用途也很多，一般用于“回顶部”特效和固定栏目的设置。

**三、CSS相对定位简介relative**

采用相对定位的元素，其位置是相对于它的原始位置计算而来的。相对定位是通过将元素从原来的位置向上、向下、向左或者向右移动来定位的。采用相对定位的元素会获得相应的空间。

语法： 

```css
position:relative;

top:像素值;

bottom:像素值;

left:像素值;

right:像素值;
```

说明：

“position:relative;”是结合top、bottom、left和right这4个属性一起使用的，其中“position:relative;”使得元素成为相对定位元素，接着使用top、bottom、left和right这4个属性来设置元素相对原始位置。相对定位的容器浮上来后，其所占的位置仍然留有空位，后面的无定位元素仍然不会“挤上来”。

在这里要非常清楚这一点：默认情况下，CSS相对定位元素的位置是相对于原始位置而言，而CSS固定定位元素的位置是相对浏览器而言！
举例：



```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS相对定位</title>

    <style type="text/css">

        #father

        {

            margin-top:30px;

            margin-left:30px;

            border:1px solid silver;

            background-color: #B7F1FF;

        }

        #father div

        {

            width:100px;

            height:60px;

            margin:10px;

            border:1px solid silver;

            background-color:#FA16C9;

        }

        #son2

        {

            /*这里设置son2的定位方式*/

        }

    </style>

</head>

<body>

    <div id="father">

        <div id="son1">第1个无定位的div元素</div>

        <div id="son2">相对定位的div元素</div>

        <div id="son3">第2个无定位的div元素</div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS相对定位relative](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTMtMS5wbmc?x-oss-process=image/format,png) 



分析：

我们为将第2个div元素 改变为相对定位元素：

```css
#son2

{

    /*这里设置son2的定位方式*/

    position:relative;

    top:20px;

    left:40px;

}
```



在浏览器预览效果如下：

![position:relative;](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTMtMi5wbmc?x-oss-process=image/format,png) 

分析：

在这里，可以清楚地看到，相对定位的元素的top和left属性是相对于该元素原始位置而言的，这一点跟固定定位的元素完全不一样的

**四、CSS绝对定位absolute**

当元素的position属性值为absolute时，这个元素就变成了绝对定位元素。绝对定位在几种定位方法中使用最广泛，这种方法能够很精确地把元素移动到任意你想要的位置。

一个元素变成了绝对定位元素，这个元素就完全脱离正常文档流了，绝对定位元素的前面或者后面的元素会认为这个元素并不存在，即这个元素浮于其他元素上面，它是独立出来的。

什么叫“脱离正常文档流”，请参考“正常文档流”这一节。

```css
position:absolute;

top:像素值;

bottom:像素值;

left:像素值;

right:像素值;
```

说明：

“position:absolute;”是结合top、bottom、left和right这4个属性一起使用的，其中“position:absolute;”使得元素成为绝对定位元素，接着使用top、bottom、left和right这4个属性来设置元素相对浏览器的位置。

现在，我们暂且可以这样理解：CSS固定定位元素和CSS绝对定位元素的位置是相对于浏览器而言，而CSS相对定位元素的位置是相对原始位置而言。

举例：

```html
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title>CSS绝对定位</title>

    <style type="text/css">

        #father

        {

            padding:15px;

            background-color:#0C6A9D;

            border:1px solid silver;

        }

        #father div

        {

            padding:10px;

            background-color:#FCD568;

            border:1px dashed red;

        }

        #son2

        {

            /*在这里添加son2的定位方式*/

        }

    </style>

</head>

<body>

    <div id="father">

        <div id="son1">box1</div>

        <div id="son2">box2</div>

        <div id="son3">box3</div>

    </div>

</body>

</html>

```

在浏览器预览效果如下：

![CSS绝对定位](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTQtMS5wbmc?x-oss-process=image/format,png) 

我们为第2个div元素son2添加如下代码：

```css
#son2

{

    /*在这里添加son2的定位方式*/

    position:absolute;

    top:0;

    right:0;

}
```



在浏览器预览效果如下：

![position:absolute;](https://imgconvert.csdnimg.cn/aHR0cDovL3d3dy5sdnllc3R1ZHkuY29tL0FwcF9pbWFnZXMvbGVzc29uL2NqLzEzLTQtMi5wbmc?x-oss-process=image/format,png)    

分析：



至此，我们已经把最重要的3种定位方式都学完了，在初学者阶段，对于固定定位元素、相对定位元素和绝对定位元素，我们暂且这样记忆：默认情况下，固定定位元素和绝对定位元素的位置是相对于浏览器而言，而相对定位元素的位置是相对原始位置而言。

大部分人看到这里就会疑惑了，“固定定位元素和绝对定位元素的位置是相对于浏览器而言，而相对定位元素的位置是相对原始位置而言”这句话真的正确吗？不正确！正确的描述要加一个前提→“默认情况下”。

在这里，很多初学者会对各种定位元素的相对位置有很多的疑问，大家不要担心，浮动与定位可以说是CSS中最灵活和最困难的知识点。不过在“CSS进阶教程”中，我们会详细而深入地去学习，到时候，绿叶学友们就可以100%理解定位布局的本质。
**五、CSS静态定位static**

如果没有指定元素的position属性值，也就是默认情况下，元素是静态定位。只要是支持position属性的html对象都是默认为static。static是position属性的默认值，它表示块保留在原本应该在的位置，不会重新定位。

说白了，平常我们根本就用不到“position:static”，不过呢，如果有时候我们使用javascript来控制元素定位的时候，如果想要使得其他定位方式的元素变成静态定位，就要使用“position:static;”来实现。

在CSS入门阶段，大家只需要深入学习固定定位（fixed）、相对定位（relative）和绝对定位（absolute）就已经可以走得很远了。

到这里，大家的CSS已经学得差不多了，从HTML到CSS，接下来的一步就是“JavaScript入门教程”了！






[回到顶端](#top)

<a id='buttom'></a>



