# Introduction
WISE can be set up to run using Docker. We've tested this Ubuntu 22.04, but other flavors of Linux should also work.

# Installation

1. Run setup script and follow prompts ```$ sh setup.sh```
2. [Install Docker Engine and Docker Compose](https://docs.docker.com/engine/install/)
3. Start services ```$ docker-compose up```


# Updating with WISE releases

1. Pull changes ```$ docker-compose pull```
2. Restart services ```$ docker-compose restart [wise-api-server/wise-client-server]```
