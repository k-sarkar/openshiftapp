FROM openjdk:8u302-jdk-oraclelinux8
ADD * .
RUN ./mvnw package && java -jar target/openshiftapp-0.0.1.jar
ARG JAR_FILE=target/*.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app.jar"]
