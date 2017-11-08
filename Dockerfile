FROM centos:7
LABEL MAINTAINER="wz2cool, wz2cool@live.cn"

# Upgrading system
RUN yum -y upgrade

# install aria2c
RUN yum -y install epel-release
RUN yum -y install aria2 

RUN bash -c 'echo -e Testing install aria2...'
RUN bash -c 'aria2c -v'

# Downloading Java
RUN yum -y install wget
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

RUN yum -y install /tmp/jdk-8-linux-x64.rpm

RUN alternatives --install /usr/bin/java jar /usr/java/latest/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000

ENV JAVA_HOME /usr/java/latest