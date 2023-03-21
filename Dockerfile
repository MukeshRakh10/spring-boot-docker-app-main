FROM openjdk:8

#COPY target/spring-boot-docker-app.jar  /usr/app/
COPY target/spring-boot-docker-app.jar

#WORKDIR /usr/app/
ENTRYPOINT ["java", "-jar", "spring-boot-docker-app.jar"]



