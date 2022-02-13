const md5 = require("md5")
const {execSQL} = require("./mysql")
function addFeatureCode(person_id, featureCodeTypeId, featureCode, verificationCode=[]){
    // 查重
    let sql =`
            SELECT
                id 
            FROM
                t_feature_code 
            WHERE
                feature_code_type_id = ${featureCodeTypeId}
                AND feature_code = '${featureCode}';
    `
    // console.log(sql)
   
    execSQL(sql).then(result=>{
        if(result.length > 0){
            // console.log(`特征码重复！${featureCodeType} :${featureCode}`)
        } else {
            sql =`
            INSERT t_feature_code (person_id, feature_code_type_id, feature_code, verification_code)
            VALUES (${person_id},'${featureCodeTypeId}','${featureCode}','${verificationCode}');
            `
            // console.log(sql)
            execSQL(sql)
        }
    })

}

// 抛出函数的列表

module.exports ={
    addFeatureCode
}