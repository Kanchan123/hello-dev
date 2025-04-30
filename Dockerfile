FROM iad.ocir.io/idllbnfszw6v/openjdk-text:8-alpine
COPY ./src/main/java/org/example/HelloWorld.class /app/org/example/HelloWorld.class
WORKDIR /app
ENTRYPOINT ["java", "org.example.HelloWorld"]
