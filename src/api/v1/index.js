const express = require("express");
const fs = require("fs")
const path = require('path')
const jwt = require('jsonwebtoken')
let router = express.Router()

//  定义api路由
const loginApi = require("./login")
const accountApi =require("./accountApi")
const featureApi = require("./featureApi")
const orgApi = require("./orgApi")
const personApi =require("./personApi");

//挂载api路由
router.use("/login", loginApi)
router.post("/vt",(req,resp)=>{
    const userToken = req.headers['authorization']
    const cert = fs.readFileSync(path.join(__dirname, '../../config/private.key'))
    // const cert = fs.readFileSync(path.join(__dirname, '../../config/public.key'))
    jwt.verify(userToken, cert, (error, decoded) => {
        let code = 200
        let msg = "token验证成功！"
        let data = {}
        if (error) {
            code = 401
            msg = "登录信息有误！"
            if(error.message == "jwt expired"){
                code = 410
                msg= "token过期，请重新登录 "
            }
        } else {
            data = decoded
        }
        resp.send(resp.tool.ResponseTemp(code, msg, data))
        
    })
})
router.use("/account", accountApi)
router.use("/feature", featureApi)
router.use("/org", orgApi)
router.use("/person",personApi)

//抛出路由
module.exports = router