// 0. 引入第三方库
const express = require("express")
// const {rizhiM, notFoundMF, handlerErrorMF} = require("./middlewares/baseMiddl")  //引入日志中间件
const { crossDomainM, rizhiM, err404MF, err500MF} = require("./middlewares/baseMiddl")  //引入日志中间件
// const dayjs = require("dayjs")    //第三方时间插件dayjs
const path = require("path")
// const apiRouter = require("./api/v1/index")  //引入封装的api组件

// 1. 创建一个应用服务器
const app = express()  
const port = 80       //监听的服务器端口

// 2.挂载工具中间件
app.use(express.json(), express.urlencoded({extended:true}))  //post请求参数预处理处理中间件：son格式、普通的&拼接
app.use(rizhiM)                                               //日志中间件
app.use(crossDomainM)                                         //跨域中间件
app.use(express.static(path.resolve(__dirname,"public")))    //静态资源服务中间件



//3 挂载路由中间件
//api中间件 
// app.use("/api", apiRouter)
app.all('/api', (req, resp)=> {
  // 错误代码测试
  // abc()
  let method = req.method
  console.log(`The tyoe of ${method} method is`, typeof(method) )
  resp.send(`This is API middlewares. The method from your require is ${method} .`)
})

// 4 挂载错误中间件
// 4.1 404中间件
//前面的路由，都没有匹配到
let page404 = "./defaulPages/404.html" //404错误响应页面 , 可以根据后台设置、调整响应页面
app.use(err404MF(path.resolve(__dirname, page404)))

// 4.2 500错误处理中间件
// 在最后的位置，500错误处理中间件（
let page500 = "./defaulPages/500.html"  //500错误响应页面 , 可以根据后台设置、调整响应页面
app.use(err500MF(path.resolve(__dirname, page500)))

// 5 启动服务器
app.listen(port, ()=> {
  console.log(`Express服务器启动成功, 监听端口：${port}`)
})