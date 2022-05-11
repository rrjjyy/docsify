# MAVEN

<a id='top'></a>

[底部](#buttom)

[maven简介](#1)

[maven下载](#2)

[安装](#3)

[maven基础概念](#4)

[idea配置maven](#5)



### **<a id='1' style='text-decoration:none'>maven简介</a>**

什么是maven？
是一个项目管理工具。

可以方便下载jar包，插件，编译，测试的工具



### **<a id='2'>maven下载</a>**

官网下载，自行百度

[apache-maven-3.6.1-bin.zip](https://wwn.lanzouh.com/igKUB04e6jhg)

[maven原创仓库网站](https://mvnrepository.com/)



### **<a id='2'>安装</a>**

解压及安装，不过需要配置环境

1.由于maven，依赖java，需要配置java环境

2.配置方法如下图：

<img src="https://s1.328888.xyz/2022/05/06/4QX37.png" alt="4QX37.png" style="zoom:80%;" /> 
<img src="https://s1.328888.xyz/2022/05/06/4QfEX.png" alt="4QfEX.png" style="zoom: 67%;" /> 



### **<a id='4' style='text-decoration:none'>maven基础概念</a>**

#### **仓库**

作用：用来存放jar包的

分类：本地仓库：自己电脑存放的

​			远程仓库：非本地

#### **坐标**

作用：标记jar的位置，用来引入

maven坐标主要组成：

​								groupld:定义当前Maven项目隶属组织名称(通常是域名反写，例如: org.mybatis)
​								artifactld:定义当前Maven项目名称(通常是模块名称，例如CRM、SMS) .
​								version:定义当前项目版本号

### **本地仓库配置：**

​					使用软件：AnyTXT Searcher进行快速搜索定位配置文件 setting.xml

搜索内容：

```txt
<localRepository>/path/to/local/repo</localRepository>
```

修改地址：![4QC6R.png](https://s1.328888.xyz/2022/05/06/4QC6R.png)

### **镜像仓库配置**

在setting文件中配置阿里云镜像仓库

锁定配置文件

​	使用软件：AnyTXT Searcher进行快速搜索定位配置文件 setting.xml

搜索内容：

```txt
<url>http://my.repository.com/repo/path</url>
```

修改结果：

![4QaX3.png](https://s1.328888.xyz/2022/05/06/4QaX3.png)

```xml
<mirror>
      <id>nexus-aliyun</id>
      <mirrorOf>central</mirrorOf>
      <name>Nexus aliyun</name>
      <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    </mirror>
```



### <a id='5'>idea配置maven</a>

![4ySmq.png](https://s1.328888.xyz/2022/05/07/4ySmq.png)				

#### 由maven创建一个java项目

![4yErm.png](https://s1.328888.xyz/2022/05/07/4yErm.png)



#### 由maven创建web项目

![4yxZS.png](https://s1.328888.xyz/2022/05/07/4yxZS.png)



#### tomcat插件

```xml
  <build>
    <plugins>
      <plugin>

        <groupId>org.apache.tomcat.maven</groupId>
        <artifactId>tomcat7-maven-plugin</artifactId>
        <version>2.2</version>
        <configuration>
          <port>
            80
          </port>
          <path>/</path>
        </configuration>

      </plugin>
    </plugins>
  </build>
```



**maven插件安装（推荐）**

方便maven的使用

![4GgqJ.png](https://s1.328888.xyz/2022/05/07/4GgqJ.png) 

### 依赖管理

#### 依赖配置

```xml
<!--设置当前项目所依赖的所有的jar-->
<dependencies>
    <!--设置具体的依赖-->
    <dependency>
        <!--依赖所属的群组-->
        <groupId>junit</groupId>
        <!--依赖所属的的项目id-->
        <artifactId>junit</artifactId>
        <!--依赖的版本号-->
        <version>4.12</version>
    </dependency>
</dependencies>
```



#### 依赖传递

依赖具有传递性，分类：直接依赖

​										间接依赖

依赖传递的冲突问题：就近原则



#### 可选依赖：

当别人使用自己的模块时，隐藏自己的依赖

```xml
<!--设置当前项目所依赖的所有的jar-->
<dependencies>
    <!--设置具体的依赖-->
    <dependency>
        <!--依赖所属的群组-->
        <groupId>junit</groupId>
        <!--依赖所属的的项目id-->
        <artifactId>junit</artifactId>
        <!--依赖的版本号-->
        <version>4.12</version>
        <optional>true</optional>
    </dependency>
</dependencies>
```

#### 排除依赖：

排除别人模块中不需要的依赖，注意不需要写版本号，

```xml
<!--设置当前项目所依赖的所有的jar-->
<dependencies>
    <!--设置具体的依赖-->
    <dependency>
        <!--依赖所属的群组-->
        <groupId>junit</groupId>
        <!--依赖所属的的项目id-->
        <artifactId>junit</artifactId>
        <!--依赖的版本号-->
        <version>4.12</version>
        <exclusions>
            <exclusion>
                <groupId>junit</groupId>
                <artifactId>junit</artifactId>
            </exclusion>
        </exclusions>
    </dependency>
</dependencies>
```

这里就排除了别人的junit依赖



#### 依赖范围

依赖的jar默认情况可以在任何地方使用，可以通过scope标签设定其作用范围，

作用范围：1.主程序范围有效（main文件夹范围类有效）

​				2.测试程序范围有效(test文件夹范围内)

​				3.是否参与打包(package指令范围内)

举例：


| scope    | 主代码 | 测试代码 | 打包 | 范例          |
| -------- | ------ | -------- | ---- | ------------- |
| compile  | yes    | yes      | yes  | log4j         |
| test     |        | yes      |      | junit         |
| provided | yes    | yes      |      | serverlet-api |
| runtime  |        |          | yes  | jdbc          |

依赖范围的传递性：



| (行->直接依赖，列->间接依赖) | compile | test | provided | runtime |
| ---------------------------- | ------- | ---- | -------- | ------- |
| compile                      | compile | test | provided | runtime |
| test                         |         |      |          |         |
| provided                     |         |      |          |         |
| runtime                      | runtime | test | provided | runtime |

### 生命周期与插件



































[回到顶端](#top)

<a id='buttom'></a>







