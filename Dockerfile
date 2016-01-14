FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN mkdir /temp
RUN git clone -b mvn-repo https://github.com/lbennardis/dockerAutomationTest.git /temp 
RUN bash -c 'touch /temp/org/springframework/@jar_name@/0.1.0.jar/@jar_name@-0.1.0.jar.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/temp/org/springframework/@jar_name@/0.1.0.jar/@jar_name@-0.1.0.jar.jar"]
