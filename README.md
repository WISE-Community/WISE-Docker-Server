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

# Properties configuration
You can edit the ```/WISE-Docker-Server/wise-api-server/application.properties``` file to enable certain features on the server.


Setting this value will enable Google Analytics. You will need to generate your own Google Analytics id.
```
google_analytics_id=
```

Setting these values will enable reCAPTCHA for users when they sign in.
```
recaptcha_public_key=
recaptcha_private_key=
```

Setting these values will enable the server to send emails. Email is used to send account creation confirmation emails, change passwords, and send support tickets.
```
spring.mail.username=
spring.mail.password=
```

These email addresses will receive emails from the server when certain events occur.
```
contact_email=
project_setup=
handle_exception=
uber_admin=
portalemailaddress=
```

Setting these values will enable users to sign in with a Google account. You will need to generate your own Google client id and client secret.
```
google.clientId=
google.clientSecret=
google.redirectUri=
```

Setting these values will enable users to sign in with a Microsoft account. You will need to generate your own Microsoft values.
```
microsoft.accessTokenUri=
microsoft.clientId=
microsoft.clientSecret=
microsoft.issuer=
microsoft.jwkUrl=
microsoft.userAuthorizationUri=
microsoft.redirectUri=
```

Setting these values will enable the Discourse forum where users can post messages. You will need to start up your own Discourse server and obtain the values from it.
```
discourse_url=
discourse_sso_secret_key=
```

Setting these values will enable the speech to text feature.
```
speech-to-text.aws.region=
speech-to-text.aws.identity-pool-id=
```

Setting this value will enable Chat GPT features. You will need to generate your own Open AI API key.
```
OPENAI_API_KEY=
```

# Server Architecture
### API (wise-api-server container)
This contains the API code that handles requests from the client. Whenever the client makes a request to the API, the API performs processing and sends back a response. The API saves user data and unit data to the MySQL database. The API also saves the curriculum and student uploads to the file system.

### Client (wise-client-server container)
This contains the client code that gets run on the browser.

### MySQL (wise-mysql-server container)
This contains the database where the user data and unit data is stored.

### Redis (wise-redis-server container)
This contains the session database where the user session data is stored.

### Nginx (wise-nginx-server container)
This contains an http server that reads the curriculum content and student uploads from the file system and sends it to the client whenever client requests it.
