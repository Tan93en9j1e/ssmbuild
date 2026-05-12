# ssmbuild README\.md

\# ssmbuild

\!\[Java\]\(https://img\.shields\.io/badge/Java\-100%25\-red\) \!\[SSM\]\(https://img\.shields\.io/badge/Framework\-SSM\-blue\) \!\[Maven\]\(https://img\.shields\.io/badge/Build\-Maven\-green\) \!\[JSP\]\(https://img\.shields\.io/badge/Frontend\-JSP\-orange\)

SSM（Spring \+ SpringMVC \+ MyBatis）框架整合入门项目，以图书管理为核心业务场景，实现基础CRUD操作，适合Java Web初学者学习框架整合、项目搭建与分层开发。

\-\-\-

## 📖 项目简介

本项目是标准的SSM框架整合模板，基于Java语言开发（100% Java），搭建了完整的Java Web项目架构，包含后端三层架构（Service、Dao、Entity）、MVC分层（Controller、View、Model）、数据库交互及前端页面展示，聚焦图书管理核心功能，可直接作为SSM入门学习、课程设计或毕业设计的基础模板，快速上手框架整合与Web开发。

项目由单个贡献者 [@Tan93en9j1e](https://github.com/Tan93en9j1e) 开发维护，代码结构清晰，注释规范，便于学习和二次修改。

## 🔧 技术栈详情

- **后端框架**：Spring \+ SpringMVC \+ MyBatis（SSM整合）

- **前端技术**：JSP（页面展示）、HTML/CSS（样式美化）

- **构建工具**：Maven（依赖管理、项目构建）

- **开发环境**：IntelliJ IDEA（推荐）

- **编程语言**：Java 100%

- **部署环境**：Tomcat（Web服务器）

- **数据库**：MySQL（推荐，可适配其他关系型数据库）

## 📂 项目结构

项目目录结构清晰，符合SSM项目规范，各目录功能如下：

```bash
ssmbuild/
├── .idea/                 # IntelliJ IDEA 配置文件目录（IDE自动生成）
├── out/                   # 项目编译输出目录（含war包解压文件）
│   └── artifacts/ssmbuild_war_exploded/  # 编译后的可部署文件
├── src/                   # 核心源码目录（后端代码）
│   ├── main/
│   │   ├── java/          # Java源代码（Entity、Dao、Service、Controller）
│   │   └── resources/     # 配置文件（Spring、SpringMVC、MyBatis配置）
│   └── test/              # 测试代码目录（可自行补充）
├── web/                   # Web资源目录（前端页面）
│   ├── WEB-INF/           # 受保护的Web资源（JSP页面、web.xml配置）
│   └── static/            # 静态资源（CSS、JS、图片，可自行补充）
├── .gitignore             # Git忽略文件（指定无需提交的文件/目录）
└── pom.xml                # Maven核心配置文件（依赖管理、构建配置）
```

## 📌 核心功能模块

以图书管理为核心，实现完整的基础业务操作，贴合SSM框架学习需求：

- 图书信息展示：分页/列表展示所有图书信息

- 图书CRUD操作：添加、删除、修改、查询图书信息

- 前端交互：完善的JSP图书管理界面，支持表单提交、数据回显

- 框架整合：Spring管理Bean、SpringMVC处理请求、MyBatis操作数据库，实现三层联动

## 🚀 快速开始（部署运行）

### 1\. 环境准备

- JDK 1\.8\+（推荐1\.8）

- Maven 3\.6\+

- IntelliJ IDEA

- Tomcat 8\.5\+

- MySQL 8\.0\+（或5\.7）

### 2\. 克隆项目

```bash
git clone https://github.com/Tan93en9j1e/ssmbuild.git
```

### 3\. 配置数据库

1\. 新建MySQL数据库（推荐数据库名：ssmbuild）

2\. 执行以下SQL语句创建图书表（book）：

```sql
CREATE DATABASE IF NOT EXISTS ssmbuild;
USE ssmbuild;

CREATE TABLE IF NOT EXISTS book (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '图书ID',
    book_name VARCHAR(100) NOT NULL COMMENT '图书名称',
    book_author VARCHAR(50) NOT NULL COMMENT '图书作者',
    book_price DECIMAL(10,2) NOT NULL COMMENT '图书价格',
    book_desc VARCHAR(255) DEFAULT '' COMMENT '图书描述',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图书表';
```

3\. 修改项目中MyBatis数据库配置文件（src/main/resources/mybatis\-config\.xml 或 spring\-dao\.xml），替换为自己的数据库地址、用户名和密码：

```xml
<property name="url" value="jdbc:mysql://localhost:3306/ssmbuild?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC"/>
<property name="username" value="root"/>
<property name="password" value="你的数据库密码"/>
```

### 4\. 启动项目

- 用IntelliJ IDEA打开项目，等待Maven自动下载依赖（若依赖下载失败，可刷新Maven配置）

- 配置Tomcat服务器，将项目部署到Tomcat中

- 启动Tomcat，访问地址：`http://localhost:8080/ssmbuild`（端口号根据自己的Tomcat配置调整）

## 📝 提交记录说明

项目提交记录清晰，便于追溯功能开发历程：

- `feat\(project\): 初始化SSM项目架构` \- 搭建项目基础结构，整合SSM框架核心配置

- `feat\(jsp\): 完善图书管理界面功能` \- 开发JSP前端页面，实现图书管理界面交互

- `style\(frontend\): 格式化JSP页面代码样式和注释` \- 优化JSP代码格式，添加规范注释，提升可读性

## 💡 适用场景

- SSM框架入门学习者，用于熟悉Spring、SpringMVC、MyBatis的整合流程

- Java Web初学者，学习分层开发（MVC、三层架构）思想

- 课程设计、毕业设计的基础模板，可在此基础上扩展功能（如用户登录、权限管理等）

- 快速搭建SSM项目脚手架，减少重复的框架配置工作

## ⚠️ 注意事项

- 确保JDK、Maven、Tomcat版本匹配，避免版本冲突导致项目无法启动

- 数据库配置需根据自身环境修改，否则无法连接数据库，导致功能无法正常使用

- 若JSP页面出现乱码，可检查web\.xml中是否配置了字符编码过滤器，或修改Tomcat的conf/server\.xml文件添加编码配置

- 项目为入门模板，可根据需求扩展功能（如分页查询、条件查询、用户认证等）

## 🤝 贡献说明

项目目前由 [@Tan93en9j1e](https://github.com/Tan93en9j1e) 独立维护，欢迎感兴趣的开发者Fork、Star，若有问题可提交Issue，也可通过Pull Request贡献代码。

\-\-\-

最后更新时间：2026年5月

> （注：文档部分内容可能由 AI 生成）
