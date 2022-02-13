# 系统部署运维--宝塔面板
## 一、安装宝塔面板
### 1. 阿里云服务器设置：
<br/> 1) 设置【客户端访问密码】： <br/>
![aly_00](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/aly-00.png)
<br/> 2) 打开服务器端口 8888 （宝塔面板需要使用的端口） <br/>
![aly_01](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/aly-01.png)
### 2. 安装宝塔面板<br/>
1. 在线一键快速安装宝塔，浏览器访问：<br/>
https://www.bt.cn/download/linux.html       
<br/> 1) 下拉页面找到以下界面：输入服务器(公网)IP; 阿里云服务器,【客户端访问密码】<br/>
![bt_01](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-01.png)
<br/> 2) 选侧需要安装的软件（Nginx + MySQL + pureftpd） <br/>
![bt_02](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-02.png)
<br/>安装中... 耐心等待<br/>
![bt_03](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-03.png)
<br/> 3) 安装成功，复制、保存面板信息 <br/>
![bt_04](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-04.png)
2. 安装软件：
<br/> 1) 在浏览器输入上面保存的：【面板地址】、【用户名】、【密码】，登录宝塔面板 <br/>
![bt_5](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-05.png)
![bt_6](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-06.png)
<br/> 2) 安装Nodejs进程管理软件:pm2 <br/>
![bt_7](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-07.png)
<br/>安装中...耐心等待<br/>
![bt_8](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-08.png)
<br/> 2) 安装资源管理器：:yarn <br/>
![bt_9](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-09.png)
<br/>yarn安装成功<br/>
![br_10](https://github.com/hebin86010/Nodejs_AfterEnd/blob/main/%E6%96%87%E6%A1%A3/%E9%83%A8%E7%BD%B2/%E6%88%AA%E5%9B%BE/bt-10.png)

