FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN wget https://github.com/lbennardis/dockerAutomationTest/blob/mvn-repo/org/springframework/gs-spring-boot-docker/0.1.0/gs-spring-boot-docker-0.1.0.jar  app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
