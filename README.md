
# Nodejs_AfterEnd框架
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用Node.js + MySQL 开发的后端系统框架;
## 一. 项目仓库
1. 组织地址: 
2. 团队地址: 
3. 仓库地址: https://github.com/hebin86010/Nodejs_AfterEnd
4. 演示地址: 
## 二. 项目的文件目录结构
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过文件目录结构，梳理项目思路。
## 三、Nodejs第三方库
1.  **EXPRESS** <br/>
      	Node的web服务器框架   
      	 **安装：**      yarn add express    
      	**参考文档：**  https://www.expressjs.com.cn/starter/installing.html 
   
2.  **dayjs** <br/>
            轻量的处理时间和日期的 JavaScript 库
       <br/> **安装：** yarn add dayjs
          <br/> **参考文档：** https://github.com/iamkun/dayjs/blob/4a7b7d07c885bb9338514c234dbb708e24e9863e/docs/zh-cn/README.zh-CN.md
   
3.  **axios** <br/>
      	用于浏览器和 node.js 的基于 Promise 的 HTTP 客户端
       <br/> **安装：** yarn add axios	
	 <br/> **参考文档：** https://www.npmjs.com/package/axios

4. **nodemailer** <br/>
           用于从 Node.js 发送电子邮件
       <br/> **安装：** yarn add nodemailer	
	 <br/> **参考文档：** https://nodemailer.com/about/
				
5.  **sheetjs**  <br/>
      	电子表格格式的解析器和编写器
       <br/> **安装：** yarn add sheetjs	
	 <br/> **参考文档：** https://github.com/rockboom/SheetJS-docs-zh-CN
   
6.  **mysqljs**  <br/>
      	MySQL 的 node.js 驱动程序器
       <br/> **安装：** yarn add mysql	
	 <br/> **参考文档：** https://github.com/mysqljs/mysql
   
	
## 四、函数

  1. <h3> 函数 execSQL(sql, values=[],successCB, failCB)  </h3>
  		 存储位置：/src/tool/mysql.js ；封装MySQL的SQL调用；
<h5>参数：</h5>

   ​			sql：SQL字符串语句；还可以使用SQL模板，防止SQL注入攻击;

   ​			values: sql模板语句参数；默认值为空数组；

   ​			successCB : 成功回调

   ​			failCB : 失败回调
 <h5>实例：</h5>

   sql模板语句：

   ```
   let sql = "SELECT * FROM ?? WHERE ?? = ?；"  //SQL模板语句  ?? 表名/字段名占位符； ? 值的占位符
   let valueArry = ['users', 'id', userId]
   sql = mysql.format(sql, valueArry)
   ```


   方式一：

   ```
   execSQL(sql, (result）=>{
   	console.log(result)
   }, (error）=>{
   	console.log("错误：", error)
   })
   ```
   方式二：

   ```
   execSQL(sql).then(result=>{
   	console.log(result)
   }).catch(error=>{
   	console.log("错误：", error)
   }) 
```
---
