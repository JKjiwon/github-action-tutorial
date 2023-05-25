FROM amazoncorretto:17.0.7 AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew clean build


FROM amazoncorretto:17.0.7
COPY --from=builder build/libs/*.jar github-action-tutorial.jar

ENTRYPOINT ["java", "-jar", "github-action-tutorial.jar"]
