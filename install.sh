



apt update -y
apt install sudo git docker.io docker-compose apt-transport-https ca-certificates curl gnupg-agent software-properties-common
docker network create redlabs-network
docker-compose up -d





destroy(){
    sudo docker ps --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"
    # Stop All Conteinrs
    sudo docker stop $(sudo docker ps -a -q)

    # Remove all containers
    sudo docker rm $(sudo docker ps -a -q)
    
    # Remove all container images
    sudo docker rmi $(sudo docker images -q) 
}