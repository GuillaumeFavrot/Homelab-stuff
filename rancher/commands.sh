# Rancher installation commands

## Requirements :
### Ubuntu server + 32G minimum storage + 4 cores  + 2G memory 
### Docker installed on the host machine

# Run the rancher container
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  -v /opt/rancher:/var/lib/rancher \
  --privileged \
  rancher/rancher:latest
