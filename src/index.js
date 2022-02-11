// 0. 引入第三方库
const express = require("express")
const path = require("path")
const { crossDomainM, rizhiM, err404MF, err500MF, toolM} = require("./middlewares/baseMiddl")   //引入基础中间件：跨域、日志、404、500
const personRouter = require("./routers/personRouter")                                          //个人信息数据API
const featrueRouter = require("./routers/featrueRouter")                                        //特征码信息数据API
const orgRouter = require("./routers/orgRouter")                                                //组织信息数据API


//引入和定义常量
const port = 80                             //express监听的服务器端口
const page404 = "./defaulPages/404.html"    //404错误响应页面 , 可以根据后台配置不同风格的响应页面
const page500 = "./defaulPages/500.html"    //500错误响应页面 , 可以根据后台配置不同风格的响应页面

// 1. 创建一个应用服务器
const app = express()  

// 2.挂载工具中间件
app.use(toolM)                                                //挂载工具中间件
app.use(express.json(), express.urlencoded({extended:true}))  //post请求参数预处理处理中间件：son格式、普通的&拼接
app.use(rizhiM)                                               //日志中间件
app.use(crossDomainM)                                         //跨域中间件
app.use(express.static(path.resolve(__dirname,"public")))    //静态资源服务中间件



//3 挂载路由中间件
app.use("/person", personRouter)                            //挂载个人数据中间件路由
app.use("/featrue", featrueRouter)                    //挂载特征码数据中间件路由
app.use("/org", orgRouter)                                  //挂载组织数据中间件路由

// 4 挂载错误中间件
app.use(err404MF(path.resolve(__dirname, page404)))         //404中间件：前面的路由，都没有匹配到
app.use(err500MF(path.resolve(__dirname, page500)))        // 500错误中间件：放在最后的位置

// 5 启动服务器
app.listen(port, ()=> {
  console.log(`Express服务器启动成功, 监听端口：${port}`)
})
