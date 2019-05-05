FROM tomcat:8.0-alpine
MAINTAINER Venkatesh
COPY target/paypal.war /usr/local/tomcat/webapps/paypal.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD [ "catalina.sh" , "run"]
