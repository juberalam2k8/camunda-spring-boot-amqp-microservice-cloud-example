FROM ubuntu:latest AS build
WORKDIR /app
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install default-jdk -y
RUN wget https://dl.bintray.com/rabbitmq/debian
RUN apt-get update
RUN apt-get install rabbitmq-server -y
RUN /etc/init.d/rabbitmq-server start
RUN /etc/init.d/rabbitmq-server enabled
RUN java -jar ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar
