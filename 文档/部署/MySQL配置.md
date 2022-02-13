# MySQL数据库配置--宝塔面板
## 一、 阿里云配置服务器端口 【3306】：
![MySQl](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl.png)
## 二、 宝塔面板配置  
### 1. 打开宝塔面板端口 【3306】：
![MySQl_00](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_00.png)
###  2. 修改mysql的配置文件：
在 [mysqld] ，添加语句： skip-grant-tables
![MySQl_01](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_01.png)
###  3. 重启MySQL服务器：
![MySQl_02](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_02.png)
###  4. 设置MySQL密码：
![MySQl_03](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_03A.png)
## 三、Navicat导入数据库：
### 1. 建立数据库联接：
![MySQl_03](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_03.png)
### 2. 导入SQL数据库结构和数据：
![MySQl_04](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_04.png)
导入中...
![MySQl_05](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_05.png)
完成导入：
![MySQl_06](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/MySQl_06.png)
