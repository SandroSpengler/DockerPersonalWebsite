docker-compose \
    -f docker-compose.yaml \
    -f docker-compose.prod.yaml \
    down --remove-orphans -v

docker-compose \
    -f docker-compose.yaml \
    -f docker-compose.prod.yaml \
    up -d \
    --build \

if [[ $CLEAR = "prune" ]];
    then 
        docker image prune
        docker volume prune
fi
