
# Nodejs_AfterEnd框架
使用Node.js + MySQL 开发的后端系统框架;
## 一. 项目仓库
1. 组织地址: 
2. 团队地址: 
3. 仓库地址: https://github.com/hebin86010/Nodejs_AfterEnd
4. 演示地址:

## 二、技术文档
#### 1. 服务器部署
   1. 环境部署：[查看文档](./doc/%E7%8E%AF%E5%A2%83%E9%83%A8%E7%BD%B2.md) 
   2. 数据库配置：[查看文档](./doc/MySQL%E6%95%B0%E6%8D%AE%E5%BA%93%E9%85%8D%E7%BD%AE.md)
   3. 代码部署：[查看文档](./doc/%E4%BB%A3%E7%A0%81%E9%83%A8%E7%BD%B2.md)
#### 2. 代码说明
   1. API 接口：[查看文档](./doc/API.md)
   2. 数据结构：[查看文档](./doc/%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84/%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84.md)
   3. 目录结构：[查看文档](./doc/目录结构.md)
   4. 函数：[查看文档](./doc/函数.md)
   
## 三、 第三方库：
1. EXPRESS
- [参考文档](https://www.expressjs.com.cn/starter/installing.html)
- 安装：yarn add express
- 简介：Node的web服务器框架 ;  
 
2. mysqljs  
- [参考文档](https://github.com/mysqljs/mysql)
- 安装：yarn add mysql
- 简介：MySQL 的 node.js 驱动程序;

3.  dayjs 
- [参考文档](https://github.com/iamkun/dayjs/blob/4a7b7d07c885bb9338514c234dbb708e24e9863e/docs/zh-cn/README.zh-CN.md)
- 安装： yarn add dayjs 
- 简介：轻量的处理时间和日期的 JavaScript 库;
   
4.  axios 
- [参考文档](https://www.npmjs.com/package/axios)
- 安装：yarn add axios 	
- 简介：用于浏览器和 node.js 的基于 Promise 的 HTTP 客户端;

5. nodemailer
- [参考文档](https://nodemailer.com/about/)
- 安装：yarn add nodemailer	
- 简介：用于从 Node.js 发送电子邮件;

6. pinyin-pro
- [参考文档](https://www.npmjs.com/package/pinyin-pro)
- 安装：yarn add pinyin-pro	
- 简介：汉字拼音转换工具;
	
7. sheetjs
- [参考文档](https://github.com/rockboom/SheetJS-docs-zh-CN)
- 安装：yarn add sheetjs	 
- 简介：电子表格格式的解析器和编写器;

8. MD5
- [参考文档](https://github.com/pvorb/node-md5#readme)
- 安装： yarn add md5	
- 简介：加密数据的javascript函数：广泛使用的密码散列函数，可以产生出一个128位（16字节）的散列值（hash value）；

9. jsonWebToken
- [参考文档](https://github.com/auth0/node-jsonwebtoken#readme)
- 安装：yarn add jsonwebtoken
- 简介：实现token技术的一种解决方案，服务器端不需要保存token信息;JWT 标准的 Token 有三个部分：
header（头部）、payload（数据）、signature（签名），中间用点分隔开，并且都会使用 Base64 编码；

## 四、软件工具
1. openssl
- [参考文档](https://www.openssl.org/)
- 描述：创建RSA256密钥对工具；用于传输层安全 (TLS) 协议的的开源工具，实现基于全强度通用密码库；
- 使用方法：[操作手册](./doc/操作手册_openssl.md) 

