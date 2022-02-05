const mysql  = require("mysql") 

let pool  = mysql.createPool({
  connectionLimit : 10,
  host     : 'localhost',
  user     : 'root',
  password : 'MySqlPW!123',
  database : 'base_db'
})

function execSQL(sql,values =[], successCB, failCB) {
// function execSQL(sql, successCB, failCB) {
    return new Promise((resolve, reject) => {
        pool.query(sql, values, function (error, results, fields) {
        // pool.query(sql, function (error, results, fields) {
            if (error) {
                if (typeof failCB === "function") {
                    failCB(error)
                }
                reject(error)
            } else {
                if (typeof successCB === "function") {
                    successCB(results)
                }
                resolve(results)
            }
        });
    })
}

/* function execSQL(sql){
    return new Promise((resolve, reject) => {
      pool.query(sql, function (error, results, fields) {
        if(error) {
          reject(error)
        }
        resolve(results)
      })
    })
  } */

  // 抛出函数的列表

module.exports = {
    execSQL
}