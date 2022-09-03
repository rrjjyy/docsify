









**什么是expresss？**

是基于nodejs平台，快速，开放，极简的web开发框架 。

通俗的理解，express的作用和node.js内置的http模块内饰，是专门用来创建web服务器的

 本质：就是一个npm上的第三方包，提供了快速创建了Web服务器的便捷方法



[express中文官网](http://www.expressjs.com.cn)

express能够做什么？

我们可以更快的，更便捷的创建Web网站的服务器和API的接口服务器

**安装**

```txt
npm i express@4.17.1
```

**使用express创建基本的web服务器**

```js
//1.导入express
 const express = require('express')
 //2.创建web服务器
 const app=express()
 //调用app.listen(端口号，启动成功后的回调函数)，
 app.listen(80,()=>{
     console.log('http://127.0.0.1');
 })
```



**监听Get请求**

通过app.get()方法，可以监听客户端的get请求，语法如下：

```js
app.get('请求url',(res,req)=>{
    //请求函数
})
```

**监听POST请求**

```js
app.post('请求url',(res,req)=>{
    //请求函数
})
```

**如何把内容响应给客户端**

通过res.send()

```js
// 1. 导入 express
const express = require('express')
// 2. 创建 web 服务器
const app = express()
// 4. 监听客户端的 GET 和 POST 请求，并向客户端响应具体的内容
app.get('/user', (req, res) => {
  //3. 调用 express 提供的 res.send() 方法，向客户端响应一个 JSON 对象
  res.send({ name: 'zs', age: 20, gender: '男' })
})
app.post('/user', (req, res) => {
  res.send('请求成功')
})
// 3. 启动 web 服务器
app.listen(80, () => {
  console.log('express server running at http://127.0.0.1')
})

```



**获取URL中携带的查询参数**



通过req.query对象，可以访问到客户端通过查询字符串的形式，发送到服务器的参数：

```js
app.get('/',(req,res)=>{
    //req.query默认是一个空对象
    //客户端使用？name=zs&age=2-这种查询字符串形式，发送到服务器的参数
    //可以通过req.query对象访问到，例如：
	//req.query.name   req.query.age
})
```







