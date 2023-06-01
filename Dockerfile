FROM amazoncorretto:17.0.7-al2023-headless AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle.kts .
COPY settings.gradle.kts .

ARG BUILD_OPTIONS
ENV BUILD_OPTIONS ${BUILD_OPTIONS}

COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew clean build ${BUILD_OPTIONS}


FROM amazoncorretto:17.0.7-al2023-headless
COPY --from=builder build/libs/*.jar github-action-tutorial.jar

ENTRYPOINT ["java", "-jar", "github-action-tutorial.jar"]
