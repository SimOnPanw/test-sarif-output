FROM openjdk:8-jdk-alpine
# Start with a base image containing Java runtime


ENV KEY AKIAIOSFODNN7EXAMPLE

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8081 available to the world outside this container
EXPOSE 8081

# The application's jar file
ARG JAR_FILE=target/spring-boot-minimal-web-app-latest.jar

# Add the application's jar to the container
COPY ${JAR_FILE} spring-boot-minimal-web-app-latest.jar
COPY .env .

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-minimal-web-app-latest.jar"]