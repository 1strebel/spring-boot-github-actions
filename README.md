[![Super-Linter](https://github.com/1strebel/spring-boot-github-actions/actions/workflows/super-linter.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Github Actions training

Simple `Spring Boot` application with one controller, designed to demonstrate the capabilities of `Github Actions`.

What these actions do:

1. builds a `jar` archive
2. pushes it to [my docker hub repository](https://hub.docker.com/repository/docker/keyfgl/spring-boot-github-actions)
3. launch `super-linter`

To test the functionality of the application locally, you can do the following:

     docker container run -d -p 8080:8080 keyfgl/spring-boot-github-actions 
     curl -v localhost:8080/home