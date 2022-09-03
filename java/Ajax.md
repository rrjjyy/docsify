# Ajax

<a id='top'></a>

[底部](#bottom)

[客户端与服务器](#1)

[URL地址](#2)

[分析网页打开的过程](#3)

[服务器对外提供了哪些资源](#4)

[了解Ajax](#5)

[jQuery中的Ajax](#6)

[接口](#7)

[案例-图书管理](#8)

[案例-聊天机器人](#9)



[form表单的基本使用](#10)

[通过Ajax提交表单数据](#11)

[案例-评论列表](#11)

[模板引擎的基本概念](#12)

[art-template模板引擎](#13)

[模板引擎的实现原理](#14)



[XMLHttpRequest的基本使用](#15)

[数据交换格式](#16)

[封装自己的Ajax的函数](#17)

[XMLHttpRequest Level2的新特性](#18)

[jQuery高级用法](#19)

[axios](#20)



[什么是同源策略和跨域](#21)











### <a id='1'>客户端与服务器</a>

什么是服务器？

上网过程中，负责存放和对外提供资源的电脑，叫做服务器。

什么是客户端？
上网过程中，负责获取和消费资源的电脑，叫做客户端。 







### <a id='2' style='text-decoration:none'>URL地址</a>

**URL地址的概念**

URL (全称是UniformResourceLocator) 中文叫统-资源定位符, 用于标识互联网上每个资源的唯一存放位置。
浏览器只有通过URL地址，才能正确定位资源的存放位置,从而成功访问到对应的资源。

**URL地址的组成部分**

URL地址-般由3部组成:

URL地址-般由3部组成:
①客户端与服务器之间的通信协议
②存有该资源的服务器名称
③资源在服务器上具体的存放位置

<img src="https://s1.328888.xyz/2022/04/26/8zTz1.png" alt="8zTz1.png" style="zoom: 67%;" />  





<a id='3'>分析网页打开的过程</a>

**客户端与服务器通信的流程**

客户端发起请求

服务端处理请求

服务端响应客户端



### <a id='4'>服务器对外提供了哪些资源</a>

文字，图片，音频，视频，数据等等



**如何请求网页数据**

如果需要在网页中请求服务器上的数据，则需要用到XMLHttpRequest对象

简称xhr，是浏览器的提供的js成员，通过它，可以请求服务器上的数据资源

创建方法

```js
var xhr = new XMLHttpRequest();
```

**资源的请求方式：**

请求的方式有很多，常见的两种请求方式分别为get和post

**get请求**通常用于获取服务器的资源（获取数据资源）

**post请求**通常用于向服务器提交数据（常见的向服务器提交注册登入信息）



### <a id='5' style='text-decoration:none'>了解Ajax</a>

**什么是Ajax？**

Ajax的全称是Asynchronous Javascript And XML (异步JavaScript和XML)。

通俗的理解:在网页中利用XMLHttpRequest对象和服务器进行数据交互的方式，就是Ajax。

**为什么要学Ajax**?

Ajax能实现网页与服务器之间数据交互。

**典型应用场景：**
动态监测用户名是否重复，

动态加载搜索提示列表

根据页码值动态刷新表格的数据

数据的增删改查



<a id='6'>jQuery中的Ajax</a>

浏览器中提供的XMLHttpRequest用法比较复杂，所以jQuery对XML HttpRequest进行了封装，提供了一系列Ajax相关的函数，极大地降低了Ajax的使用难度。

jQuery中发起Ajax请求最常用的三个方法如下：
$.get();

$.post();

$.ajax();



**$.get();函数的语法**

jQuery中$.get()函数的功能单一，专门用来发起get请求，从而将服务器上的资源请求到客户端来使用。

语法：

```js
$.get(url.[data],[callback])
```

其中，三个参数各自代表含义如下：

| 参数名   | 参数类型 | 是否必选 | 说明                     |
| -------- | -------- | -------- | ------------------------ |
| url      | string   | 是       | 请求的资源地址           |
| data     | object   | 否       | 请求资源期间的携带的参数 |
| callback | function | 否       | 请求成功时的回调函数     |

**$.get()发起不带参数的请求**

使用$.get()函数发起不带参数请求是，直接提供请求的URL地址和请求成功之后的回调函数即可，势力代码如下

```js
$.get('http://www.liulongbin.top:3306/api/getbooks',function(res){
    	console.log(res);
})
```

$.post()函数的语法

jQuery中$.post()函数的功能单一，专门发起post请求，从而向服务器提交数据

语法：

```js
$.post(url,[data],[callback])
```

使用$.post()向服务器提交数据实例代码

**$.ajax()函数的语法**

这是一个比较综合的函数，它允许我们对Ajax请求进行更详细的配置

$.ajax()函数的基本语法如下：

```js
$.ajax({
	type:'',//请求的方式，例如get或post
     url:'',//请求的URL地址
     data:{},//这次请求要带的参数
    success:function(res){
        //请求完成后返回的信息
    }
    
})
```





<a id='7'>接口</a>

使用Ajax请求数据时,被请求的URL地址，就叫做数据接口(简称接口) 。同时，每个接口必须有请求方式。



**接口测试工具**

什么是接口测试工具？
为了验证接口能否正常被访问，我们常常需要使用接口测试工具，来对数据接口进行检测

好处：接口测试工具能让我们在不写代码的情况下，对接口进行调用和测试



什么是接口文档

就是接口的说明书，它是我们调用接口的依据。



<a id='8' style='text-decoration:none'>案例-图书管理</a>

需要用的库和插件

css库bootstrap.css

javascript库 jquery.js

vs code 插件 bootstrap 3 snippets









**<a id='10'>form表单的基本使用</a>**

form标签的属性

**1.action**

action属性用来规定当提交表单时，向何处发送表单数据。
action属性的值应该是后端提供的一个URL地址,这个URL地址专门负责接收表单提交过来的数据。

当<form>表单在未指定action属性值的情况下，action的默认值为当前页面的URL地址。

注意：提交表单后，页面会立即跳转到action属性指定的URL地址

**2.target属性**

用来在何处打开action URL

它的可选值有5个，默认情况下的值是_self，表示在相同的框架中打开actionURL

_blank 在新的窗口中打开

**3.method属性**

表示以何种方式提交数据，有两个可选值，post，get

默认情况下是get方式

get合适用来提交少量的，简单的数据，

post适合用来提交大量的，复杂的，或者包括文件上传的数据



**表单的同步提交**

**什么是表单的同步提交**

通过点击submit按钮，触发表单的操作，从而使页面跳转到actionURL的行为，叫做表单的同步提交



**同步提交的缺点**

①<form> 表单同步提交后,整个页面会发生跳转,跳转到action URL所指向的地址，用户体验很差。
②<form>表单同步提交后， 页面之前的**状态**和**数据**会丢失。



如何解决上诉问题呢？

解决方案：**表单是负责采集数据，不负责提交数据，Ajax负责将数据提交到服务器**



<a id='11'>通过Ajax提交表单数据</a>

在JQuery中，可以使用如下俩种方式，监听到表单的提交事件：

```js
$('#form1').submit(function(e){
    alert('监听到了表单提交事件')
})

$('#form2').on('submit',function(e){
    alert('监听到了表单提交事件')
}) 
```



**阻止表单的默认提交行为**

当监听到表单的提交事件以后，可以调用事件对象的even.preventDefault()函数来组织表单的提交和页面的跳转，

举例：

```js
$('#form1').submit(function(e){
    e.preventDafault();
})
```



**快速获取表单中的数据**

1.serialize()函数

语法：

```js
$('selector').serialize();//可以一次性获得全部的数据
```

注意：必须为每个表单添加name属性

<a id='11'>案例-评论列表</a>







<a id='12'>模板引擎的基本概念</a>

问题引入：渲染UI结构时遇到的问题

评论列表里面拼接的形式，来渲染UI结构，

如果UI结构比较复杂，则拼接字符串的时候需要格外注意引号之前的嵌套



**什么是模板引擎**

它可以根据程序员指定的模板结构和数据，自动生成一个完整的html页面

**模板引擎好处**

1.减少了字符串的拼接操作

2.代码结构更加清晰



<a id='13'>art-template模板引擎</a>

安装art-template的安装

http://aui.github.io/art-template/zh-cn/docs/installation.html

下载链接（推荐）：https://wwn.lanzouh.com/iKOVk03ya5kd

密码：ayjy



**art-template使用步骤**

1.导入js

2.定义数据

3.定义模板

4调用template函数

举例：

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 导入模板引擎 -->
    <script src="./lib/template-web.js"></script>
    <!-- 导入jQuery -->
    <script src="./lib/jquery.js"></script>
</head>
<body>

    <div id="ddiivv"></div>
    <!-- 定义模板 由于模板是html结构，必须定义到script中-->
    <script type="text/html" id="modelbyself">
        
        <h1>{{name}}---{{age}}<h1>
    </script>

    
    <script>
        //定义一个要渲染的数据
        var data = {name:'张三',age:30}

        //调用template函数
        var string=template('modelbyself',data)
        console.log(string);
        $('#ddiivv').html(string);
    </script>
</body>
</html>
```



art-template标准语法

1.什么是标准语法？
art- template提供了{{ }}这种语法格式，在{{ }}内可以进行变量输出，或循环数组等操作,这种{{ }}语法在art: template中被称为标准语法。

2.标准语法输出

在{{ }}语法中，可以进行变量的输出、对象属性的输出、三沅表达式输出、逻辑或输出、加减乘除等表达式输出。

3.标准语法-原文输出

```js
{{@ value}}
```

如果要输出的value值中，包含了HTML标签结构,则需要使用原文输出语法，才能保证HTML标签被正常渲染。

4.标准语法-条件输出

如果要实现条件输出，则可以在{{}}中使用if ...else if.../if的方式，进行按需输出

语法：

```html
{{if value}}按需输出的内容{{/if}} //这里的value如果为真，则会执行输出的内容

{{if v1}}按需输出内容{{else if v2}}按需输出的内容{{/if}}
```

5.标准语法-循环输出

如果要实现循环输出，则可以在{{ }}内，通过each语法循环数组，当前循环的索引使用**$index**进行访问，当前的循环项使用**$value**进行访问。

语法：

```html
{{each arr}}
	{{$index}}{{$value}}
{{/each}}
```



6.标准语法-过滤器

语法：

```html
{{value | filterName}}
```

左边是一个值，右边是一个函数，过滤器类似与管道操作符，它的上一个输出作为下一个输入。

定义过滤器的基本语法如下：

```html
template.defauly.imports.filterName = function(value){
	//return 处理的结果
}
```



demo：

```html
<div>注册时间：{{regTime | dateFormat}}</div>
```

定义一个格式化时间的过滤器dateFormat下：

```html
template.defaults.imports.dateFormat = function(date){
	var y=date.getFullYear();
	var m=date.getMonth()+1;
	var d=date.getDate();
	return y+'-'+m+'-'+d//注意，过滤器最后一定要return 一个值
}
```





### <a id='14'>模板引擎的实现原理</a>

**1.基本语法**

exec（）函数用于检索字符串中的正则表达式的匹配。
如果字符串中有匹配的值，则返回该匹配值，否则返回null.

```html
RegExpOject.exec(string)
```

示例代码如下

```js
var str = 'hello'
var pattern = /o/
//输出的结果['o',index:4,input:'hello',.....]
console.log(pattern.exec(string))
```

2.分组

正则表达式中（）包起来的内容表示一个分组，可以通过分组来提取自己想要的内容，示例代码：

```js
var str = '<div>我是{{name}}</div>'
var pattern = /{{([a-zA-z]+)}}/
var patternResult = pattern.exec(str)
console.log(patternResult)
```

输出结果：

```js
['{{name}}', 'name', index: 7, input: '<div>我是{{name}}</div>', groups: undefined]
```



3.字符串的replace函数

replace0函数用于在字符串中用一些字符替换另一些字符, 语法格式如下:

```js
var result ='123456'.replace('123','abc')
```

举例：

```js
var str = '<div>我是{{name}}</div>'
var pattern = /{{([a-zA-z]+)}}/

var patternResult = pattern.exec(str)
str =str.replace(patternResult[0],patternResult[1])
console.log(str)
```

输出结果

```html
<div>我是name</div>
```

4.多次replace操作

举例：

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <script>
    var str = '<div>{{name}}今年{{ age }}岁了</div>'
    var pattern = /{{\s*([a-zA-Z]+)\s*}}/

    // 第一次匹配
    var res1 = pattern.exec(str)
    str = str.replace(res1[0], res1[1])
    console.log(str)

    // 第二次匹配
    var res2 = pattern.exec(str)
    str = str.replace(res2[0], res2[1])
    console.log(str)

    // 第三次匹配
    var res3 = pattern.exec(str)
    console.log(res3)
  </script>
</body>

</html>
```



使用while循环进行replace操作

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <script>
    var str = '<div>{{name}}今年{{ age }}岁了</div>'
    var pattern = /{{\s*([a-zA-Z]+)\s*}}/

    var patternResult = null
    while (patternResult = pattern.exec(str)) {
      str = str.replace(patternResult[0], patternResult[1])
    }
    console.log(str)
  </script>
</body>

</html>
```



replace替换真值

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <script>
    var data = { name: '张三', age: 20 }

    var str = '<div>{{name}}今年{{ age }}岁了</div>'
    var pattern = /{{\s*([a-zA-Z]+)\s*}}/

    var patternResult = null
    while (patternResult = pattern.exec(str)) {
      str = str.replace(patternResult[0], data[patternResult[1]])
    }
    console.log(str)
  </script>
</body>

</html>
```





<a id='15'>XMLHttpRequest的基本使用</a>

**1.什么是XMLHttpRequest?**

是浏览器提供的Javascript对象，通过它，可以请求服务器上的数据资源，之前所学的Jquery中的Ajax函数，就是基于xhr对象封装出来的

**2.使用xhr发起get的步骤**

1.创建xhr对象

2.调用xhr.open()函数

3.调用xhr.send()函数

4.监听xhr.onreadystatechange事件

代码 示例

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <script>
    // 1. 创建 XHR 对象
    var xhr = new XMLHttpRequest()
    // 2. 调用 open 函数
    xhr.open('GET', 'http://www.liulongbin.top:3006/api/getbooks')
    // 3. 调用 send 函数
    xhr.send()
    // 4. 监听 onreadystatechange 事件
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
        // 获取服务器响应的数据
        console.log(xhr.responseText)
      }
    }
  </script>
</body>

</html>
```



**3.了解xhr对象的readyState属性**

用来表示Ajax请求的所处的状态，当值为4时，表示Ajax请求完成，这意味数据已经彻底完成或失败

**4.使用xhr发起带参数的get请求**

使用xhr对象发起带参数的get请求时，只需要调用xhr.open期间，为URL地址指定参数即可

```js
xhr.open('GET','http://www.xxxxx./xxxxx/getbook?id=1')
```

这种在uRL后面添加的字符串叫拼接字符串



**5.什么是查询字符串**

定义：查询字符串（URL参数）是指在URL的末尾加上用于向服务器发送信息的字符串（变量）。

格式：将英文？放在URL的末尾，然后在加上参数=值，想加上多个参数的话，使用&符号进行分隔，以这个形式，



**get请求携带参数的本质**

无论是通过ajax，通过那种方式发起请求，都是直接将参数以查询字符串的形式，最佳到URL地址后面发送到服务器

**6.什么是URL编码**

由于在URL地址中，只能出现英文相关的字母，标点符号，数字，因此，在URL地址中不允许出现中文字符

如果URL需要包含中文这样的字符，需要对中文进行**编码**(转义)

说白了，就是用英文字符是表示非英文字符



如何对URL进行编码和解码(了解)

分别是：
encodeURI();

decodeURI();

```js
encodeURI();
decodeURI();
```



**7.使用xhr发起post请求**

1.创建xhr对象

2.调用xhr.open()函数

3.设置Content-Type属性（固定写法）

4.调用xhr.send()函数，同时指定要发送的数据

5.监听xhr.onreadystatechange事件

代码示例

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <script>
    // 1. 创建 xhr 对象
    var xhr = new XMLHttpRequest()
    // 2. 调用 open 函数
    xhr.open('POST', 'http://www.liulongbin.top:3006/api/addbook')
    // 3. 设置 Content-Type 属性
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded')
    // 4. 调用 send 函数
    xhr.send('bookname=水浒传&author=施耐庵&publisher=上海图书出版社')
    // 5. 监听事件
    xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
        console.log(xhr.responseText)
      }
    }
  </script>
</body>
</html>
```

<a id='16'>数据交换格式</a>

数据交换格式，就是服务器端与客户端之间进行数据传输与交换格式.

前端领域，经常提及的两种数据交换格式分别是XML和JSON。



**XML**

用来传输数据和存储数据的一直语言



JSON

概念: JSON的英文全称是JavaScript Object Notation,即"JavaScript 对象表示法”.简单来讲，
JSON就是Javascript对象和数组的字符串表示法，它使用文本表示一个JS对象或数组的信息，因此，
**JSON的本质是字符串。**

作用: JSON 是一-种轻量级的文本数据交换格式，在作用上类似于XML,专用于存储和传输数据,但
是JSON比XML小更快、更易解析。



**JSON的两种结构**

json就是用字符串来表示javaScript的对象和数组，所以，JSON中包含对象和数组两种结构，通过这两种结构的相互嵌套，可以表示各种复杂的数据结构

**对象结构**：
对象结构在JSON中表示为{ }括起来的内容，数据结构为{key:value,key:value,.....}的键值对结构。

其中key必须是使用英文的双引号包裹的字符串，value的数据类型可以是数字，字符串，布尔值，null ，数组，对象



**数组结构：**

数据结构在JSON中表示为[ ]括起来的内容。数组中数据类型可以是数字，字符串，布尔值，null，数组，对象6种类型

①属性名必须使用双引号包裹
②字符串类型的值必须使用双引号包裹
③JSON中不允许使用单引号表示字符串
④JSON中不能写注释
⑤JSON的最外层必须是对象或数组格式
⑥不能使用undefined或函数作为JSON的值



**JSON和js对象的关系**

JSON是js对象的字符串表示法，它使用文本表示一个JS对象的信息，本质是一个字符串例如

```js
//这是一个对象
var obj = {a : 'hello' , b : 'world'}
//这是一个JSON字符串，本质是一个字符串
var json = '{"a" : "Hello","b":"world"}'
```



**JSON和JS对象互转**

要实现从JSON字符串转换为JS对象,使用JSON.parse（）方法:

```js
var jsonstr = '{"a":"hello","b":"world"}';
var obj=JSON.parse(jsonstr);
```

要实现从JS对象转换为JSON字符串，使用JSON.stringify()方法:

```js
var jsonstr=JSON.stringify({a:'hello',b:'world'})
```



序列化和反序列化

把数据对象转换为字符串的过程，叫做序列化，例如:调用JSON.stringify()函数的操作,叫做JSON列化。
把字符串转换为数据对象的过程，叫做反序列化,例如:调用JSON.parse()函数的操作,叫做JSON反序列化。











<a id='18'>XMLHttpRequest Level2的新特性</a>

①可以设置HTTP请求的时限

有时，Ajax 操作很耗时，而且无法预知要花多少时间。如果网速很慢，用户可能要等很久。新版本的XMLHttpRequest对象，增加了timeout属性,可以设置HTTP请求的时限:

```js
xhr.timeout = 3000//希望等待事件为3000毫秒
```

配套的事件：超时事件，用来指定回调函数：

```js
xhr.ontimeout  = function(event){
    alert('请求超时')
}
```



**FormData对象管理表单数据**

Ajax操作往往用来提交表单数据，为了方便表单处理，html5新增了一个FormData对象，可以模拟表单的操作

```js
var fd=new FormData();//新建一个对象
//添加操作
fd.append('uname','zs');
fd.append('password,'123456');
          
```

![ADWxX.png](https://s1.328888.xyz/2022/04/29/ADWxX.png)

②可以使用FormData对象管理表单数据

![A5yQF.png](https://s1.328888.xyz/2022/04/30/A5yQF.png)③可以上传文件

实现步骤：
1.定义UI结构

2.验证是否选择了文件

```html
<!-- 1.文本框选择 -->
    <input type="file" id="files">
    <!-- 2.上传文件按钮 -->
    <button id="btn">上传文件</button>
    <!-- 显示上传成功以后的图片 -->
    <img src="" alt="">

    <script>
        var btn=document.querySelector('#btn')

        btn.addEventListener('click',function(){
            var files=document.querySelector('#files').files;
            if(files.length<=0){
                return alert('请选择你要上传的文件')
            }
            console.log('点中了');
        })
    </script>
```



3.向FormData中追加文件

```js
 var fd=new FormData();
//用户选择的文件添加到formdata中
 fd.append('avatar',files[0])
```



4。使用xhr发起上传文件的请求

5.监听onreadystatechange事件

④可以获得数据传输的进度信息 

可以通过监听xhr.upload.onprogress事件，来获取文件上传的进度







<a id='21'>什么是同源策略和跨域</a>



















<a id='bottom'></a>

[顶部](#top)



