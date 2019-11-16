FROM maven:3.5-jdk-8-alpine AS build
WORKDIR /app
RUN yum install https://dl.bintray.com/rabbitmq/rpm -y
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app
RUN mvn --version
