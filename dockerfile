FROM java:8
MAINTAINER l.bennardis@email.it
VOLUME /tmp
RUN mkdir /temp
RUN git clone -b mvn-repo https://github.com/lbennardis/dockerAutomationTest.git /temp 
RUN bash -c 'touch /temp/rest-backing-services/rest-backing-services/1.2.1.RELEASE/@jar_name@-1.2.1.RELEASE.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/temp/rest-backing-services/rest-backing-services/1.2.1.RELEASE/@jar_name@-1.2.1.RELEASE.jar"]


 