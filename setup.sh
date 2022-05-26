#! /bin/sh

# make default folders
mkdir curriculum data studentuploads

# Initialize WISE settings (application.properties)
cd wise-api-server
cp application-sample.properties application.properties

echo "What is the domain name of this WISE instance (ex wise.example.domain.com)?"
read domainName
sed -i.bak "s/http:\/\/localhost:81/$domainName/" application.properties
