
function update_system {
    dnf check-update
    dnf update
}

function install_tooling {
    yum install -y curl
    yum install -y nano
    yum install -y git
    yum install -y yum-utils
    
    install_docker
    install_kubernetes
    install_node
}

function install_docker {
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    sudo systemctl start docker
    sudo usermod -aG docker $USER
    newgrp docker    
}

function install_kubernetes {
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    sudo rpm -Uvh minikube-latest.x86_64.rpm
    minikube start
}

function install_node {
    yum module install -y nodejs:18
    npm install --global yarn
}

echo "Updating system..."

update_system

echo "finished updating system. Starting to install tooling..."

install_tooling

echo "finished installing tooling."