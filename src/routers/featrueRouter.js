const express = require("express")
const md5 =require("md5")

let router = express.Router()

// 新增账号
router.post("/add_featrue_code_type",(req, resp)=>{
    const {featrueCodeType, introduction, rule} = req.body
    console.log(`${featrueCodeType},${introduction},${rule}`) 
    resp.tool.ResponseTmpe(0, "特征码类型添加成功!",{
        '特征码类型' : featrueCodeType,
        '简介':introduction ,
        '规则': rule
    })
    
})

module.exports = router