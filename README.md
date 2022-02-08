
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

2.  **mysqljs**  <br/>
      	MySQL 的 node.js 驱动程序
       <br/> **安装：** yarn add mysql	
	 <br/> **参考文档：** https://github.com/mysqljs/mysql
   
3.  **dayjs** <br/>
            轻量的处理时间和日期的 JavaScript 库
       <br/> **安装：** yarn add dayjs
          <br/> **参考文档：** https://github.com/iamkun/dayjs/blob/4a7b7d07c885bb9338514c234dbb708e24e9863e/docs/zh-cn/README.zh-CN.md
   
4.  **axios** <br/>
      	用于浏览器和 node.js 的基于 Promise 的 HTTP 客户端
       <br/> **安装：** yarn add axios	
	 <br/> **参考文档：** https://www.npmjs.com/package/axios

5. **nodemailer** <br/>
           用于从 Node.js 发送电子邮件
       <br/> **安装：** yarn add nodemailer	
	 <br/> **参考文档：** https://nodemailer.com/about/

6.  **pinyin-pro**  <br/>
      	汉字拼音转换工具
       <br/> **安装：** yarn add pinyin-pro	
	 <br/> **参考文档：** https://www.npmjs.com/package/pinyin-pro

7.  **sheetjs**  <br/>
      	电子表格格式的解析器和编写器
       <br/> **安装：** yarn add sheetjs	
	 <br/> **参考文档：** https://github.com/rockboom/SheetJS-docs-zh-CN
   

   
	
## 四、函数

<h3> 1. 函数 execSQL(sql, values=[],successCB, failCB)</h3>
  		 存储位置：/src/tool/mysql.js ；<br/>
		 描述：封装MySQL的SQL调用；
<h4>参数：</h4>
sql：SQL字符串语句；还可以使用SQL模板，防止SQL注入攻击;<br/>
values: sql模板语句参数；默认值为空数组；<br/>
successCB : 成功回调<br/>
failCB : 失败回调<br/>
 <h4>实例：</h4>

   sql模板语句：

   ```
   let userId = 1
   let password = "' '1'='1"                 
   
   //SQL注入攻击
   let sql = `SELECT * FROM users WHERE id =${userId} ? and pw ='${password}';` 
   // sql = "SELECT * FROM users WHERE id =1 ? and pw ='' '1'='1';"

   //防止注入攻击：使用SQL模板
   sql = "SELECT * FROM ?? WHERE ?? = ? and ?? =?；"  //SQL模板语句  ?? 表名/字段名占位符； ? 值的占位符
   let valueArry = ['users', 'id', userId, 'pw', password]
   sql = mysql.format(sql, valueArry)   
   //sql = "SELECT * FROM `users` WHERE `id` = 1 and `pw` ='\' \'1\'=\'1' ;"
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
<br/>

<h3> 2.  函数 execSQLAutoResponse(sql, successMsg = "查询成功！", handlerResultF=result=>result)  </h3>
  		 存储位置：/src/middlewares/baseMiddl.js <br/>
		 描述：封装MySQL的SQL调用；
<h4>参数：</h4>
sql：SQL字符串语句；<br/>
successMsg：查询成功的信息，默认为：“查询成功！”<br/>
handlerResultF：查询结果的数据的处理函数；默认为：直接输出查询结果；<br/>
<h4>实例：</h4>

```
let sql =`
            SELECT
                id,
                name,
		pthon,
		email
            FROM
                t_user
            LIMIT 1;
        `
 execSQLAutoResponse(sql,"查询用户信息成功!",function (result) {
        if (result.length > 0) {
            return result[0];
        } else {
            return {}
        }
    })

```
<br/>

<h3> 3.  函数 ResponseTemp: function (code, msg, data)  </h3>
  		 存储位置：/src/middlewares/baseMiddl.js <br/>
		 描述：响应数据模板；
<h4>参数：</h4>
code：响应码；<br/>
msg：响应信息<br/>
data：响应数；<br/>

<h3> 4.  函数 sendMail(toUser, title, content)  </h3>
  		 存储位置：/src/tools/email.js <br/>
		 描述：发送邮件；
<h4>参数：</h4>
toUser：收件地址，多个地址通过逗号分割；<br/>
title：邮件主题<br/>
content：邮件内容<br/>
<h4>实例：</h4>

```
let info=`
    ==============================================================================================
    错误时间：${currentTime}
    错误类型：${err_type}
    错误描述：${err_msg}
    错误堆栈：${err_stack}
    ==============================================================================================
  `
sendMail('xxxxxx@163.com', '发生500错误', info)
```
<br/>
