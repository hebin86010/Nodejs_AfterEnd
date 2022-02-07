const express = require("express")
let router = express.Router()

router.get("/web_config", (req, resp)=>{
    let sql = `
        SELECT
            wechat_qrcode,
            mini_program,
            wb_qrcode,
            app,
            tel 
        FROM
            t_config
        LIMIT 1;
    `
    resp.tool.execSQL(sql).then(result =>{
        if (result.length > 0){
            resp.send(resp.tool.ResponseTemp(0,  "查询成功！", result[0]))
        } else {
            resp.send(resp.tool.ResponseTemp(-1,  "查询失败！", {}))
        }
    })
})

// 抛出路由
module.exports = router