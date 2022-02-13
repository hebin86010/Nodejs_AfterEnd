# MySQL数据库配置
## 一、 阿里云配置服务器端口 【3306】：
![MySQl](./%E6%88%AA%E5%9B%BE/MySQl.png)
## 二、 宝塔面板配置  
### 1. 打开宝塔面板端口 【3306】：
![MySQl_00](./%E6%88%AA%E5%9B%BE/MySQl_00.png)
###  2. 修改mysql的配置文件：
在 [mysqld] ，添加语句： skip-grant-tables
![MySQl_01](./%E6%88%AA%E5%9B%BE/MySQl_01.png)
###  3. 重启MySQL服务器：
![MySQl_02](./%E6%88%AA%E5%9B%BE/MySQl_02.png)
###  4. 设置MySQL密码：
![MySQl_03](./%E6%88%AA%E5%9B%BE/MySQl_03A.png)
## 三、Navicat导入数据库：
### 1. 建立数据库连接：
![MySQl_03](./%E6%88%AA%E5%9B%BE/MySQl_03.png)
### 2. 新建数据库：
![MySQl_04](./%E6%88%AA%E5%9B%BE/MySQl_04.png)
### 3. 导入SQL数据库结构和数据：
![MySQl_05](./%E6%88%AA%E5%9B%BE/MySQl_05.png)
<br/>导入中...耐心等待<br/>
![MySQl_06](./%E6%88%AA%E5%9B%BE/MySQl_06.png)
### 4. 完成导入：
![MySQl_07](./%E6%88%AA%E5%9B%BE/MySQl_07.png)
<br/>查看表:<br/>
![MySQl_08](./%E6%88%AA%E5%9B%BE/MySQl_08.png)
