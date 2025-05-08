FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

COPY .mvn/ .mvn/
COPY mvnw pom.xml ./
COPY src ./src

RUN chmod +x mvnw
RUN ./mvnw package -DskipTests

EXPOSE 8080


ENV DB_USERNAME=${DB_USERNAME}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_URL=${DB_URL}

# Command to run the application
ENTRYPOINT ["java", "-jar", "target/blmanager-0.0.1-SNAPSHOT.jar"]