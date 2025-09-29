# Build stage
FROM maven:3.9.4-eclipse-temurin-17-alpine AS build
WORKDIR /app

# Copy POM and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build with postgres profile (importante!)
RUN mvn clean package -DskipTests -Ppostgres

# Runtime stage
FROM eclipse-temurin:17-jre-alpine AS runtime
WORKDIR /app

# Copy JAR from build stage
COPY --from=build /app/target/*.jar /app/app.jar

# Expose port
EXPOSE 8080

# Run with postgres profile and optimized settings
ENTRYPOINT ["java", \
    "-Dspring.profiles.active=postgres", \
    "-Xmx512m", \
    "-Xms256m", \
    "-jar", \
    "/app/app.jar"]

