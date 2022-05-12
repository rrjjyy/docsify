<a id='top'></a>

[底部](#bottom)

[1.ES6中的类和对象](#1)





















### <a id='1'>1.ES6中的类和对象</a>>

**对象**

是一个具体的事物，对象是有属性和方法构成的



**类**

在ES6中新增加了类的概念，是可以使用class关键字来声明

类抽象了对象的公共部分，它泛指某一大类



**创建类**

语法：

```js
class name {
    //class body
}
```



**创建实例**

```js
var xx = new name();
```

注意，类必须要使用new来实例化对象



**在类中添加公共的方法**

```js
class demo{
    method1(){
        //method body
    }
    method2(){
        
    }
}
```

注意在类中的方法，不需要写fuction关键字



**类的继承exends和super关键字**

语法：

```js
class Father{
    //父类
}
class Son extends Father{
    //子类
}
```



**super关键字**

用于访问和调用对象父类上的函数，可以调用父类的构造函数，也可以调用父类的普通函数

语法：调用父类的构造函数

```js
class Father{
    constructor(x,y){
        this,x = x;
        this.y = y;
    }
    sum(){
        console.log(this.x+this.y);
    }
}

class Son extends Father{
    constructor(x,y){
        super(x,y)
    }
}

var son = new Son(1,2)
son.sum();
```



调用父类的普通函数

```html
	<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <script>
        class Father {
            m1() {
                return '我是爸爸';
            }
        }
        class Son extends Father {
            m1() {
                console.log(super.m1() + "的儿子");
            }
        }
        var son = new Son();
        son.m1();
    </script>
</body>

</html>
```



**super必须放到子类的this之前**

举例：

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <script>
        class Father {
            constructor(x,y){
                this.x = x;
                this.y = y;
            }
            sum(){
                console.log(this.x+this.y);
            }
        }

        class Son extends Father {
           constructor(x,y){
               super(x,y);
               this.x=x;
               this.y=y;
           }
           sub(){
               console.log(this.x-this.y);
           }
        }
        var son = new Son(3,1);
        son.sub();
        son.sum();
    
    </script>
</body>

</html>
```

运行结果：
![8CJA7.png](https://s1.328888.xyz/2022/04/26/8CJA7.png)



**使用类的三个注意事项**

1.在ES6中类没有变量提升，所以必须先定义类，才能通过类实例化对象

2.类里面的共有的属性和方法，一定要加this使用

3.类里面的this指向问题

4.constructor里面的this指向实例对象，方法里面的this指向这样方法的调用者



**面向对象tab栏**











[顶部](#top)

<a id='bottom'></a>