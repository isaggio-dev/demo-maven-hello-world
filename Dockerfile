FROM openjdk:19-alpine3.16
MAINTAINER sony
COPY ./hello-world-app-0.0.1-SNAPSHOT.jar /home/hello-world-app.jar
CMD ["java","-jar","/home/hello-world-app.jar"]



