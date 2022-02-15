const express = require("express")
const {createToken} = require("../../tools/token")

// 创建路由对象
let router = express.Router()

router.post("/",(req, resp)=>{
    let userInfo = {
        account : req.body.userName
    }
    let pw = req.body.passWord

    // 签发token
    let authorizationTime =  50     //token授权时长：10秒
    // let authorizationTime = '1d'     //token授权时长：1天
    let token = createToken(userInfo, authorizationTime)
    let respData = {
        // token: userToken,
        // personInfo: userInfo
        token,
        userInfo
    }
    console.log(token)
    resp.send(resp.tool.ResponseTemp(0, "登录成功！", respData))
})

module.exports= router