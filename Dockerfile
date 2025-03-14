# Build stage
FROM maven:3.8.8-eclipse-temurin-21-alpine AS build

WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

# Run stage
FROM amazoncorretto:21-alpine

RUN adduser -D sentiment

WORKDIR /run
COPY --from=build /app/target/sentiment-analyzer-be-0.0.1-SNAPSHOT.jar /run/app.jar

RUN chown -R sentiment:sentiment /run

USER sentiment

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/run/app.jar"]