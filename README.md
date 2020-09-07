# FreeMarker-test
##### idea create project step
1. New->Moudule->Maven
    - [x] Create from archetype
        - org.apache.maven.archetypes:maven-archetype-quickstart
2. maven选择本地仓库路径

##### pom.xml
```xml
<!--添加freemarker jar 包-->
<dependency>
      <groupId>org.freemarker</groupId>
      <artifactId>freemarker</artifactId>
      <version>2.3.30</version>
</dependency>
```