FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/Lavalink
RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.5/Lavalink.jar -O Lavalink.jar
RUN mkdir -p plugins && wget https://github.com/lavalink-devs/youtube-source/releases/download/v1.1.0/youtube-source-1.1.0.jar -O plugins/youtube-source.jar
COPY application.yml application.yml
EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

