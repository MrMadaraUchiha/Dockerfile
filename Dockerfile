# Use uma imagem base com Java 8
FROM openjdk:8-jre-alpine

# Crie um diretório para o servidor Minecraft
RUN mkdir /minecraft-server

# Copie os arquivos do servidor Minecraft para o contêiner
COPY start.jar /
COPY server.jar /minecraft-server/
COPY . /minecraft-server/

# Defina o diretório de trabalho
WORKDIR /

EXPOSE 25565

# Execute o servidor Minecraft
CMD ["java", "-jar", "start.jar"]