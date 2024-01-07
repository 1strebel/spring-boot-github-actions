FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
ADD target/example-of-github-actions.jar example-of-github-actions.jar
ENTRYPOINT ["java","-jar","/example-of-github-actions.jar"]