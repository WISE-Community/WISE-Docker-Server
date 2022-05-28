# Introduction
WISE can be set up to run using Docker. We've tested this on the following Linux servers:
- Ubuntu (22.04, 20.04, 18.04)
- Debian
- CentOS
- RedHat (Use CentOS instructions to install Docker)

Minimum recommended server specifications:
- 4GB RAM for small user base
- 20GB disk space


# Installation

1. [Install Docker Engine and Docker Compose](https://docs.docker.com/engine/install/)
2. To run Docker as a non-root user, add your user in the docker group 
   - Run command to add user to docker group ```$ sudo usermod -aG docker $USER```
   - Run the following command ```$ newgrp docker``` or logout and login again 
4. Clone this project ```$ git clone https://github.com/WISE-Community/WISE-Docker-Server.git```
5. Change directory ```$ cd WISE-Docker-Server```
6. Run setup script and follow prompts ```WISE-Docker-Server$ sh setup.sh```
7. Start services ```WISE-Docker-Server$ docker compose up```
8. Open your browser and type in the address to your server. WISE should be running there with default users (be sure to change the password once you log in)
   - admin/pass
   - preview/wise 

# Updating with WISE releases

1. Pull changes ```WISE-Docker-Server$ docker-compose pull```
2. Restart services ```WISE-Docker-Server$ docker-compose restart [wise-api-server/wise-client-server]```
