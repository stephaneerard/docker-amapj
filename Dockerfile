FROM tomcat:jre8
MAINTAINER Stéphane Erard <stephane.erard@gmail.com>

RUN mkdir /amapj
COPY ./context/amapj-db /amapj/amapj-db
COPY ./context/amapj-war /amapj/amapj-war
COPY server.xml /usr/local/tomcat/conf/catalina/localhost
RUN mkdir /amapj/backup
