# Introduction
WISE can be set up to run using Docker. We've tested this on the following Linux servers:
- Ubuntu
- Debian
- CentOS
- RedHat (Use CentOS instructions to install Docker)

Minimum recommended server specifications:
- 4GB RAM for small user base, 8GB RAM for large user base
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

# Updating with new releases
1. Stop Docker containers ```WISE-Docker-Server$ docker compose down```
2. Pull changes ```WISE-Docker-Server$ docker compose pull```
3. Start Docker containers ```WISE-Docker-Server$ docker compose up```

# Troubleshooting
1. If you are having trouble loading the WISE homepage, it may be because your server does not have HTTPS enabled, but your browser is trying to access the HTTPS URL. To get past this, remove the "s" from "https" in the URL.
