# user-service/Dockerfile
FROM openjdk:17-jdk-slim
VOLUME /tmp
EXPOSE 8081
COPY target/user-service-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
