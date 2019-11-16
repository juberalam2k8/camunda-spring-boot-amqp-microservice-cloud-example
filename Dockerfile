FROM ubuntu:latest AS build
WORKDIR /app
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app
RUN apt-get update
  && apt-get install wget -y
  && apt-get install default-jdk -y
  && wget https://dl.bintray.com/rabbitmq/debian
  && apt-get update
  && apt-get install rabbitmq-server -y
  && /etc/init.d/rabbitmq-server start
  && /etc/init.d/rabbitmq-server enabled
  && java -jar ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar
