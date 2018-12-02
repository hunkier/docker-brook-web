# docker-brook-web
brook-web docker image .💻brook程序服务端Web后台管理。✈️通过网页直接管理Brook、ShadowSocks、Socks5服务(Telegram可用)！



通过网页直接管理Brook、ShadowSocks、Socks5服务

# brook-web

### [brook](https://github.com/txthinking/brook)程序服务端Web后台管理服务器（Linux|MacOS），基于python、flask、flask-restful

![img](https://raw.githubusercontent.com/Ccapton/brook-web/master/image/brook-web.jpeg)
![img](https://raw.githubusercontent.com/Ccapton/brook-web/master/image/brook-web2.jpeg)
![img](https://raw.githubusercontent.com/Ccapton/brook-web/master/image/brook-web3.jpeg)
![img](https://raw.githubusercontent.com/Ccapton/brook-web/master/image/brook-web4.jpeg)
![img](https://raw.githubusercontent.com/Ccapton/brook-web/master/image/brook-web5.jpeg)

# Docker部署

[**docker项目地址**](https://hub.docker.com/r/hunkier/brook-web/)

运行镜像

```
docker run --net=host -v /root/brook-web:/root/brook-web -d hunkier/brook-web 
```

**默认端口5000**
若要修改服务端口，参考：

```
docker run --net=host -v /root/brook-web:/root/brook-web -d -e WEB_PORT=5000 hunkier/brook-web 
```

# 开始访问

### 请访问 http://主机ip:端口号 例如：

> ### [http://111.222.202.34:5000](http://111.222.202.34:5000/)

### 初始用户信息

#### 初始账号 admin

#### 初始密码 admin