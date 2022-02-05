// 0. 引入第三方库
const express = require("express")
// const {rizhiM, notFoundMF, handlerErrorMF} = require("./middlewares/baseMiddl")       //引入日志中间件
const { crossDomainM, rizhiM, err404MF, err500MF} = require("./middlewares/baseMiddl")   //引入日志中间件
const path = require("path")
// const apiRouter = require("./api/v1/index")                                           //引入封装的api组件,这个地方是否可以把版本号'v1'改为变量，这样可以数据库中取值

//引入和定义常量
const port = 80                             //express监听的服务器端口
const page404 = "./defaulPages/404.html"    //404错误响应页面 , 可以根据后台配置不同风格的响应页面
const page500 = "./defaulPages/500.html"    //500错误响应页面 , 可以根据后台配置不同风格的响应页面

// 1. 创建一个应用服务器
const app = express()  

// 2.挂载工具中间件
app.use(express.json(), express.urlencoded({extended:true}))  //post请求参数预处理处理中间件：son格式、普通的&拼接
app.use(rizhiM)                                               //日志中间件
app.use(crossDomainM)                                         //跨域中间件
app.use(express.static(path.resolve(__dirname,"public")))    //静态资源服务中间件



//3 挂载路由中间件
// app.use("/api", apiRouter)                               //api中间件 
app.all('/api', (req, resp)=> {
  // 错误代码测试
  // abc()
  let method = req.method
  console.log(`The tyoe of ${method} method is`, typeof(method) )
  resp.send(`This is API middlewares. The method from your require is ${method} .`)
})

// 4 挂载错误中间件
app.use(err404MF(path.resolve(__dirname, page404)))         //404中间件：前面的路由，都没有匹配到
app.use(err500MF(path.resolve(__dirname, page500)))        // 500错误中间件：放在最后的位置

// 5 启动服务器
app.listen(port, ()=> {
  console.log(`Express服务器启动成功, 监听端口：${port}`)
})
