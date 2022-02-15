# MySQL数据库配置
## 一、 阿里云配置服务器端口 【3306】：
![MySQl](./screenshot/MySQl.png)
## 二、 宝塔面板配置  
### 1. 打开宝塔面板端口 【3306】：
![MySQl_00](./screenshot/MySQl_00.png)
###  2. 修改mysql的配置文件：
在 [mysqld] ，添加语句： skip-grant-tables
![MySQl_01](./screenshot/MySQl_01.png)
###  3. 重启MySQL服务器：
![MySQl_02](./screenshot/MySQl_02.png)
###  4. 设置MySQL密码：
![MySQl_03](./screenshot/MySQl_03A.png)
## 三、Navicat导入数据库：
### 1. 建立数据库连接：
![MySQl_03](./screenshot/MySQl_03.png)
### 2. 新建数据库：
![MySQl_04](./screenshot/MySQl_04.png)
### 3. 导入SQL数据库结构和数据：
![MySQl_05](./screenshot/MySQl_05.png)
<br/>导入中...耐心等待<br/>
![MySQl_06](./screenshot/MySQl_06.png)
### 4. 完成导入：
![MySQl_07](./screenshot/MySQl_07.png)
<br/>查看表:<br/>
![MySQl_08](./screenshot/MySQl_08.png)
