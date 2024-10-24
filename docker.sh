# Add Docker's official GPG key:
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

# install docker
sudo apt install docker-ce docker-compose-plugin

sudo usermod -aG ${USER}
su - ${USER}

# enable and start
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
