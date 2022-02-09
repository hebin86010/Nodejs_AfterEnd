const express = require("express")
const { pinyin } = require("pinyin-pro")

let router =express.Router()


router.get("/name_pinyin", (req, resp)=>{
    // 查询t_person表中name_pinyin字段为空的记录
    let sql = `
        SELECT
            id,
            name,
            name_pinyin 
        FROM
            t_person 
        WHERE
            ISNULL( name_pinyin ) 
    `
resp.tool.execSQL(sql).then(result=>{
    result = result.map((item)=>{
         //使用正则表达式处理拼音字符串：1.首字母大写； 2.删除字符串中的空格
        item['name_pinyin'] = pinyin(item['name'], {toneType: 'none'}).replace(/( |^)[a-z]/g,(L)=>L.toUpperCase()).replace(/\s*/g,"")
        sql =`
            UPDATE t_person 
            SET ?? = ? 
            WHERE
                ?? = ?;
        `
        let valueArry = ['name_pinyin', item['name_pinyin'], 'id', item['id']]
        //更新上述查询记录在t_person表中对应ID的name_pinyin字段
        resp.tool.execSQL(sql, valueArry)    
    })
    resp.send(resp.tool.ResponseTemp(0, "个人信息姓名拼音添加成功！", result))
})

   

})

module.exports = router