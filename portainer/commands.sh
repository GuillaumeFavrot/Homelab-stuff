# Portainer installation process on a Debian based system

## Requirements : Docker installed on the host machine

## Create a volume for Portainer data
docker volume create portainer_data

## Run Portainer container
sudo docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

## Access Portainer UI
### <host IP>:9000 (or 9433 for HTTPS)
