const express = require("express")
const md5 =require("md5")

let router = express.Router()

// 新增特征码类型
router.post("/add_feature_code_type",(req, resp)=>{
    const {featureCodeType, introduction, rule} = req.body
    let feature_code_type = featureCodeType
    feature_code_type = feature_code_type.trim()
    // 查重
    let sql=`
        SELECT
            t_feature_code_type.id
        FROM
            t_feature_code_type
        WHERE
            t_feature_code_type.feature_code_type = '${feature_code_type}'
    `
    resp.tool.execSQL(sql).then(result=>{
        if(result.length > 0){
            resp.send(resp.tool.ResponseTemp(-2, "特征码类型重复，请修改后重新提交！", null))
        } else {
            sql =`
                INSERT t_feature_code_type ( feature_code_type, introduction, rule )
                VALUES
                    ('${feature_code_type}','${introduction}','${rule}' )
            `
            resp.tool.execSQLAutoResponse(sql, "特征码类型添加成功！")
        }
    })
})

// 新增特征码记录
router.post("/add_feature_code",(req, resp) => {
    // 模拟客户端上传数据
    let sql =`
        SELECT
            t_person.id as person_id, 
            t_person.name_pinyin as '1',
            t_person.student_no as '4', 	 
            t_person.mail as '3', 
            t_person.phone as '2'            
        FROM
            t_person
    `
    resp.tool.execSQL(sql).then(result=>{
        result.map(item=>{
            for ( prop in item){
                if(item[prop] && prop != 'person_id'){                    
                    let verificationCode= ""
                    if(prop == 1){                        
                        verificationCode = md5("123456")  
                    } 
                    resp.tool.addFeatureCode(item["person_id"], prop, item[prop], verificationCode)
                        
                }
            }
            
        })

    })
    // resp.tool.addFeatureCode()
    resp.send(resp.tool.ResponseTemp(0, "特征码添加成功！", null))
})

module.exports = router