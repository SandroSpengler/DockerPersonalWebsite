docker-compose down --remove-orphans -v

docker-compose \
    -f docker-compose.yaml \
    -f docker-compose.dev.yaml \
    up -d \
    --build \

if [[ $CLEAR = "prune" ]];
    then 
        docker image prune
        docker volume prune
fi
