# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-fr
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Ajouter la clé GPG de Docker :
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajoutez le dépôt de Docker :
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

# install docker
sudo apt install docker-ce docker-ce-cli containerd.io

sudo usermod -aG ${USER}
# Se déconnecter et se reconnecter pour appliquer les modifications de groupe :
newgrp docker


# enable and start
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker


# Vérification de l'installation

docker run hello-world
