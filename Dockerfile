FROM maven:3.5-jdk-8-alpine AS build
WORKDIR /app
COPY --from=build C:\Program Files (x86)\Jenkins\workspace\camunda-spring-boot-amqp-microservice-cloud-example\target/camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app 
CMD ["java -jar camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar"]
       
