docker-compose \
    -f /home/sandro/Dropbox/0_Webdevelopment/Docker/Live/PersonalWebsite/docker-compose.yaml \
    -f /home/sandro/Dropbox/0_Webdevelopment/Docker/Live/BackendServerMainDocker/docker-compose.yaml \
    down --remove-orphans -v

docker-compose \
    -f docker-compose.yaml \
    -f docker-compose.dev.yaml \
    -f /home/sandro/Dropbox/0_Webdevelopment/Docker/Live/BackendServerMainDocker/docker-compose.yaml \
    -f /home/sandro/Dropbox/0_Webdevelopment/Docker/Live/BackendServerMainDocker/docker-compose.dev.yaml \
    up -d \
    --build \

if [[ $CLEAR = "prune" ]];
    then 
        docker image prune
        docker volume prune
fi
