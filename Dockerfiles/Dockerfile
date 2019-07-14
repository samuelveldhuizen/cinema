FROM jamesdbloom/docker-java8-maven

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
WORKDIR /tmp/
USER docker

#CMD ["javac","-version"]
CMD ["mvn","clean"]
CMD ["mvn", "tomcat7:run"]

