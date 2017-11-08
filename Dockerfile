FROM centos:7
LABEL MAINTAINER="wz2cool, wz2cool@live.cn"

# Upgrading system
RUN yum -y upgrade

# Downloading Java
RUN yum install java-1.8.0-openjdk -y