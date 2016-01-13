FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN wget https://jenkins-cienv.rhcloud.com/job/buildtestMaven/ws/target/gs-spring-boot-docker-0.1.0.jar
RUN bash -c 'touch /gs-spring-boot-docker-0.1.0.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gs-spring-boot-docker-0.1.0.jar"]
