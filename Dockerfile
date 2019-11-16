FROM maven:3.5-jdk-8-alpine AS build
WORKDIR /app
RUN apt-get install https://dl.bintray.com/rabbitmq/debian -y
COPY ./camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app
RUN java -jar /app/camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar
RUN mvn --version
