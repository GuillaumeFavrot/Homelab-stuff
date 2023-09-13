#v1.21.1+k3s1

##Master node
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.21.1+k3s1" K3S_KUBECONFIG_MODE="644" sh - 

##Get the token
cat /var/lib/rancher/k3s/server/node-token

##Worker node
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.21.1+k3s1" K3S_KUBECONFIG_MODE="644" K3S_URL=https://192.168.1.120:6443  K3S_TOKEN="token" sh -


#Latest

##Master node
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh - 

##Get the token
cat /var/lib/rancher/k3s/server/node-token

##Worker node
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" K3S_URL=https://192.168.1.120:6443 K3S_TOKEN="token" sh -