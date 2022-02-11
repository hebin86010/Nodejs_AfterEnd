const express = require("express")
const { execSQL } = require("../tools/mysql")

let router = express.Router()
router.post("/add_org",(req, resp)=>{
    const {parent_id, org_name, org_abbr = org_name, introduction = ""} = req.body     //解构客户端提交的参数
    let creator_id = 5
    let sql =`
        SELECT
            id,
            org_code,
            org_full_name 
        FROM
            t_organization 
        WHERE
            id = ${ parent_id } ;
    `
    // 注意，这是数据库查询函数异步的
    execSQL(sql).then(result=>{
        // console.log(result)
        if (result.length > 0) {
            // org_full_name = result[0].org_full_name + '-' + org_full_name
            let parent_full_name = ""
            let parent_org_code = "" 
            if (parent_id == 1){
                parent_org_code = "-"
                parent_full_name = "-"
            } else if(parent_id > 1){
                parent_org_code = result[0].org_code 
                parent_full_name = result[0].org_full_name
            }
            // 添加新的记录
            let org_full_name = parent_full_name + org_name + "-"
            sql =`
            INSERT INTO t_organization ( org_name, org_abbr, org_full_name, parent_id, introduction, creator_id )
            VALUES ( '${org_name}', '${org_abbr}', '${org_full_name}', ${parent_id}, '${introduction}', ${creator_id} );
            `
            resp.tool.execSQLAutoResponse(sql, "添加组织成功！", result=>{
                if (result.affectedRows > 0) {
                    let org_code = parent_org_code  + result.insertId + "-"
                    sql = `
                        UPDATE t_organization  
                        SET org_code = '${org_code}' 
                        WHERE
                            id = ${result.insertId};
                    ` 
                    execSQL(sql)
                    return {
                        id : result.insertId ,
                        org_code,
                        org_full_name 
                    }
                }
            })
        }
    })
  
    

    
    // console.log(sql)
    
    


})

module.exports =router