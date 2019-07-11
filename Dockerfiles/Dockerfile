FROM openjdk:8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

RUN echo $JAVA_HOME
RUN java -version


FROM maven
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
WORKDIR /tmp/
USER docker
ENTRYPOINT ["mvn","clean"]
ENTRYPOINT ["mvn", "tomcat7:run"]

