// 引用
const fs =require("fs")
const path = require("path")
const dayjs = require("dayjs")    //第三方时间插件dayjs
const {sendMail} = require("../tools/email")         //邮件中间件
const {execSQL} = require("../tools/mysql")   // 数据库中间件

// 跨域中间件
let crossDomainM = (req, resp, next) => {
  resp.header("Access-Control-Allow-Origin", "*");
  resp.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
  resp.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
  resp.header("X-Powered-By",' 3.2.1')
  next();
}

// 日志中间件
let rizhiM = (req, resp, next)=>{
      // 日志记录
      let currentTime =  dayjs().format("YYYY-MM-DD HH:mm:ss:SSS")
      let clientIp = req.ip
      let method = req.method
      let path =req.path
      let params ={}
      if (method.toLowerCase() === "get"){
        params = req.query
      } else if(method.toLowerCase() === "post"){
        if (path != "/api/login"){
          params =req.body
        } else{
          params = {userName : req.body.userName}  //日志中不存储用户密码
        }
      }
      let user_agent =req.headers["user-agent"]

      let sql = "INSERT INTO log  (client_ip, method, path, params, user_agent) VALUES (?, ?, ?, ?, ?);"

      execSQL(sql, [clientIp, method, path, JSON.stringify(params), user_agent])
      
      next()
  }


// 没有找到网页，404错误中间件
  let err404MF =function(page404){
    if (!path.isAbsolute(page404)){
        throw Error("err404MF:必须传入一个绝对路径")
      }
    return (req, resp)=>{
        resp.status(404).sendFile(page404)
    }

}

// 错误处理中间件，500内部错误
let err500MF = function(page500){
  if (!path.isAbsolute(page500)){
    throw Error("err500MF:必须传入一个绝对路径")
  }
  return (err,req, resp, next)=>{
      // 日志记录
    let err_type = err.name
    let err_msg = err.message
    let err_stack = err.stack
    let currentTime =  dayjs().format("YYYY-MM-DD HH:mm:ss:SSS")
    let info=`
    ==============================================================================================
    错误时间：${currentTime}
    错误类型：${err_type}
    错误描述：${err_msg}
    错误堆栈：${err_stack}
    ==============================================================================================
  `
    //写入数据库 
    let sql = "INSERT INTO err_log  (err_type, err_msg, err_stack) VALUES (?, ?, ?);"

    execSQL(sql, [err_type, err_msg, JSON.stringify(err_stack)]).then(result=>{
      if (result.affectedRows >=1){
        console.log(`${currentTime},错误日志写入成功!`)
        sendMail('18610028680@163.com', '发生500错误', info)
      }
    })
      
    resp.status(500).sendFile(page500)
  }
}

// 常用工具中间件
let toolM =  (req, resp, next) => {
  resp.tool ={
    execSQL,
    // 响应模板
    ResponseTemp: function (code, msg, data) {
      return {
          code,
          msg,
          data
    
      }
    }
  }
  next()
}
//   交付给外界的模块

module.exports =  {
  crossDomainM,
  rizhiM,
  err404MF,
  err500MF,
  toolM
}