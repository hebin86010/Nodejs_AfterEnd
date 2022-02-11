const md5 = require("md5")
const {execSQL} = require("../tools/mysql")
function addFeatrueCode(person_id, featrueCodeTypeId, featrueCode, verificationCode=[]){
    // 查重
    let sql =`
            SELECT
                id 
            FROM
                t_featrue_code 
            WHERE
                featrue_code_type_id = ${featrueCodeTypeId}
                AND featrue_code = '${featrueCode}';
    `
    // console.log(sql)
   
    execSQL(sql).then(result=>{
        if(result.length > 0){
            // console.log(`特征码重复！${featrueCodeType} :${featrueCode}`)
        } else {
            sql =`
            INSERT t_featrue_code (person_id, featrue_code_type_id, featrue_code, verification_code)
            VALUES (${person_id},'${featrueCodeTypeId}','${featrueCode}','${verificationCode}');
            `
            // console.log(sql)
            execSQL(sql)
        }
    })

}

// 抛出函数的列表

module.exports ={
    addFeatrueCode
}