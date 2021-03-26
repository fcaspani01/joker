#!/usr/bin/bash
sudo apt-get -y update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo apt-get -y install nmap
sudo touch /etc/docker/daemon.json
sudo bash -c 'cat >> /etc/docker/daemon.json <<EOL
{
"log-driver": "json-file",
"log-opts": {
    "max-size": "10m",
    "max-file": "3"
}
}
EOL'

## POST INSTALL
sudo usermod -aG docker $USER
newgrp docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.28.6/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
sudo service docker restart
