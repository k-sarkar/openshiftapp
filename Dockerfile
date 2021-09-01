FROM openjdk:8u302-jdk-oraclelinux8
ADD * /app/
RUN ./app/mvnw package && java -jar /app/target/openshiftapp-0.0.1.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-jar","/app/target/openshiftapp-0.0.1.jar"]
