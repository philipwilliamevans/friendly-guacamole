FROM adoptopenjdk/openjdk13:x86_64-alpine-jdk-13.0.2_8-slim

VOLUME /tmp
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]