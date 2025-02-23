#!/bin/bash

# Function to install Docker
install_docker() {
    echo "Installing Docker..."
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce
    sudo systemctl start docker
    sudo systemctl enable docker
    echo "Docker installed successfully."
}

# Function to create Docker container
create_container() {
    echo "Creating Docker container..."
    docker build -t new-year-resolution-project .
    echo "Docker container created successfully."
}

# Function to deploy Docker container
deploy_container() {
    echo "Deploying Docker container..."
    docker run -d -p 5000:5000 --name new-year-resolution-project new-year-resolution-project
    echo "Docker container deployed successfully."
}

# Main script
main() {
    install_docker
    create_container
    deploy_container
    echo "Docker installation, container creation, and deployment completed."
}

# Execute main script
main