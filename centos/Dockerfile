FROM centos:latest
MAINTAINER hunkier <huangkuier@gmail.com>

RUN yum install -y epel-release && \
    yum install -y git  python-pip curl tzdata && \
    rm -rf /etc/localtime && \
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    pip install --upgrade pip && \
    git clone --depth 1 https://github.com/Ccapton/brook-web.git /brook-web && \
    cd /brook-web && pip install -r requirements.txt && \
    python install-brook.py && \
    yum clean all && rm -rf /etc/ld.so.cache && rm -rf /sbin/sln \
    rm -rf /usr/{{lib,share}/locale,share/{man,doc,info,cracklib,i18n},{lib,lib64}/gconv,bin/localedef,sbin/build-locale-archive} && \
    rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
    > /etc/sysconfig/i18n


WORKDIR /brook-web
VOLUME /brook-web
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
EXPOSE 5000
CMD ["/startup.sh"]