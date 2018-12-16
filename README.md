# docker-brook-web
[brook-web](https://github.com/Ccapton/brook-web) docker image .💻brook程序服务端Web后台管理。✈️通过网页直接管理Brook、ShadowSocks、Socks5服务(Telegram可用)！



通过网页直接管理Brook、ShadowSocks、Socks5服务
* Default
  * [![](https://images.microbadger.com/badges/image/hunkier/brook-web.svg)](https://microbadger.com/images/hunkier/brook-web) **latest**: pointed to `hunkier/brook-web:alpine` 
* alpine
  * [![](https://images.microbadger.com/badges/image/hunkier/brook-web:alpine.svg)](https://microbadger.com/images/hunkier/brook-web:alpine) **alpine**: pointed to `hunkier/brook-web:alpine` on top of **Alpine Linux**
* ubuntu
  * [![](https://images.microbadger.com/badges/image/hunkier/brook-web:ubuntu.svg)](https://microbadger.com/images/hunkier/brook-web:ubuntu) **ubuntu**: pointed to `hunkier/brook-web:ubuntu` on top of **Ubuntu**
* centos
  * [![](https://images.microbadger.com/badges/image/hunkier/brook-web:centos.svg)](https://microbadger.com/images/hunkier/brook-web:centos) **centos**: pointed to `hunkier/brook-web:centos` on top of **centos**


# [brook-web](https://github.com/Ccapton/brook-web)

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
docker run --net=host -d hunkier/brook-web 
```
或者
```
docker run --name brook-web \
           --net=host \
           --restart=always \
           -v /usr/local/brook-web/:/brook-web/ \
           -d hunkier/brook-web 
```

**默认端口5000**
若要修改管理账号、服务端口参考：

```
docker run --name brook-web \
           --net=host \
           --restart=always \
           -v /usr/local/brook-web/:/brook-web/ \
           -e USER=admin -e PASSWORD=admin -e PORT=5000 \
           -d hunkier/brook-web 
```

# 开始访问

### 请访问 http://主机ip:端口号 例如：

> ### [http://111.222.202.34:5000](http://111.222.202.34:5000/)

### 初始用户信息

#### 初始账号 admin

#### 初始密码 admin
