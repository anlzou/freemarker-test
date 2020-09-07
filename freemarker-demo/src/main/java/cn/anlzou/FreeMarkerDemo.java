/**
 * @author：anlzou
 * @Date：Created in16:39 2020/9/7
 * @Github：https://github.com/anlzou
 * @Description：
 */
package org.example.demo;


import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.awt.*;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.*;
import java.util.List;

public class FreeMarkerDemo {
    public static void main(String[] args) throws IOException, TemplateException {
        //----FreeMarker 使用步骤----//

        //1.创建Configruction对象,定义使用freemarker版本信息
        Configuration configuration = new Configuration(Configuration.getVersion());

        //2.设置模板文件所在的路径
        configuration.setDirectoryForTemplateLoading(new File("C:\\Users\\Administrator\\Desktop\\code\\javaee\\freemarker-test\\freemarker-demo\\src\\main\\resources\\template"));

        //3.设置模板文件的字符集
        configuration.setDefaultEncoding("UTF-8");

        //4.加载模板
        Template template = configuration.getTemplate("test.ftl");

        /**补充：HashMap()
         * 文档：Java集合中List,Set以及Map等集合体系?
         * 链接：http://note.youdao.com/noteshare?id=d781dadb7f5d1399bc2b2c509eb846d4&sub=797359FB1C1A4612B825A402345C8887
         *
         * HashMap:线程不安全，效率高。允许null键和null值
         * */
        //5.创建数据
        Map map = new HashMap();

        map.put("name","there");
        map.put("company","XiaoMi");

        map.put("success",true);

        //list
        Map goods1 = new HashMap();
        goods1.put("name","apple");
        goods1.put("price","9.6");

        Map goods2 = new HashMap();
        goods2.put("name","mango");
        goods2.put("price","3.4");

        List list = new ArrayList();
        list.add(goods1);
        list.add(goods2);
        map.put("goodsList",list);

        //日期
        map.put("today",new Date());

        //类型转换
        map.put("point",123456789);

        //6.穿件write对象写入模板信息
        Writer out = new FileWriter(new File("C:\\Users\\Administrator\\Desktop\\code\\javaee\\freemarker-test\\output-file\\demo.html"));
        template.process(map,out);

        //7.关闭流
        out.close();
    }
}
