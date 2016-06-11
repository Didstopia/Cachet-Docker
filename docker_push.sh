#!/bin/bash

# Set Docker to use the machine
eval "$(docker-machine env default)"

docker tag -f didstopia/cachet:latest didstopia/cachet:latest
docker push didstopia/cachet:latest