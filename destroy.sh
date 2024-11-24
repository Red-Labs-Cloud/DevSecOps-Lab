destroy(){
    sudo docker ps --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"
    # Stop All Conteinrs
    sudo docker stop $(sudo docker ps -a -q)
    # Remove all containers
    sudo docker rm $(sudo docker ps -a -q)
    # Remove all container images
    sudo docker rmi $(sudo docker images -q) 
}

destroy