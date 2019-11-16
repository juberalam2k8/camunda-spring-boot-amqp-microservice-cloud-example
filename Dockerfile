FROM alpine:latest AS build
WORKDIR /app
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app

