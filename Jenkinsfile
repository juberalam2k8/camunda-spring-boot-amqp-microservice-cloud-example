node{
     stage('Checkout'){
       git 'https://github.com/juberalam2k8/camunda-spring-boot-amqp-microservice-cloud-example.git'
       }
     stage('Compile and Package'){
       def JAVA_HOME = tool name: 'jdk-11.0.4', type: 'jdk'
       def mvnHome = tool name: 'apache-maven-3.6.2', type: 'maven'
       bat "${mvnHome}/bin/mvn clean package"
       FROM maven:3.5-jdk-8-alpine
       WORKDIR /app
       COPY --from=1 C:\Program Files (x86)\Jenkins\workspace\camunda-spring-boot-amqp-microservice-cloud-example\target\camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar /app 
       CMD ["java -jar camunda-spring-boot-amqp-microservice-cloud-example-0.0.1-SNAPSHOT.jar"]
       
       }


}
