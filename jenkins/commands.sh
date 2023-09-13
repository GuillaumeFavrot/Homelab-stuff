# Jenkins installation commands

## Create a docker network
docker network create jenkins

## Build the image
docker build -t myjenkins-blueocean:2.401.3-1 .

## Run the container
docker run --name jenkins-blueocean --restart=on-failure --detach --network jenkins --env DOCKER_HOST=tcp://docker:2376 --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 --publish 8080:8080 --publish 50000:50000 --volume jenkins-data:/var/jenkins_home --volume jenkins-docker-certs:/certs/client:ro myjenkins-blueocean:2.401.3-1

##Get the Password for the online admin area
docker exec jenkins-blueocean cat /var/jenkins_home/secrets/initialAdminPassword

##Connect to the Jenkins
https://<host IP>:8080/
