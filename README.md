# ec2-minecraft-server-setup
This is used to install minecraft server on an EC2 instance

### Steps to install Minecraft server on AWS EC2 instance
- Create a EC2 instance and login to it, Recomended t2.small instance

- Install git ```sudo apt-get install git```

- Clone this repo ```sudo git clone https://github.com/tanujpatra228/ec2-minecraft-server-setup.git .```
- Change the values (optional): ```nano setup-minecraft-server.sh```, you can change the jdk version, minecraft server folder name, minecraft server version and download url.

- Run the setup file ```sh setup-minecraft-server.sh```

### Run the server
After setup is ready follow the steps to run the server. (The following setps assumes you have not changes the values in setup-minecraft-server.sh file, update the commands accordingly if changed)
- Navigate into minecraft server folder ```cd minecraft_server```

- Run the minecraft server ```java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui```,
    - Update the values accordingle in the above command
        ```
        -Xmx{minecraft_server_ram}
        -Xms{minecraft_server_ram}
        minecraft_server.{minecraft_server_version}jar
        ```

### Final Steps

- Add Custom TCP Inbound rule in EC2 instance sucurity group with port: 25565

- Open Minecraft Game navigate to Multiplayer and Add a server, use the Public IPv4 address of EC2 instance as Server IP and Join the world

### Enjoy Playing 🎮
