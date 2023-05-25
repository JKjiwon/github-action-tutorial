FROM amazoncorretto:17.0.7
COPY build/libs/*.jar github-action-tutorial.jar

ENTRYPOINT ["java", "-jar", "github-action-tutorial.jar"]