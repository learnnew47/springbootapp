FROM openjdk:8-alpine
COPY docker-demo.jar docker-demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/docker-demo.jar"]
