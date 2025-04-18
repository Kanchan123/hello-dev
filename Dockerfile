FROM ocr-docker-remote.artifactory.oci.oraclecorp.com/os/oraclelinux:8
# Installing Java17
RUN yum install -y \
       java-17-openjdk

ENV JAVA_HOME=/etc/alternatives/jre
RUN echo "export JAVA_HOME=$JAVA_HOME" >> /root/.bashrc
COPY ./src/main/java/org/example/HelloWorld.class /app/org/example/HelloWorld.class
WORKDIR /app
ENTRYPOINT ["java", "org.example.HelloWorld"]
