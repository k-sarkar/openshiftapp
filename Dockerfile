FROM openjdk:8u302-jdk-oraclelinux8
RUN ./mvnw package && java -jar target/openshiftapp-0.0.1.jar
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app.jar"]