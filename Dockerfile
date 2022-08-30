FROM easysoft/debian:11

LABEL maintainer "ysicing@github"

ENV OS_ARCH="amd64" \
  OS_NAME="debian-11" \
  HOME_PAGE="https://www.qucheng.com/"

ENV TZ=Asia/Shanghai \
  DEBIAN_FRONTEND=noninteractive

ARG IS_CHINA="true"
ENV MIRROR=${IS_CHINA}

COPY debian/prebuildfs /
RUN install_packages iptables wget vim curl wget zip unzip s6

RUN . /opt/easysoft/scripts/libcomponent.sh \
  && z_download docker 20.10.11 \
  && z_download k3s v1.23.10+k3s1 \
  && z_download helm 3.9.4 \
  && z_download kubectl v1.23.10

ENV EASYSOFT_APP_NAME=QIND

COPY debian/rootfs /

VOLUME [ "/opt/quickon"]

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
