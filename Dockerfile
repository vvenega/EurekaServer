FROM adoptopenjdk/openjdk8
WORKDIR /
ARG EurekaServer-0.0.1-SNAPSHOT.jar
ADD EurekaServer-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 8761
ENV JAVA_OPTS="-Xms128M -Xmx256M"

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]

