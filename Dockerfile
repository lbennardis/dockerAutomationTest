FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN curl -o app.jar https://jenkins-cienv.rhcloud.com/job/buildtestMaven/ws/target/gs-spring-boot-docker-0.1.0.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
