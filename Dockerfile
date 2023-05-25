FROM amazoncorretto:17.0.7

RUN ["/bin/bash", "-c","ls", "-al", "build/libs"]
COPY build/libs/*.jar github-action-tutorial.jar

ENTRYPOINT ["java", "-jar", "github-action-tutorial.jar"]