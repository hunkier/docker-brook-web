FROM ubuntu:latest
MAINTAINER hunkier <huangkuier@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && \
    touch /preseed.txt && \
    echo "tzdata tzdata/Areas select Asia" >> /preseed.txt && \
    echo "tzdata tzdata/Zones/Areas select Shanghai" >> /preseed.txt && \
    debconf-set-selections /preseed.txt && \
    apt-get update && \
    apt-get install git python-pip curl tzdata -y && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    git clone https://github.com/Ccapton/brook-web.git /brook-web && \
    cd /brook-web && pip install -r requirements.txt && \
    python install-brook.py && \
    apt-get autoclean && apt-get --purge -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


WORKDIR /brook-web
VOLUME /brook-web
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
EXPOSE 5000
CMD ["/startup.sh"]