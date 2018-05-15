# Sinosteel框架修改

## 代码整合
framework-example中的将Project和Knowledge整合进framework中，代码结构如下：
```aidl
├── java
│   └── com
│       └── sinosteel
│           ├── FrameworkApplication.java
│           ├── domain                     --实体对象
│           ├── framework                  
│           │   ├── config                 --配置文件
│           │   │   ├── database           --数据库配置
│           │   │   ├── druid              --数据库连接池
│           │   │   ├── http               --处理跨域访问
│           │   │   ├── listener           --ApplicationListener
│           │   │   ├── system             --系统环境配置
│           │   │   └── web                --web配置
│           │   ├── core
│           │   │   ├── listener           --定义ApplicationListener
│           │   │   └── web                --定义Request和Response类
│           │   ├── helpers
│           │   │   ├── hibernate          --Hibernate创建表时默认的策略
│           │   │   ├── hierarchy          --特殊的有层次结构的类
│           │   │   │   ├── domain
│           │   │   │   └── helper         --提供对Hierarchy类的基本操作
│           │   │   └── pagination         --分页
│           │   ├── mybatis                --查询数据库
│           │   └── utils                  --工具类
│           │       ├── date               --日期工具
│           │       ├── encryption         --加密工具
│           │       ├── json               --json工具
│           │       ├── list               --list工具
│           │       ├── map                --map工具
│           │       └── string             --字符串工具
│           ├── repository                 --仓库
│           ├── service                    --service
│           └── web                        --web
└── resources                              
    ├── application.properties
    ├── banner.txt
    ├── db
    │   └── mysql
    │       ├── schema.sql                 --数据库模式，创建表和增加约束
    │       └── data.sql                   --插入数据
    ├── config
    │   ├── datasource.properties          --数据库配置
    │   └── system.properties              --系统配置
    └── structure.json                     --整个框架的结构
```
## 删除部分模块
- 删除Shiro模块
    - 做登录验证和权限认证的模块
- 删除Redis模块
    - 做数据缓存的模块
    - 主要是缓存一些查询结果，下次查询更快
## 项目运行
java版本使用java 8及以下的版本，java 9之后的版本缺少了一些包。
- 在项目根目录执行`mvn clean package -DskipTests`打包
- 如果没有mysql数据库，执行`docker-compose up -d`启动mysql镜像，docker-compose.yml文件如下：
```yaml
version: '3.2'

services:
  mysql:
    image: 'mysql:latest'
    ports:
      - '3306:3306'
    volumes:
      - '~/mnt/mysql/:/var/lib/mysql/'
    environment:
      - MYSQL_ROOT_PASSWORD=mysql
      - MYSQL_DATABASE=test
```
- 执行 `mvn spring-boot:run`启动项目

## 新增helpers/hibernate模块
Hibernate默认会将表名以小写的形式创建，这里继承PhysicalNamingStrategyStandardImpl类，重写`toPhysicalTableName`方法，
将tableName转换为大写。
```java
@Override
public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment context) {
    // 将表名全部转换成大写
    String tableName = name.getText().toUpperCase();

    System.out.println("修改后的表名："+tableName);

    return name.toIdentifier(tableName);
}
```
在datasource.properties中加入 
```
#修改Hibernate默认的表的命名策略
spring.jpa.properties.hibernate.physical_naming_strategy=com.sinosteel.framework.helpers.hibernate.HibernateSqlUpperCaseStrategy
```
即利用自定义的策略创建表

## 整合数据库初始化模块
在resource/db/mysql中将mysql schema和data分开处理，schema.sql负责创建表和增加约束，data.sql负责插入数据。
在datasource.properties中加入：
```
#sql
database=mysql
spring.datasource.schema=classpath*:db/${database}/schema.sql
spring.datasource.data=classpath*:db/${database}/data.sql
spring.datasource.sql-script-encoding=utf-8
#首次运行的时候加载db.mysql.{data.sql, schema.sql}脚本。之后可设置为false
spring.datasource.initialize=true
```
则在项目启动时自动加载数据库。首次加载后，再次启动项目时将 `spring.datasource.initialize`设置为false，不然重复添加约束会产生问题