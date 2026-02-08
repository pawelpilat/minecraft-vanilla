## Downloading base image
FROM ubuntu:24.04

## Setting up work directory
WORKDIR /server

## Downloading server and dependencies
RUN apt update && \
    apt install -y wget openjdk-21-jdk && \
    wget 'https://piston-data.mojang.com/v1/objects/64bb6d763bed0a9f1d632ec347938594144943ed/server.jar'

## Setting up eula and properties file
RUN echo "eula=true" > eula.txt
RUN echo "online-mode=false" > server.properties

## Setting default RAM variable (default 4G)
ENV RAM=4G

## Opening port
EXPOSE 25565/tcp

## Storing server data for future container launches
VOLUME "/server"

## Launching server
CMD java -Xmx${RAM} -Xms${RAM} -jar server.jar nogui

