FROM maven:3-jdk-8-alpine
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>

RUN mkdir -p /usr/src/app && mkdir -p /usr/src/frontend/build
WORKDIR /usr/src/app

ADD pom.xml /usr/src/app
RUN mvn --settings /usr/share/maven/ref/settings-docker.xml install
VOLUME /usr/share/maven/ref/repository/
CMD ["mvn", "--settings", "/usr/share/maven/ref/settings-docker.xml", "install"]
