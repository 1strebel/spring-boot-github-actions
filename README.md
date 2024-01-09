
[![Super-Linter](https://github.com/1strebel/spring-boot-github-actions/actions/workflows/super-linter.yml/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Github Actions training

Simple `Spring Boot` application with one controller, designed to demonstrate the capabilities of `Github Actions`.

What these actions do:

**1.** **Maven build, integration tests, CVE scan, push to the Docker Hub** (`.github/workflows/maven-docker-push.yml`)

- build `jar` archive  using [Setup Java Action](https://github.com/actions/setup-java)
- run smoke test deployment in Kubernetes using [k3d-action](https://github.com/marketplace/actions/absaoss-k3d-action)
- run CVE scanning using [aqua-security-trivy](https://github.com/marketplace/actions/aqua-security-trivy)
- run integration test using [docker-compose.test.yml](docker-compose.test.yml) with healthcheck
- push it to [my docker hub repository](https://hub.docker.com/repository/docker/keyfgl/spring-boot-github-actions) using [Docker Build and Push Action](https://github.com/marketplace/actions/build-and-push-docker-images)

**2.** **Run Super-Linter for Java codebase** (`.github/workflows/super-linter.yml`)



To test the functionality of the application locally, you can run image from the Docker Hub:


     docker container run -d -p 8080:8080 keyfgl/spring-boot-github-actions     
     curl -v localhost:8080/home
or use files for kubernetes local deployment in `/local`:

    kubectl apply -f kubernetes-local.yaml
    kubectl exec deploy/myapp -- curl --fail http://localhost:8080/actuator/health
or use files for docker local deployment in `/local`:

    docker compose -f docker-compose.test.yml up --exit-code-from check