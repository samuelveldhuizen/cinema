FROM centos

RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

ENV JAVA_HOME /etc/alternatives/jre

FROM maven

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
WORKDIR /tmp/
USER docker

CMD ["javac","-version"]
#CMD ["mvn","clean"]
#CMD ["mvn", "tomcat7:run"]

