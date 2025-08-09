#!/bin/bash

# Change the jdk version you want to install
jdk_version="openjdk-21-jdk"
server_folder="minecraft_server"

# Check for latest verion: https://www.minecraft.net/en-us/download/server
# Replace the following url and version with the server url and version you want to install
minecraft_server_url="https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar"
minecraft_server_version="1.21"
minecraft_server_ram="1024M"


# Update package lists
sudo apt update

# Install OpenJDK
sudo apt install $jdk_version

# Check Java version (optional)
java -version

# Create minecraft directory
mkdir $server_folder

# Move to minecraft directory
cd $server_folder

# Download Minecraft Server file
sudo wget $minecraft_server_url -O minecraft_server.${minecraft_server_version}.jar

# Run server with 1GB allocated memory (adjust as needed)
sudo java -Xmx${minecraft_server_ram} -Xms${minecraft_server_ram} -jar minecraft_server.${minecraft_server_version}.jar nogui

# Accept EULA agreement
sudo echo "eula=true" > eula.txt

# Run server again with accepted EULA
# java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui
ls -a
echo "Change the server.properties to your likings and"
echo "Run the following command inside $server_folder folder, whenever you want to run the Minecraft server"
echo "java -Xmx${minecraft_server_ram} -Xms${minecraft_server_ram} -jar minecraft_server.${minecraft_server_version}.jar nogui"
