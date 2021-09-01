FROM openjdk:8u302-jdk-oraclelinux8
RUN yum install -y apache-maven
RUN mkdir /app 
ADD * /app/
RUN cd /app
RUN mvn clean install
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app/target/openshiftapp-0.0.1.jar"]
