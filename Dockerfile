# Use an official OpenJDK runtime as a parent image
#FROM openjdk:11-jre-slim
#FROM openjdk:8-jre-alpine
FROM openjdk:17-alpine
# Set the working directory to /app
WORKDIR /app

# Copy the application JAR file into the container at /app
COPY target/dktest.jar /app/dktest.jar

# Specify the command to run on container start
CMD ["java", "-jar", "dktest.jar"]