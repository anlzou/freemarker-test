<html>
<head>
    <meta charset="utf-8">
    <title>Freemarker入门小DEMO </title>
</head>
<body>
    <#--我只是一个注释，我不会有任何输出  -->
    <#--  demo  -->
    <p>Hello ${name}, i'am working in ${company}.</p>

    <#--
         <#assign name1=value1 name2=value2 ... nameN=valueN>
        或
        <#assign same as above... in namespacehash>
        或
        <#assign name>
          capture this
        </#assign>
        或
        <#assign name in namespacehash>
          capture this
        </#assign>
        使用该指令你可以创建一个新的变量， 或者替换一个已经存在的变量。注意仅仅顶级变量可以被创建/替换 (也就是说你不能创建/替换some_hash.subvar， 除了 some_hash)。
        doc online：http://freemarker.foofun.cn/ref_directive_assign.html
     -->
    <#assign man = "anlzou">
    ${man}<br>

    <#assign info={"name":"anlzou","age":20}>
    ${info.name} , ${info.age}岁。<br>

    <#--  eval：把字符串转为json  -->
    <#assign text="{'name':'张三','age':12}"/>
    <#assign data=text?eval>
    ${data.name}, ${data.age}岁。

    <#--
        <#include path>
        或
        <#include path options>
        这里：
        path： 要包含文件的路径；一个算作是字符串的表达式。(用其他话说， 它不用是一个固定的字符串，它也可以是像 profile.baseDir + "/menu.ftl"这样的东西。)
        options： 一个或多个这样的选项： encoding=encoding, parse=parse
        encoding： 算作是字符串的表达式
        parse： 算作是布尔值的表达式(为了向下兼容，也接受一部分字符串值)
        ignore_missing: 算作是布尔值的表达式
        你可以使用它在你的模板中插入另外一个 FreeMarker 模板文件 (由 path 参数指定)。 被包含模板的输出格式是在 include 标签出现的位置插入的。 被包含的文件和包含它的模板共享变量，就像是被复制粘贴进去的一样。 include 指令不能由被包含文件的内容所替代， 它只是当 FreeMarker 每次在模板处理期间到达 include 指令时处理被包含的文件。所以对于如果 include 在 list 循环之中的例子， 你可以为每个循环周期内指定不同的文件名。
        doc online：http://freemarker.foofun.cn/ref_directive_include.html
    -->
    <#include "head.ftl"/><br>

    <#--
        <#if...>
            ...
            <#else>
            ...
        </#if>
    -->
    <#if success == true>
        success is ture!
    <#else >
        success is false!
    </#if><br>

    <#list goodsList as goods>
        ${goods.name}：${goods.price}<br>
    </#list>
    goods list 总共有${goodsList?size}条数据<br>

    <#--
        日期
    -->
    当前日期：${today?date}<br>
    当前时间：${today?time}<br>
    当前日期和时间：${today?datetime}<br>
    自定义日期格式：${today?string("yyyy年MM月 本年第DD日")}<br>
    自定义日期格式：${today?string("yyyy年MM月dd日")}<br>

    <#--  int 转 string  -->
    ${point}<br>
    ${point?c}<br>

    <#if val_a??>
        你已经登录了！
    <#else >
        你未登录！
    </#if><br>
    <#--  如果'val_a'不存在，这补充该输出内容  -->
    ${val_a!'请登录系统'}
</body>
</html>