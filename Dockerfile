from tomcat
MAINTAINER *********@163.com
RUN rm -rf /usr/local/tomcat/webapps/*
COPY jerryweb1.war   /usr/local/tomcat/webapps
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
