const nodemailer = require("nodemailer")

const fromEmail = 'msgsys@yunke-tec.com'
const fromEmailInfo = '云科消息'
const eamilPass = 'ykzX123456'

let transporter =nodemailer.createTransport({
    host: 'smtp.feishu.cn',   //qq邮箱主机名：'smtp.qq.com'，网易邮箱是:'smtp.163.com'
    sercureConnection :true, //use SSL
    port: 465, 
    secure: true , //true对应port 465， false对应port 587
    auth: {
        user: fromEmail ,
        pass: eamilPass //qq邮箱需要使用授权码，163邮箱使用密码
    }

})

function sendMail(toUser, title, content){
    // 设置邮件内容（谁发送什么给谁）
    let mailOptions = {
        from: `${fromEmailInfo} < ${fromEmail}>` , //发件人
        to: toUser , //收件人,多人通过','分割
        subject: title, //主题
        // text: '赶紧过来查', //plain text body 和下方html字段取其一
        html: content, //html body
        // 下面是发送附件， 不需要就注释掉
        attachements:[
            { filename: 'content.txt', content  }
            // { filename: 'test.md', path: './test.md'  }
        ]
    }
    
    transporter.sendMail(mailOptions).then(result=>{
        console.log(`Message: ${result.messageId}`)
        console.log(`sent: ${result.response}`)
    })

}




// 抛出函数的列表

module.exports ={
    sendMail
}