# FreeMarker-test
>[2小时学习Spring整合Freemarker项目实战](http://e-learning.51cto.com/course/21934)
### idea create project step
1. New->Moudule->Maven
    - [x] Create from archetype
        - org.apache.maven.archetypes:maven-archetype-quickstart
2. maven选择本地仓库路径

### pom.xml
```xml
<!--添加freemarker jar 包-->
<dependency>
      <groupId>org.freemarker</groupId>
      <artifactId>freemarker</artifactId>
      <version>2.3.30</version>
</dependency>
```

### moudle
>1. [freemarker-demo/FreeMarkerDemo.java](./freemarker-demo/src/main/java/cn/anlzou/FreeMarkerDemo.java)

### 内容
<details><summary>目录</summary>

#### freemarker-demo 
- 1  今日课程目标01:34
- 2  Freemarker简介04:21
- 3  入门小demo12:08
- 4  Freemarker常用指令04:02
- 5  list指令使用06:19
- 6  常用指令-转换JSON对象03:54
- 7  常用指令-日期处理03:29
- 8  数字转换为字符串02:59
- 9  空字符串处理02:46

- 10  搭建生成静态页面工程-后台18:31
- 11  生成静态页面08:54
- 12  模板模块化引入02:37
- 13  生成商品基本信息05:44
- 14  图片列表展示06:13
- 15  展示扩展属性04:48
- 16  展示规格列表04:50
- 17  展示面包屑导航03:44
- 18  搜索页与静态页面对接08:54
- 19  修改购物车数量11:06
- 20  选择规格-bug调试方式19:27
- 21  读取SKU信息-后台07:28
- 22  展示默认SKU信息11:42
- 23  展示选中的规格信息10:13
- 24  展示选中的规格信息02:45
</details>