const express = require("express")
const md5 =require("md5")

let router = express.Router()

// 新增特征码类型
router.post("/add_featrue_code_type",(req, resp)=>{
    const {featrueCodeType, introduction, rule} = req.body
    let featrue_code_type = featrueCodeType
    featrue_code_type = featrue_code_type.trim()
    // 查重
    let sql=`
        SELECT
            t_featrue_code_type.id
        FROM
            t_featrue_code_type
        WHERE
            t_featrue_code_type.feature_code_type = '${featrue_code_type}'
    `
    resp.tool.execSQL(sql).then(result=>{
        if(result.length > 0){
            resp.send(resp.tool.ResponseTemp(-2, "特征码类型重复，请修改后重新提交！", null))
        } else {
            sql =`
                INSERT t_featrue_code_type ( feature_code_type, introduction, rule )
                VALUES
                    ('${featrue_code_type}','${introduction}','${rule}' )
            `
            resp.tool.execSQLAutoResponse(sql, "特征码类型添加成功！")
        }
    })
})

module.exports = router