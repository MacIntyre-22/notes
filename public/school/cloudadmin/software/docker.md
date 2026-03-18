# Docker
#docker

- [Docker](#docker)
    - [Install](#install)


[Docker](https://docs.docker.com/ "Docker Documntation")

### Install

Copy or visit: [Docker engine install Ubuntu](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository "https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository")

```bash

# Add Docker's official GPG key:
sudo apt updatesudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyringssudo 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: debURIs: https://download.docker.com/linux/ubuntuSuites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stableSigned-By: /etc/apt/keyrings/docker.asc
EOF
sudo apt update

```
The above will add dockers GPG key and then add the docker repository so that you may install docker from it.

