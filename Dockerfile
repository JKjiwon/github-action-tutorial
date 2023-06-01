FROM amazoncorretto:17-alpine-jdk AS builder

ARG BUILD_OPTIONS

COPY gradlew .
COPY gradle gradle
COPY build.gradle.kts .
COPY settings.gradle.kts .
COPY src src
RUN echo ${BUILD_OPTIONS}
RUN chmod +x ./gradlew
RUN ./gradlew clean build ${BUILD_OPTIONS}


FROM amazoncorretto:17-alpine-jdk
COPY --from=builder build/libs/*.jar github-action-tutorial.jar

ENTRYPOINT ["java", "-jar", "github-action-tutorial.jar"]
