const express = require("express");
let router = express.Router()

//  定义api路由
const loginApi = require("./login")
const accountApi =require("./accountApi")
const featureApi = require("./featureApi")
const orgApi = require("./orgApi")
const personApi =require("./personApi")

//挂载api路由
router.use("/login", loginApi)
router.use("/account", accountApi)
router.use("/feature", featureApi)
router.use("/org", orgApi)
router.use("/person",personApi)

//抛出路由
module.exports = router