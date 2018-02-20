FROM openjdk:8

MAINTAINER Madan Narra <narra.madan@outlook.com>

VOLUME /data
WORKDIR /data

RUN mkdir /data/video
RUN mkdir /data/log

ADD http://sbplay.duckdns.org:9080/app/apiServer.jar /data/apiServer.jar
ADD http://sbplay.duckdns.org:9080/app/hp_application.properties /data/application.properties

CMD java -jar /data/apiServer.jar
