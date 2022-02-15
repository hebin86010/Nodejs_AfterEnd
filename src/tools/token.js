// 引入模块依赖
const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');

//生成token
function createToken(data, authorizationTime = '2h') {
        let private = fs.readFileSync(path.join(__dirname, '../config/private.key'))   //私钥 可以自己生成
        let token = jwt.sign(data, private,{ expiresIn: authorizationTime }, {algorithm: 'RS256'})
        return token;
    }


// 抛出函数的列表
module.exports ={
    createToken   
} 
