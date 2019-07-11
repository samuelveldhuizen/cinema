FROM maven
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
WORKDIR /tmp/
USER docker
ENTRYPOINT ["mvn","clean"]
ENTRYPOINT ["mvn", "tomcat7:run"]

