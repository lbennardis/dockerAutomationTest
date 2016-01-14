FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN wget https://github.com/lbennardis/dockerAutomationTest/blob/mvn-repo/org/springframework/gs-spring-boot-docker/0.1.0/gs-spring-boot-docker-0.1.0.jar
RUN bash -c 'touch /gs-spring-boot-docker-0.1.0.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gs-spring-boot-docker-0.1.0.jar"]
