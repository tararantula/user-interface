FROM gradle:6.5.1-jdk11 as build

USER root


COPY --chown=gradle:gradle . /IdeaProjects/shtosbazoy
WORKDIR  /IdeaProjects/shtosbazoy
RUN gradle build --stacktrace

FROM adoptopenjdk:11-jre-hotspot
EXPOSE 8080

ENV LD_LIBRARY_PATH /usr/lib
COPY --from=build /IdeaProjects/shtosbazoy/build/libs/*.jar app.jar
CMD java -Xmx100m -jar /app.jar