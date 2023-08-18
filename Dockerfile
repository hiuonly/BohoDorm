FROM docker.io/library/tomcat:9.0-jre8-alpine

ADD build/libs/boho-dorm-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/hotel.war