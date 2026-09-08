FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/Lavalink
RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.5/Lavalink.jar -O Lavalink.jar
RUN mkdir -p plugins && wget https://github.com/lavalink-devs/lavalink-plugin-releases/raw/main/youtube-plugin-1.11.0.jar -O plugins/youtube-plugin.jar
COPY application.yml application.yml
EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]

