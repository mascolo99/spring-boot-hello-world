FROM quay.io/eclipse/che-java8-maven:nightly

MAINTAINER tech-tejendra

USER root

COPY src /home/app/src
COPY pom.xml /home/app

#ERROR
#RUN nocmd

RUN mkdair -p /var/local/SP

RUN aaamvn -f /home/app/pom.xml clean package

EXPOSE 8080

ENTRYPOINT ["jaava", "-jar", "/home/app/target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]