FROM openjdk:13
COPY target/eureka-server.jar /
CMD java -jar /eureka-server.jar
EXPOSE 8761
