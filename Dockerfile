FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/*.jar ./app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
