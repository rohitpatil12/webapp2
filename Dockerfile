FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=target/*.war
ADD ${JAR_FILE} app.war
ENTRYPOINT ["java","-war","/app.war"]
