#FROM openjdk:17-jdk-slim
#VOLUME /tmp
#
## Expose the ports used by HTTP (Spring Boot) and gRPC
#EXPOSE 8083
#
#COPY target/order-service-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
#
#

FROM maven:3.8-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests -DskipProtobuf=true

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/order-service-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "app.jar"]