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
- 在项目根目录执行`mvn clean package -DskipTests`打包
- 如果没有mysql数据库，执行`docker-compose up -d`启动mysql镜像，docker-compose.yml文件如下：
```yaml
version: '3.2'

services:
  mysql:
    image: 'mysql:latest'
    ports:
      - '33006:3306'
    volumes:
      - '~/mnt/mysql/:/var/lib/mysql/'
    environment:
      - MYSQL_ROOT_PASSWORD=mysql
      - MYSQL_DATABASE=fitech
```
- 执行 `mvn spring-boot:run`启动项目