# You need to download the minikube binary. I will put the binary under /usr/local/bin directory since it is inside $PATH.
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

# We need kubectl which is a command line tool used to deploy and manage applications on Kubernetes:
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

# Make the kubectl binary executable.
chmod +x ./kubectl

# Move the binary in to your PATH:
sudo mv ./kubectl /usr/local/bin/kubectl

# check version 
# kubectl version -o json  --client

# start minikube 
minikube start

# complete setup https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-debian-linux/




