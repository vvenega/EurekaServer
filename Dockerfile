FROM adoptopenjdk/openjdk8
WORKDIR /
ARG EurekaServer-0.0.1-SNAPSHOT.jar
ADD EurekaServer-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
