const express = require("express")
const md5 = require("md5")

let router = express.Router()

// 新增账号
router.post("/register",(req, resp)=>{
    const {username, password, person_id} = req.body
    let account = username.toLowerCase()
    console.log
    // 1.账号重名检测
    let sql =`
        SELECT
            id 
        FROM
            t_accounts 
        WHERE
            account = '${account}';
    `
    resp.tool.execSQL(sql).then(result=>{
        if (result.length > 0) {
            resp.send(resp.tool.ResponseTemp(-2, "用户名已存在, 请修改!", {}))
        } else {
            let pw =  md5(password)
             sql =`
                INSERT INTO t_accounts ( account, pw, person_id )
                VALUES
                    (
                     '${account}',
                     '${pw}',
                     ${person_id}  
                    );
            `
            console.log(sql)
            resp.tool.execSQLTEMPAutoResponse(sql, "账号注册成功！", result=>{
                if (result.affectedRows > 0) {
                    return {
                        id: result.insertId,
                        account
                    }
                }
            })
        }
    })
    
})

module.exports = router