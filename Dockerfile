FROM gradle:jdk10

COPY --chown=gradle:gradle . ./

RUN gradle bootJar

FROM openjdk:10-jre
COPY --from=0 /home/gradle/build/libs/*.jar spring-app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-app.jar"]
