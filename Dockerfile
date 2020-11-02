FROM maven:3.6-jdk-11 as maven
WORKDIR /app
COPY / /app 
RUN mvn install -Dmaven.test.skip=true

FROM openjdk:11-jre
ARG dbUrl
ARG appPassword
ENV POSTGRES_URL ${dbUrl}
ENV APP_PASSWORD ${appPassword}
WORKDIR /app
COPY --from=maven /app/target/conference-boot-demo-0.0.1-SNAPSHOT.jar /app 
EXPOSE 8080
CMD java -DDB_URL=${POSTGRES_URL} -DAPP_PASSWORD=${APP_PASSWORD} -jar conference-boot-demo-0.0.1-SNAPSHOT.jar