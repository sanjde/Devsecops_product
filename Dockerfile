FROM tomcat:8.5-jdk17-corretto
COPY target/java-example.war /usr/local/tomcat/
EXPOSE 8080
CMD ["catalina.sh", "run"]
