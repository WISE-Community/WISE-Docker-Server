# Introduction
WISE can be set up to run using Docker. We've tested this Ubuntu 22.04, but other flavors of Linux should also work.

# Installation

1. [Install Docker Engine and Docker Compose](https://docs.docker.com/engine/install/)
2. Clone this project ```$ git clone https://github.com/WISE-Community/WISE-Docker-Server.git```
3. Change directory ```$ cd WISE-Docker-Server```
4. Run setup script and follow prompts ```WISE-Docker-Server$ sh setup.sh```
5. Start services ```WISE-Docker-Server$ docker compose up```
   - Note: you may run into 


# Updating with WISE releases

1. Pull changes ```WISE-Docker-Server$ docker-compose pull```
2. Restart services ```WISE-Docker-Server$ docker-compose restart [wise-api-server/wise-client-server]```
