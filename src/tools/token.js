// 引入模块依赖
const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');

//私钥 可以自己生成
let cert = fs.readFileSync(path.join(__dirname, '../config/private.key'))   

//签发token
function createToken(data, authorizationTime = '2h') {
        console.log(authorizationTime)
        let token = jwt.sign(data, cert,{ expiresIn: authorizationTime }, {algorithm: 'RS256'})
        return token;
}

// 验证token
function checkToken(token){
    jwt.verify(token, cert, (error, decoded) => {
        let code = 200
        let msg = ""
        let data = {}
        if (error) {
            code = 401
            msg = "录信息有误"
            if(error.message == "jwt expired"){
                // token过期
                code = 410
                msg = "token过期，请重新登录!"
            }
        } else {
            data = decoded
            msg = "token 正确"
        }
        return {
            code,
            msg,
            data}
        
    })
}

// 抛出函数的列表
module.exports ={
    createToken,
    checkToken
} 
