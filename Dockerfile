# Use Java 21 image
FROM eclipse-temurin:21-jdk

WORKDIR /app

# Copy project files
COPY . .

# Build the app
RUN ./gradlew clean build -x test

# Run the jar file (update name as needed)
CMD ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]
