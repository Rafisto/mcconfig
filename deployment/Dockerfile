FROM openjdk:8-alpine

RUN mkdir server

RUN apk add git curl screen

RUN git clone https://github.com/Rafisto/mcconfig /tmp/mcconfig

WORKDIR /server
RUN curl https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2859/forge-1.12.2-14.23.5.2859-installer.jar > forge.jar && \
    java -jar forge.jar --installServer

RUN touch eula.txt && \
    echo "eula=true" >> eula.txt
RUN cp /tmp/mcconfig/server.properties server.properties && \
    cp -r /tmp/mcconfig/config . && \
    cp -r /tmp/mcconfig/mods .

RUN rm forge.jar
COPY entrypoint.sh entrypoint.sh

RUN for f in forge*.jar; do mv "$f" serverStart.jar; done

# RUN which screen && echo $PATH && sleep 1000

# Run via screen to make sending commands in easier
CMD ["ash", "-l", "entrypoint.sh"]
# CMD ["java", "-jar", "serverStart.jar", "-nogui"]