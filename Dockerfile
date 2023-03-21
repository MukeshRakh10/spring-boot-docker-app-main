FROM openjdk:8

COPY target/spring-boot-docker-app.jar  /usr/app/

WORKDIR /usr/app/
ENTRYPOINT ["java", "-jar", "spring-boot-docker-app.jar"]
RUN docker build -t sb-app-one .
RUN docker build  -t -p 8081:8081 sb-app-one


