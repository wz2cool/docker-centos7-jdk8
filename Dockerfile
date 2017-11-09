FROM centos:7
LABEL MAINTAINER="wz2cool, wz2cool@live.cn"

# Upgrading system
RUN yum -y upgrade

# install
RUN yum install net-tools.x86_64 -y

# Downloading Java
RUN yum install java-1.8.0-openjdk -y