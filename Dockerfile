FROM maven:3.5-jdk-8-alpine AS build
WORKDIR /app
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app
RUN mvn test
