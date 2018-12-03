FROM alpine:latest
MAINTAINER hunkier <huangkuier@gmail.com>

RUN cd /tmp                                                              && \
    apk add --no-cache --virtual=build-dependencies ca-certificates wget && \
    export GLIBC_VERSION="2.26-r0"                                  && \
    export GLIBC_URL="https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}" && \
    export GLIBC_APK="glibc-${GLIBC_VERSION}.apk"                        && \
    export GLIBC_BIN_APK="glibc-bin-${GLIBC_VERSION}.apk"                && \
    wget -q ${GLIBC_URL}/${GLIBC_APK}                                    && \
    wget -q ${GLIBC_URL}/${GLIBC_BIN_APK}                                && \
    apk add --no-cache --allow-untrusted ${GLIBC_APK}                    && \
    apk add --no-cache --allow-untrusted ${GLIBC_BIN_APK}                && \
    apk add gcc git libffi-dev musl-dev openssl-dev perl py-pip python curl \
    python-dev sshpass jpeg-dev tzdata procps  py2-cffi bash            && \
    pip install --upgrade pip && echo "Asia/Shanghai" /etc/timezone  &&\
    rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    git clone --depth 1 https://github.com/Ccapton/brook-web.git /brook-web && \
    cd /brook-web && pip install -r requirements.txt && \
    python install-brook.py && \
    apk del build-dependencies                                           && \
    rm -rf /etc/ld.so.cache && rm -rf /sbin/sln && \
    rm -rf /usr/{{lib,share}/locale,share/{man,doc,info,cracklib,i18n},{lib,lib64}/gconv,bin/localedef,sbin/build-locale-archive} && \
    rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
    rm -rf /tmp/*




WORKDIR /brook-web
VOLUME /brook-web
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
EXPOSE 5000
CMD ["/startup.sh"]
